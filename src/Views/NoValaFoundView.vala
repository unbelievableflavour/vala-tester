using Granite.Widgets;

namespace ValaTester {
public class NoValaFoundView : Gtk.ScrolledWindow {

    public NoValaFoundView () {
        var no_vala_found_view = new Welcome (
            _("No Vala versions found"),
            _("Please install a versions of Vala and restart the application.")
        );

        this.add (no_vala_found_view);
    }
}
}
