-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

if vim.g.neovide then
  vim.o.guifont = "FiraCode Nerd Font:h11.6" -- text below applies for VimScriptj
  vim.g.neovide_refresh_rate = 60
  -- cursor
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_particle_phase = 2.5
  vim.g.neovide_cursor_vfx_particle_curl = 1.0
  vim.g.neovide_cursor_vfx_particle_density = 9.0
  vim.g.neovide_cursor_vfx_particle_lifetime = 2.0
  vim.g.neovide_cursor_vfx_opacity = 400.0
end
