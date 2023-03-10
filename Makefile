PACKAGE_NAME = lv2-c++-tools
PACKAGE_VERSION = 1.0.7
PACKAGE_DESCRIPTION = lv2-c++-tools is a set of libraries and tools for \
	writing LV2 plugins in C++.
PACKAGE_WEBPAGE = "https://www.nongnu.org/ll-plugins/hacking.html"
PACKAGE_BUGTRACKER = "https://savannah.nongnu.org/bugs/?group=ll-plugins"
PACKAGE_VC = "https://git.savannah.nongnu.org/cgit/ll-plugins/lv2-c++-tools.git"

PKG_DEPS = gtkmm-2.4>=2.8.8

ARCHIVES = liblv2-plugin.a
LIBRARIES =
PROGRAMS =
DATAPACKS = lv2soname

# Disable all deprecation warnings from Glib, they are caused by GTK and GDK,
# not us.
IGNORE_DEPRECATIONS = -DGLIB_DISABLE_DEPRECATION_WARNINGS

# The static plugin library with headers
liblv2-plugin_a_SOURCES = lv2plugin.cpp
liblv2-plugin_a_HEADERS = \
	lv2plugin.hpp \
	lv2synth.hpp \
	../../headers/lv2.h \
	../../headers/lv2_event.h \
	../../headers/lv2_event_helpers.h \
	../../headers/lv2_osc.h \
	../../headers/lv2_uri_map.h \
	../../headers/lv2_saverestore.h \
	../../headers/lv2_contexts.h \
	../../headers/lv2types.hpp
liblv2-plugin_a_CFLAGS = -Iheaders -Ilibraries/lv2plugin -Wpedantic
liblv2-plugin_a_SOURCEDIR = libraries/lv2plugin
liblv2-plugin_a_INSTALLDIR = $(libdir)

# # The static version of PAQ
# libpaq_a_CFLAGS = -Wpedantic
# libpaq_a_SOURCES = turtleparser.cpp rdf.cpp query.cpp
# libpaq_a_SOURCEDIR = libraries/paq
# libpaq_a_INSTALLDIR = $(libdir)

# # The shared version of PAQ
# libpaq_so_CFLAGS = -Wpedantic
# libpaq_so_ABI = 0
# libpaq_so_ARCHIVES = libraries/paq/libpaq.a
# libpaq_so_HEADERS = turtleparser.hpp rdf.hpp query.hpp unicode.hpp namespaces.hpp
# libpaq_so_SOURCEDIR = libraries/paq

# # lv2peg
# lv2peg_SOURCES = lv2peg.cpp
# lv2peg_CFLAGS = -Ilibraries/paq -DVERSION=\"$(PACKAGE_VERSION)\" -Wpedantic
# lv2peg_LIBRARIES = libraries/paq/libpaq.so
# lv2peg_SOURCEDIR = programs/lv2peg

# lv2soname
lv2soname_FILES = lv2soname
lv2soname_SOURCEDIR = programs/lv2soname
lv2soname_INSTALLDIR = $(bindir)

# extra files
DOCS = COPYING AUTHORS README.md ChangeLog
PCFILES = lv2-plugin.pc
EXTRA_DIST = Doxyfile


# Do the magic
include Makefile.template

