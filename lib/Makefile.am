lib_LTLIBRARIES = libcodescribe-1.0.la

libcodescribe_1_0_la_VALAFLAGS = \
	--pkg gtk+-2.0 \
	--pkg gtksourceview-2.0 \
	-cCH codescribe.h --use-header \
	--library codescribe-1.0 \
	--vapi $(top_srcdir)/data/codescribe-1.0.vapi \
	--gir $(top_srcdir)/data/CodeScribe-1.0.gir

libcodescribe_1_0_la_SOURCES = \
	document.vala \
	menubar.vala \
	notebook.vala \
	statusbar.vala \
	toolbar.vala \
	view.vala \
	window.vala

libcodescribe_1_0_la_CFLAGS = \
	@GTK_CFLAGS@ \
	@GTKSOURCEVIEW_CFLAGS@

libcodescribe_1_0_la_LIBADD = \
	@GTK_LIBS@ \
	@GTKSOURCEVIEW_LIBS@

libcodescribe_includedir = $(includedir)/codescribe
libcodescribe_include_HEADERS = codescribe.h

CLEANFILES = \
	$(top_srcdir)/data/codescribe-1.0.vapi \
	$(top_srcdir)/data/CodeScribe-1.0.gir
