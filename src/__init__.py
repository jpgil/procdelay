"""Main classes for extracting delays between pairs of event logs
"""

from Helpers import *
from LogReaderBase import *
from CaseManagerBase import *
from PaletteBase import *
import logging
import config
import sys

logging.basicConfig(stream=sys.stdout, level=config.LOGLEVEL )