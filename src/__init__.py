"""Main classes for extracting delays between pairs of event logs
"""

from Helpers import *
from LogReaderBase import *
from CaseManagerBase import *
from PaletteBase import *
import logging
import config

logging.basicConfig( level=config.LOGLEVEL )