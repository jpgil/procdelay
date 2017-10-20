import logging
import sys


if '--debug' in sys.argv:
    LOGLEVEL = logging.DEBUG

elif '--info' in sys.argv:
    LOGLEVEL = logging.INFO

else:
    LOGLEVEL = logging.ERROR
FILEPATH_DB = "data/processed"