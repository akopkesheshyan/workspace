local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

lualine.setup {
    options = {
      theme = 'rose-pine',
    },
    extensions= {
      'fugitive',
      'fzf',
      'nvim-tree'
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {},
      lualine_c = { 
        {
          'filename',
          file_status = false, -- displays file status (readonly status, modified status)
          path = 1             -- 0 = just filename, 1 = relative path, 2 = absolute path
        }
      },
      lualine_x = {},
      lualine_y = {'diff'},
      lualine_z = {'branch'}
    }
}
