""" Manages colors from logs

This is a generic class that could be extended with the business logic.
"""
import doctest
import re


def _defaultColor(text):
    """ Returns a stripped version of a text that can be used as color 

    >>> p = PaletteBase()
    >>> p.colorize("numbers 1 2 3 12 inside, also with 0.5 decimal points")
    'numbers inside, also with decimal points'
    """
    # Antenna Name  ### MOVE TO A SPECIFIC ALMA CLASS
    colorized = re.sub( "(DV|DA|CM|PM)[0-9][0-9]", "ANT", text)

    # Any number
    # colorized = re.sub( '-?[0-9]+\.?[0-9]*(?:[Ee]\ *-?\+?\ *[0-9]+)?', "NN", colorized)
    colorized = re.sub( '-?[0-9]+\.?[0-9]*(?:[Ee]\ *-?\+?\ *[0-9]+)?', "", colorized)

    # Extra spaces to just 1, removing trailing ones
    colorized = re.sub( '\s+', " ", colorized).strip()

    return colorized


class PaletteBase:
    """ Base class for all palettes.

    Here are the barebone API for every Palette. This palette don't save its state. 
    This is a basic example of usage of any palette:

    >>> p = PaletteBase()
    >>> p.addEvent("      A")
    (0, 'A')
    >>> p.addEvent("A")
    (0, 'A')
    >>> p.addEvent("Long Name")
    (1, 'Long Name')
    >>> p.addEvent("44 Another Letter")
    (2, 'Another Letter')
    >>> p.addEvent("Another 122 Letter")
    (2, 'Another Letter')
    >>> p.addEvent("A 39 87")
    (0, 'A')
    >>> p.addEvent("Another Letter 9999")
    (2, 'Another Letter')

    >>> p.getColors()
    ['A', 'Long Name', 'Another Letter']

    >>> p.index('Long Name')
    1

    >>> p.index('NOT VALID NAME')
    Traceback (most recent call last):
    ...
    ValueError: ...
    """
    def __init__(self):
        """
        Initialize internals
        """

        # Example of item: self._colors[12] = "long text"
        self._colors = []
        self._colorFunction = _defaultColor

    def setColorFunction(self, func):
        self._colorFunction = func

    def addEvent(self, activity):
        """
        Stores the color and the index from this event. 

        Returns the generated (index, color)
        """
        color = self.colorize(activity)
        if color not in self._colors:
            self._colors.append(color)
            return len(self._colors)-1, color
        else:
            return self.index(color), color

    def colorize(self, activity):
        return self._colorFunction(activity)

    def getColors(self):
        return self._colors

    def index(self, color):
        return self._colors.index(color)


class PaletteFileDB(PaletteBase):
    def __init__(self):
        raise NotImplementedError


if __name__ == '__main__':
    """If this file is called directly it will execute a self test 
    """
    doctest.testmod( optionflags = doctest.ELLIPSIS )
