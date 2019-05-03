import atexit
import os
import sys
import platform

def get_readline():
    try:
        import readline
    except ImportError as exception:
        try:
            import gnureadline as readline
        except ImportError as exception:
            return False
    return readline

readline = get_readline()
if False != readline:
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
else:
    print("couldn't import readline/gnureadline to enable history and tab completion")
