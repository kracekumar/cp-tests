echo "source directory size"
du -sh /Users/kracekumarramaraju/code
echo "cp.py - Python without gevent"
time python cp.py /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/1
du -sh /Volumes/My\ Passport/test/1
echo "cp-gevent.py - Python with gevent"
time python cp-gevent.py /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/2
du -sh /Volumes/My\ Passport/test/2
echo "alias cp='rsync --progress -ah' - Rsync"
time cp -R /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/3
du -sh /Volumes/My\ Passport/test/3
echo "Plain cp command"
time /bin/cp -R /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/4
du -sh /Volumes/My\ Passport/test/4
echo "cp.go - cp in Go lang"
time go run cp.go /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/5
du -sh /Volumes/My\ Passport/test/5
echo "cp.lua - cp in lua"
time lua cp.lua /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/6
du -sh /Volumes/My\ Passport/test/6
