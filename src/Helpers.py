"""Helpers for other functions
"""
import subprocess

def bash(command):
    """Returns output of a bash command

    If it fails, raises an RuntimeWarning
    """
    pipe = subprocess.Popen("%s 2>&1" % command, stdout=subprocess.PIPE, shell=True)
    output, error = pipe.communicate()
    if error is not None:
        raise RuntimeWarning("Error in bash: %s" % error)
    return output.strip(b"\n")
