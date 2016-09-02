# launch_skicka_on_mount
launch skicka when the storage is mounted to backup the storage on google drive

# Usage
1. install skicka
https://github.com/google/skicka

1. install `terminal_notifier` if you want to be notificated the start and end of backup. for homebrew run `brew install terminal-notifier`
1. place `run_skicka.scpt` at `~/Library/Scripts/` (or place wherever you want and rewrite the path in `launch_on_mount.plist`)
1. Make sure if the path in `run_skicka.scpt` is right (note that your `$PATH` on terminal won't refrected on the script)
1. place `launch_on_mount.plist` at `~/Library/LaunchAgents/`
1. run `launchctl load ~/Library/LaunchAgents/launch_on_mount.plist`

##reference
- http://qiita.com/syoyo/items/aceecf9ac0b5b905fc66
- http://www.minimalab.com/blog/2016/01/23/launchagent/
- http://goozenlab.com/computing/mac-launchd-rsync.html
