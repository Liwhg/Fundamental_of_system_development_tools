import sys


def main(args=None):
    if args is None:
        args = sys.argv[1:]
    if len(args) == 0:
        print("Hello from package")
    elif len(args) == 1 and args[0].strip() != "":
        print(f"Hello, {args[0].strip()}")
    else:
        print("invalid input")
