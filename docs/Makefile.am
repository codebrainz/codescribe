if ENABLE_VALADOC

codescribe_lib_sources = \
	$(top_srcdir)/lib/document.vala \
	$(top_srcdir)/lib/menubar.vala \
	$(top_srcdir)/lib/view.vala \
	$(top_srcdir)/lib/window.vala

VALADOC_FLAGS = \
	--force \
	--vapidir $(top_srcdir)/data \
	--pkg gtk+-2.0 \
	--pkg gtksourceview-2.0 \
	--basedir $(top_srcdir)/lib \
	--package-name CodeScribe \
	--package-version 1.0 \
	$(codescribe_lib_sources)

gtkdoc:
	rm -rf gtkdoc
	$(VALADOC) \
		-X -l -X $(top_srcdir)/lib/.libs/libcodescribe-1.0.so \
		-o gtkdoc \
		--doclet gtkdoc \
		$(VALADOC_FLAGS)

clean-local:
	rm -rf gtkdoc

uninstall-hook:
	rm -rf $(datadir)/gtk-doc/html/CodeScribe

install-data-hook: gtkdoc
	$(MKDIR_P) $(datadir)/gtk-doc/html/CodeScribe
	cp -R gtkdoc/html $(datadir)/gtk-doc/html/CodeScribe

all: gtkdoc

endif
