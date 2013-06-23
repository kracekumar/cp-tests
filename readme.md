Background
====
```
➜  cp-tests  ls /Users/kracekumarramaraju/code
SlideshareAPIExamples        hacknight                    mongrel2
bangalore.python.org.in      hasgeek-vagrant              offline-python
baseframe                    hasgeek.tv                   peopleflow
brubeck                      hasgeek_vagrant              py-photo-organiser-read-only
coaster                      hasjob                       schematics
flask-lastuser               imgee                        snippets
flow                         kuviyal                      test-empythoned
go-instagram                 libev                        tumblr
go-photo-organizer           limechat                     veewee-raring64
```

Results
=====
1. python cp.py /Users/kracekumarramaraju/code Volumes/My Passport/test/5
    Files copied from /Users/kracekumarramaraju/code to /Volumes/My Passport/test/5 in 207.005456 seconds
    
2. python cp-gevent.py /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/4
    Files copied from /Users/kracekumarramaraju/code to /Volumes/My Passport/test/4 in 211.607707 seconds

3. time cp -R /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/7
    sent 1.20G bytes  received 438.41K bytes  4.47M bytes/sec
    total size is 1.20G  speedup is 1.00
    rsync --progress -ah -R /Users/kracekumarramaraju/code   9.00s user 20.80s system 10% cpu 4:56.90 total

4. time /bin/cp -R /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/9
/bin/cp -R /Users/kracekumarramaraju/code /Volumes/My\ Passport/test/9  0.60s user 16.22s system 4% cpu 6:11.24 total

