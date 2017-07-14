"""Main classes for extracting delays between pairs of event logs
"""

from Helpers import *
from LogReaderBase import LogReaderBase
from PaletteBase import PaletteBase, PaletteFileDB
import logging
import config

logging.basicConfig( level=config.LOGLEVEL )