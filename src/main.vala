using Gtk;
using CodeScribe;

static int main(string[] args)
{
  Gtk.init(ref args);

  Builder builder = new Builder();
  builder.add_from_file("");

  Gtk.main();
  return 0;
}
