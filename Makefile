
LIBOGG_SOURCES += ogg/src/bitwise.c ogg/src/framing.c
LIBVORBIS_SOURCES += vorbis/lib/bitrate.c vorbis/lib/block.c vorbis/lib/codebook.c vorbis/lib/floor0.c vorbis/lib/floor1.c vorbis/lib/smallft.c vorbis/lib/psy.c vorbis/lib/info.c vorbis/lib/lpc.c vorbis/lib/lsp.c vorbis/lib/mapping0.c vorbis/lib/mdct.c vorbis/lib/registry.c vorbis/lib/res0.c vorbis/lib/sharedbook.c vorbis/lib/synthesis.c vorbis/lib/vorbisfile.c vorbis/lib/window.c

SOURCES += WuVorbisMainUnit.cpp detect_cpu.cpp
SOURCES += $(LIBOGG_SOURCES) $(LIBVORBIS_SOURCES)

INCFLAGS += -Ivorbis/include -Iogg/include
CFLAGS += -DDECODE_ONLY

PROJECT_BASENAME = wuvorbis

USE_TVPSND = 1

include external/tp_stubz/Rules.lib.make
