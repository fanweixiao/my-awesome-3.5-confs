-- Standard awesome library
local gears = require("gears")
local awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
-- Widget and layout library
local wibox = require("wibox")
-- Theme handling library
local beautiful = require("beautiful")
-- Notification library
local naughty = require("naughty")
local menubar = require("menubar")

require("myrc.error")

-- Themes define colours, icons, and wallpapers
--beautiful.init("/home/fanweixiao/.config/awesome/themes/zenburn/theme-red.lua")
beautiful.init("/home/fanweixiao/.config/awesome/themes/default/theme.lua")
beautiful.wallpaper = "/home/fanweixiao/Backgrounds/bg3.jpg"

-- This is used later as the default terminal and editor to run.
-- terminal = "xterm"
terminal = "urxvt"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor
configpath="/home"..os.getenv("USER").."./config/awesome"
modkey = "Mod4"

---------------------------
-- Customize
--------------------------
-- Change keyboard layout
local mykb = require("myrc.kb_layout")
-- Run_once
local myro = require("myrc.run_once")

-- Naughty presets
require("myrc.naughty")
-- Screens & Tags & Layouts
require("settings.tags")
-- Menus
require("settings.menus")
-- Startup
require("settings.wallpaper")


-- wibox
require("myrc.wiboxrc")
-- Mouse and Keyboard key binds
require("myrc.keybinds")
-- Set keys
root.keys(globalkeys)
-- Window rules
require("settings.window_rules")
-- Signals
require("myrc.signals")

-- Startup
require("settings.startup")
