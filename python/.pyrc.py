import atexit
import os
import sys
import platform
try:
    import gnureadline as readline
except ImportError as exception:
    import readline
else:
    # Enable Tab Completion
    # OSX's bind should only be applied with legacy readline.
    if sys.platform == 'darwin' and 'libedit' in readline.__doc__:
        readline.parse_and_bind("bind ^I rl_complete")
    else:
        readline.parse_and_bind("tab: complete")

    # Enable History File
    history_file = os.environ.get(
        "PYTHON_HISTORY_FILE", os.path.join(os.environ['HOME'],
        '.pythonhistory'))

    if os.path.isfile(history_file):
        readline.read_history_file(history_file)
    else:
        open(history_file, 'a').close()

    atexit.register(readline.write_history_file, history_file)
    print('Booted ~/.pyrc')
