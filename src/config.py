import logging
import sys


if '--debug' in sys.argv:
    LOGLEVEL = logging.DEBUG

else:
    LOGLEVEL = logging.ERROR
FILEPATH_DB = "data/processed"