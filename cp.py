#! /usr/bin/env python
#! -*- coding: utf-8
import sys
import shutil


def cp(source, dest):
    shutil.copytree(source, dest)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Help")
        print("python cp.py source dest is the format")
        sys.exit(1)
    cp(sys.argv[1], sys.argv[2])
