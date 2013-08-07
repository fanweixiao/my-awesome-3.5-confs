require("myrc.run_once")
local awful = require("awful")

run_once("setxkbmap -option 'ctrl:swapcaps'");
run_once("xrandr --output LVDS1 --mode 1366x768");
run_once("xrandr --output VGA1 --mode 1440x900 --left-of LVDS1");
run_once("pidgin");
run_once("dropboxd");
run_once("ibus-daemon -drx");
run_once("volumeicon");
