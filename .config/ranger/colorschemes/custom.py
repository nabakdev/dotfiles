# This file is part of ranger, the console file manager.
# License: GNU GPL version 3, see the file "AUTHORS" for details.

from __future__ import (absolute_import, division, print_function)

from ranger.colorschemes.default import Default
from ranger.gui.color import bold


class Scheme(Default):
    progress_bar_color = 13

    def use(self, context):
        fg, bg, attr = Default.use(self, context)

        if context.in_browser:
            if context.border:
                fg = 237

            if context.document:
                fg = 195

            if context.directory:
                attr |= bold
                fg = 14

            # if context.container:
            #     bg = 196
            #     fg = 196

        # if context.inactive_pane:
        #     bg = 196
        #     fg = 196

        return fg, bg, attr
