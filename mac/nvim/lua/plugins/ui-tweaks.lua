-- In lua/plugins/ui-tweaks.lua

return {
  {
    "folke/noice.nvim",
    -- The "opts" function is the best way to modify the default LazyVim options
    opts = function(_, opts)
      -- Find the cmdline_popup view and ensure it uses a transparent background
      if opts.views and opts.views.cmdline_popup and opts.views.cmdline_popup.win_options then
        opts.views.cmdline_popup.win_options.winhighlight = "Normal:Normal,FloatBorder:FloatBorder"
      end

      -- You can do this for other views as well if needed
      -- For example, for the regular message popups:
      if opts.views and opts.views.popup and opts.views.popup.win_options then
        opts.views.popup.win_options.winhighlight = "Normal:Normal,FloatBorder:FloatBorder"
      end

      return opts
    end,
  },
}
