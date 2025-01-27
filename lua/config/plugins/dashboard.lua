return{
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#cc241d" })
      require('dashboard').setup {
        theme = 'doom',
        config = {
          header = {
            '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⠿⠿⢻⣿⣿⣿⣿⣭⣭⣭⣍⣛⡛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢹⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣬⡙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠹⣿⣿⡿⢋⣡⣾⣶⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡙⢿⣿⣿⣿⣿⣿⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⢉⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠹⣿⣿⣿⣿⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⣹⣿⡿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⢀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡘⣿⣿⣿⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣀⡜⡻⠡⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠘⠉⢐⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠘⣿⣿⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⣿⡟⢰⣿⡿⠡⢁⣽⣿⠎⣿⢻⣿⣿⣿⣿⣿⣷⡆⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢹⣿⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⣿⢃⣿⡿⠁⠁⣼⣿⠃⣰⠃⣾⡿⠁⣾⣿⡿⠁⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⣿⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⡏⣼⡿⠁⠀⠀⣸⠃⢂⢃⠰⡿⠁⢼⣿⠏⢀⣧⢸⣿⣿⣿⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢹⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⣿⢠⣿⠃⡄⠀⠀⡇⣴⠘⡌⡨⢃⠐⢹⠟⠀⢾⣿⡌⣿⣿⣿⡄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⠘⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⡇⣼⠇⠐⠁⡀⠀⠀⢻⠀⣇⠃⢸⠀⡿⠀⠀⠄⢉⠓⠘⢿⣿⣇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡍⢻⣿⡆⣿⣿⣿',
            '⣿⣿⣿⣿⣿⣿⠠⣿⣸⠄⡀⠃⠀⡀⢹⣄⣿⣶⣤⣦⡇⢀⠀⠀⠀⠈⠱⠈⢿⣿⢸⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣷⠸⣿⡇⣿⣿⣿',
            '⣿⣿⣿⣿⣿⡇⣾⣿⣿⢰⣿⣶⣦⣤⠿⣿⣿⣿⣿⣿⣷⣿⠀⠀⡀⠀⣶⠄⠈⢿⡄⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⡄⣿⡇⣿⣿⣿',
            '⣿⣿⣿⣿⣿⢠⣿⣿⡇⣂⡛⠙⣿⢡⣾⣿⣿⣿⣿⣿⣿⣧⣤⣴⣴⣶⣶⣶⣿⣆⠃⣿⣿⣿⣿⣿⣿⠅⣿⣿⣿⣿⣿⣇⢹⡇⣿⣿⣿',
            '⣿⣿⣿⣿⡇⣼⣿⣿⠇⣿⣿⣿⣯⣼⣿⣿⣿⣿⣿⡏⠉⠙⠿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⠁⣾⡟⣿⣿⣿⣿⠸⡇⣿⣿⣿',
            '⣿⣿⣿⣿⢠⣿⣿⡿⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣇⢹⣿⣿⣿⣿⣿⠀⣿⣷⠸⣿⣿⣿⡇⠇⣿⣿⣿',
            '⣿⣿⣿⡿⢸⣿⣿⡇⣆⠹⣿⣿⡋⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⢸⣿⣿⣿⣿⣿⢰⣿⣿⣧⠹⣿⣿⣷⠀⣿⣿⣿',
            '⣿⣿⣿⣧⢸⣿⣿⠀⢾⠂⠙⠿⣿⡆⣦⣭⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢡⣎⡶⢸⣿⣿⣿⣿⣿⢸⣿⣿⣿⣧⠹⣿⣿⡆⢿⣿⣿',
            '⣿⡿⠛⣛⣈⣐⣈⣤⠤⢒⣨⣀⠀⣰⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣋⣴⣶⣿⣿⣿⢸⣿⣿⣿⣿⡿⠀⣿⣿⣿⣿⣷⡘⢿⣷⠸⣿⣿',
            '⢏⣴⡿⠿⠟⣛⣩⣴⡾⠟⡋⠁⢠⡙⠿⠿⠿⠿⠛⢛⢋⣉⣴⣶⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⠇⢸⣿⣿⣿⣿⣿⣿⣌⠻⡆⢻⣿',
            '⣾⣿⣶⣿⠿⠛⣋⣥⣶⡿⠋⠰⠿⣷⡀⢺⣦⣾⣿⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⡟⢰⣆⠻⣿⣿⣿⣿⣿⣿⣧⡘⠄⢿',
            '⣿⣿⣤⣶⣾⡿⠟⠋⣁⠠⠈⢸⣷⣶⠆⣬⣭⣭⣥⣶⡆⠙⢿⣿⣿⣿⣿⣿⣿⣿⡟⣀⣿⣿⠏⠠⢀⣉⡃⠘⠿⣿⣿⣿⣿⣿⣿⣦⡈',
            '⣿⡿⠟⣉⣠⣤⣶⠾⢃⠀⣾⠸⣿⣿⣇⠸⣿⣿⣿⣿⣿⣵⡌⢿⣿⣿⣿⣿⣿⣿⢃⣽⡿⠃⣤⣾⣿⣿⣿⣷⣦⣌⡛⠿⣿⣿⣿⣿⣷',
            '⣿⣷⣿⠟⢋⢁⢲⣾⣿⡇⢻⠀⣿⣿⣿⣧⠙⣿⣿⣿⣿⣿⣯⢸⣿⣿⣿⣿⣿⠏⣼⠏⣴⠿⢛⣭⣭⣥⣿⣿⣿⣿⣿⣷⣌⠻⣿⣿⣿',
            '⣿⡏⣰⡆⣿⡌⠸⣿⣿⣿⠸⠀⣿⣿⣿⣿⡄⢹⣿⣿⣿⣿⣿⠤⠛⣿⣿⡿⠏⠰⠃⣨⠴⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠻⣿⣿',
            '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
          }, --your header
          center = {
            {
              icon = ' ',
              icon_hl = 'Title',
              desc = 'Find File           ',
              desc_hl = 'String',
              key = 'b',
              keymap = 'SPC f f',
              key_hl = 'Number',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(2)'
            },
            {
              icon = ' ',
              desc = 'Find Dotfiles',
              key = 'f',
              keymap = 'SPC f d',
              key_format = ' %s', -- remove default surrounding `[]`
              action = 'lua print(3)'
            },
          },
          footer = {}  --your footer
        }
      }
      -- config
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
}

