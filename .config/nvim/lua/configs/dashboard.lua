require('dashboard').setup {
  theme = 'hyper',
  preview = {
    command = 'lolcat',
    file_path = '~/.config/nvim/header.txt',
    file_width = 75,
    file_height = 20,
  },
  config = {
    header = {
      [[                           / \  //\                                        ]],
      [[            |\___/|      /   \//  \\                                       ]],
      [[            /0  0  \__  /    //  | \ \                                     ]],
      [[           /     /  \/_/    //   |  \  \                                   ]],
      [[           @_^_@'/   \/_   //    |   \   \                                 ]],
      [[           //_^_/     \/_ //     |    \    \                               ]],
      [[        ( //) |        \///      |     \     \                             ]],
      [[      ( / /) _|_ /   )  //       |      \     _\                           ]],
      [[    ( // /) '/,_ _ _/  ( ; -.    |    _ _\.-~        .-~~~^-.              ]],
      [[  (( / / )) ,-{        _      `-.|.-~-.           .~         `.            ]],
      [[ (( // / ))  '/\      /                 ~-. _ .-~      .-~^-.  \           ]],
      [[ (( /// ))      `.   {            }                   /      \  \          ]],
      [[  (( / ))     .----~-.\        \-'                 .~         \  `. \^-.   ]],
      [[             ///.----..>        \             _ -~             `.  ^-`  ^-_]],
      [[               ///-._ _ _ _ _ _ _}^ - - - - ~                     ~-- ,.-~ ]],
      [[                                                                  /.-~     ]],
    },
    week_header = {
      enable = false,
    },
    shortcut = {
      { desc = ' Update', group = '@property', action = 'PackerSync', key = 'u' },
      {
        desc = ' Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Apps',
        group = 'DiagnosticHint',
        action = 'Telescope app',
        key = 'a',
      },
      {
        desc = '󰺯 Find Word',
        group = 'Number',
        action = 'Telescope live_grep',
        key = 'g',
      },
      {
        desc = '󰿅 Quit',
        group = '@property',
        action = 'quit',
        key = 'q',
      },
    },
  },
}
