return {
  'navarasu/onedark.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('onedark').setup({
      -- style = 'dark', -- dark,cool
      transparent = true,
      highlights = {
        ["@text.uri"] = { fmt = 'none' },
        QuickFixLine = { fmt = 'none' }
      },
    })
    require('onedark').load()
  end
}

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--   require("tokyonight").setup({
--     style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--     light_style = "day", -- The theme is used when the background is set to light
--     transparent = false, -- Enable this to disable setting the background color
--     })
--     require('tokyonight').load()
--   end
-- }

-- return {
--     "oxfist/night-owl.nvim",
--     lazy = false, -- make sure we load this during startup if it is your main colorscheme
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       -- load the colorscheme here
--       require("night-owl").setup()
--       vim.cmd.colorscheme("night-owl")
--     end
-- }
