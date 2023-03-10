# lv2-c++-tools (without lv2gui)
This repository contains a dead simple copy of the original [lv2-c++-tools](https://ll-plugins.nongnu.org/hacking.html) but only containing the source code for the `lv2plugin` library. Everything else has been removed.

**It cannot build lv2gui, peg and paq**

## LV2-C++-TOOLS
This software package contains libraries and programs that should make 
it easier to write LV2 plugins. You can generate HTML API 
documentation by running 'doxygen' in the top level of the source 
tree.

To build and install, run

```
 ./configure
 su -c 'make install'
```

You can pass some options to configure, e.g. --prefix=/usr to install
everything in /usr (the default is /usr/local).

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public Licence as published by
the Free Software Foundation, either version 3 of the Licence, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
file COPYING for more details.

Note that this licence requires that any plugin that uses the 
liblv2-plugin and liblv2-gui frameworks is also licensed under GPL
version 3 or later.

For a tutorial, see https://ll-plugins.nongnu.org/lv2pftci

Send bug reports, postcards and pancakes to mail@larsluthman.net.
