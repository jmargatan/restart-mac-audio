Restart MAC Audio
===

The audio on my MacBook Pro stops occassionally. I suspect it's due to multiple other applications that's running on my Mac that somehow needs audio, like Cisco Proximity.

This simple command will kill the process, `/usr/sbin/coreaudiod`, and Mac will restart it.
```
$ ps -ef | grep '[c]oreaudiod'
  202 84450     1   0  2:45PM ??         0:11.88 /usr/sbin/coreaudiod
```

# How to use
1. Copy [Restart Audio.command](Restart%20Audio.command) to your favorite place, e.g. desktop, `bin` directories, etc.
2. Execute by double-clicking the command, running from Terminal, or Mac Spotlight (press Cmd+Space).

# How it looks
```
$ ./Restart\ Audio.command; exit
Current coreaudiod PID: 86449
Executing: sudo kill 86449
Password:
```

Your account need to have `sudo` access. Put your password there, then enter.
```
New coreaudiod PID: 86637
Press any key to continue.
```

Done.
