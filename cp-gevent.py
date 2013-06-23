#! /usr/bin/env python
#! -*- coding: utf-8
import sys
import os
import shutil
import gevent


def cp(source, dest):
    shutil.copytree(source, dest)


def cpfile(source, dest):
    shutil.copy2(source, dest)


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Help")
        print("python cp.py source dest is the format")
        os.exit(1)
    source, dest = sys.argv[1], sys.argv[2]
    os.mkdir(dest)
    tasks = []
    for name in os.listdir(source):
        source_path, dest_path = os.path.join(source, name), os.path.join(dest, name)
        if os.path.isdir(source_path):
            tasks.append(gevent.spawn(cp, source_path, dest_path))
        else:
            tasks.append(gevent.spawn(cpfile, source_path, dest_path))
    gevent.joinall(tasks)
