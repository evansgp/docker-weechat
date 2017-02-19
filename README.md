# docker-weechat

weechat in a container because lazy.

uses [tmux][4] which has a great [man page][3].

TODO move to alpine linux, see alpine's [package browser][1] and it's [wiki][2]. tmux seems broken in it though?

## usage

```
git clone ...
docker build -t evansgp/weechat-docker .
docker run -it -d evansgp/weechat-docker
```



[1]: https://pkgs.alpinelinux.org/packages "alpine packages"
[2]: http://wiki.alpinelinux.org/wiki/Main_Page "alpine wiki"
[3]: http://man7.org/linux/man-pages/man1/tmux.1.html "tmux man pages"
[4]: https://danielmiessler.com/study/tmux/ "tmux 101"
