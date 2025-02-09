# tmux.conf  
My customized tmux config file... 
  
* [tmux.conf](#tmuxconf)
     * [Added features (compared to default tmux)](#added-features-compared-to-default-tmux)
     * [Screenshot example](#screenshot-example)
     * [Update your .tmux.conf file](#update-your-tmuxconf-file)
     * [Rename tmux window name in case of a ssh session](#rename-tmux-window-name-in-case-of-a-ssh-session)
     * [Set the correct XTERM](#set-the-correct-xterm)
     * [Modifying tmux colors](#modifying-tmux-colors)
     * [Kitty instead of Putty](#kitty-instead-of-putty)
     * [More info](#more-info)
   
### Added features (compared to default tmux)
* Use prefix \<ctrl\>-\<a\> instead of the default \<ctrl\>-\<b\> prefix.  
* Use \<shift\>-\<left arrow> and \<shift\>-\<right arrow\> to switch between windows.  
* Use prefix 'r' to reload your ~/.tmux.conf file.   
* Use prefix '|' to split panes horizonal.   
* Use prefix '-' to split panes vertical.  
* Use \<alt\>-\<left arrow\> and \<alt\>-\<right arrow\> to switch horizonal between planes.  
* Use \<alt\>-\<arrow up\> and \<alt\>-\<arrow down\> to switch vertical between planes.  
* Use F2 for help (press 'q' to return).
* Use F3 for a list of hot-keys (press 'q' to return).
\[2021/07/29 revise to 2.9+\]
Tested on Fedora23+ and RHEL/Centos7+, tmux version 1.8+ and 2.1+
   
### Screenshot example
[![tmux screenshot](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/tmux_screenshot.gif)](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/tmux_screenshot.gif)
   
### Update your .tmux.conf file   
Download my ~/[.tmux.conf](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/.tmux.conf) to your home directory using:  
````
$ wget -O ~/.tmux.conf https://raw.githubusercontent.com/tedsluis/tmux.conf/master/.tmux.conf
````
   
### Rename tmux window name in case of a ssh session   
Tmux is by default not aware of remote hostnames after ssh. It will keep displaying the hostname on which tmux is running in the status bar. This small 'shortcoming' can be resolved by adding a ssh subroutine (a few lines a code) to ~/.bashrc in your home directory: [addtobashrc](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/bashrc/addtobashrc)   
It will execute these lines evertime you run ssh and rename the tmux status bar name of your ssh session.   
(note: this subroutine will become active after you login again)  
   
### Set the correct XTERM   
Your default terminal may only supports 16 colors instead of 256 colors. In this can you could change your XTERM by adding this to ~/.bashrc in your home directory:   
````
export TERM=screen-256color
````
(note:this setting will become active after you login again)  
   
### Modifying tmux colors  
Tmux colors (for windows, panes, status bar, etc) can be set within the ~/.tmux.config. A small script called [colors.pl](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/colors/colors.pl) can be very helpful. It shows screen colors with their color number (and name):  
[![tmux colors](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/colors/colors.jpg)](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/colors/colors.jpg)
   
### Kitty instead of Putty   
Although [Putty](http://www.putty.org/) is widely used to connect from a Microsoft Windows host to a linux host, it does not support the \<shift\>-\<arrow\> and the \<alt\>-\<arrow\> keys.  
\<shift\>-\<left arrow\> turns out to be the same as \<left arrow\> in a terminal.   
Fortunately a fork of Putty called [Kitty](http://www.9bis.net/kitty/) does support \<shift\>/\<alt\>-\<arrow keys\> and it has many more useful features.   
Be sure you select the 'Xterm R6' within Kitty (configuration/Terminal/Keyboard).   
[![keyboard setting kitty terminal](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/keyboard_setting_kitty_terminal.png)](https://raw.githubusercontent.com/tedsluis/tmux.conf/master/keyboard_setting_kitty_terminal.png)   
Kitty can be download here: [http://www.fosshub.com/KiTTY.html](http://www.fosshub.com/KiTTY.html)  

### More info   
You need more info on tmux? Check these resources:  
* [http://tmux.github.io/](http://tmux.github.io/)  
* [https://github.com/tmux/tmux](https://github.com/tmux/tmux)  
* run 'man tmux' from the command line.  
* tmux faq at [stackoverflow](http://stackoverflow.com/questions/tagged/tmux?sort=frequent)  
* [A tmux Crash Course](https://robots.thoughtbot.com/a-tmux-crash-course)
* [Making tmux Pretty and Usable - A Guide to Customizing your tmux.conf](http://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/)
  
Ted Sluis   
ted.sluis@gmail.com  
