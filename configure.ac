AC_PREREQ([2.62])

# Initialize build system tools
AC_INIT([codescribe], [0.01], [mbrush@codebrainz.ca])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_SRCDIR([src/main.vala])
AC_CONFIG_HEADERS([lib/codescribe-config.h])
AM_INIT_AUTOMAKE([1.11.1 -Wall -Werror foreign])
LT_INIT([disable-static])

# Configure build system and tools
AM_SILENT_RULES([yes])

# Check for utilities
AC_PROG_CC
AC_PROG_SED
AC_PROG_MKDIR_P
AM_PROG_VALAC([0.12.0])

# Check for headers, libraries and packages
AC_CHECK_HEADERS([stdio.h string.h dlfcn.h])
PKG_CHECK_MODULES([GTK], [gtk+-2.0])
PKG_CHECK_MODULES([GLADEUI], [gladeui-1.0])
PKG_CHECK_MODULES([GTKSOURCEVIEW], [gtksourceview-2.0])

# Documentation generation (disabled for now)
#AC_ARG_ENABLE([valadoc],
#	AS_HELP_STRING([--enable-valadoc[=@<:@no/auto/yes@:>@]],
#		[enable Valadoc API documentation @<:@default=auto@:>@]),,
#	[enable_valaodc=auto])
found_valadoc=no
#AS_IF([test "x$enable_valadoc" != "xno"], [
#	AC_PATH_PROG(VALADOC, valadoc, :)
#	AS_IF([test -x  "$VALADOC"], [
#		found_valadoc=yes
#		AC_SUBST(VALADOC)
#	], [
#		AS_IF([test "x$enable_valadoc" == "xyes"],
#			AC_MSG_ERROR([Unable to find Valadoc]))
#	])
#])
AM_CONDITIONAL(ENABLE_VALADOC, test x$found_valadoc = xyes)

# Generate build files
AC_CONFIG_FILES([
    Makefile
	lib/Makefile
	src/Makefile
    data/Makefile
    docs/Makefile
])
AC_OUTPUT
