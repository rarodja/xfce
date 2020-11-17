#!/bin/bash
rm ~/.config/gtk-3.0/gtk.css
rm ~/.config/xfce4/panel/whiskermenu-13.rc
xfconf-query -c xfce4-panel -p /panels/panel-0/position -t string -s 'p=16;x=0;y=0' -n
xfconf-query -c xfce4-panel -p /panels/panel-0/size -t int -s 48 -n
xfconf-query -c xfce4-panel -p /panels/panel-0/icon-size -t int -s 16 -n
xfconf-query -c xfce4-desktop -p /desktop-icons/icon-size -t int -s 58 -n
xfconf-query -c xfwm4 -p /general/theme -s Greybird-accessibility
xfconf-query -c thunar -p /last-separator-position -t int -s 210 -n
xfconf-query -c thunar -p /last-window-height -t int -s 620 -n
xfconf-query -c thunar -p /last-window-width -t int -s 840 -n
echo '.thunar .sidebar .view, .thunar .sidebar iconview {padding: 5;}' >> ~/.config/gtk-3.0/gtk.css
echo '#whiskermenu-window button {padding: 5; margin-left: 5; margin-right: 10;}' >> ~/.config/gtk-3.0/gtk.css
echo '#whiskermenu-window border {padding: 10;}' >> ~/.config/gtk-3.0/gtk.css
echo '#whiskermenu-window treeview {padding: 5;}' >> ~/.config/gtk-3.0/gtk.css
echo 'menuitem {padding: 10;}' >> ~/.config/gtk-3.0/gtk.css
echo 'menu-height=620' >> ~/.config/xfce4/panel/whiskermenu-13.rc
echo 'menu-width=620' >> ~/.config/xfce4/panel/whiskermenu-13.rc
