I was wondering how much will be the speed difference between cp command, rsync and implementation in python, go, lua and so wrote this code. More [cp-command-implementation-and-benchmark-in-python-go](http://kracekumar.com/post/53685731325/cp-command-implementation-and-benchmark-in-python-go)

Results
===
    ➜  cp-tests  ./test.sh
    source directory size
    300M    /Users/kracekumarramaraju/code
    cp.py - Python without gevent

    real    1m23.354s
    user    0m1.818s
    sys     0m5.032s
    302M    /Volumes/My Passport/test/1
    cp-gevent.py - Python with gevent

    real    1m24.212s
    user    0m1.772s
    sys     0m4.748s
    302M    /Volumes/My Passport/test/2
    alias cp='rsync --progress -ah' - Rsync

    real    1m21.145s
    user    0m0.230s
    sys     0m5.172s
    302M    /Volumes/My Passport/test/3
    Plain cp command

    real    1m24.065s
    user    0m0.232s
    sys     0m5.174s
    302M    /Volumes/My Passport/test/4
    cp.go - cp in Go lang
    2013/06/23 21:04:38 Files copied.
    cp.go completed

    real    1m27.786s
    user    0m1.106s
    sys     0m3.369s
    302M    /Volumes/My Passport/test/5
    cp.lua - cp in lua

    real    1m19.340s
    user    0m1.905s
    sys     0m3.893s
    302M    /Volumes/My Passport/test/6