# noVNC Display Container

This image is intended to be used for displaying X11 applications from other containers in a browser.

## Image Contents

* [Xvfb](http://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml) - X11 in a virtual framebuffer
* [x11vnc](http://www.karlrunge.com/x11vnc/) - A VNC server that scrapes the above X11 server
* [noNVC](https://kanaka.github.io/noVNC/) - A HTML5 canvas vnc viewer
* [Fluxbox](http://www.fluxbox.org/) - a small window manager
* [xterm](http://invisible-island.net/xterm/) - to demo that it works
* [supervisord](http://supervisord.org) - to keep it all running

## Variables

You can customize the display height and width by passing them as variables.

*  export DISPLAY_WIDTH=<width> (1024)
*  export DISPLAY_HEIGHT=<height> (768)

## Stand-alone Demo

## On DockerHub / GitHub

This container is based on work done by theasp:

* DockerHub [theasp/novnc](https://hub.docker.com/r/theasp/novnc/)
* GitHub [theasp/docker/novnc](https://github.com/theasp/docker)
