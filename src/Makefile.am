bin_PROGRAMS = codescribe

codescribe_VALAFLAGS = \
	--pkg gtk+-2.0 \
	--pkg gtksourceview-2.0 \
	--vapidir $(top_srcdir)/data \
	--pkg codescribe-1.0

codescribe_SOURCES	= main.vala
codescribe_CFLAGS		= @GTK_CFLAGS@ @GTKSOURCEVIEW_CFLAGS@
codescribe_LDFLAGS		= @GTK_LIBS@ @GTKSOURCEVIEW_LIBS@ \
							$(top_srcdir)/lib/libcodescribe-1.0.la
