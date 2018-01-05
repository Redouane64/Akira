/*
* Copyright (c) 2011-2017 Alecaddd (http://alecaddd.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Alessandro "Alecaddd" Castellani <castellani.ale@gmail.com>
*/

public class Akira.Partials.HeaderBarButton : Gtk.Button {
    public HeaderBarButton (string icon_name, string tooltip) {
        can_focus = false;

        Gtk.Image image;

        if (icon_name.contains ("/")) {
            image = new Gtk.Image.from_resource (icon_name);
        } else {
            image = new Gtk.Image.from_icon_name (icon_name, Gtk.IconSize.BUTTON);
        }

        image.margin = 0;

        get_style_context ().add_class (Gtk.STYLE_CLASS_FLAT);
        set_tooltip_text (tooltip);
        add (image);
    }
}