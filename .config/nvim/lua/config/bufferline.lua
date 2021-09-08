require("bufferline").setup({
  options = {
    numbers = "ordinal",
    show_close_icon = false,
    diagnostics = "nvim_lsp",
    always_show_bufferline = false,
    separator_style = "thin",
    diagnostics_indicator = function(_, _, diagnostics_dict)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " " or (e == "warning" and " " or "")
        s = s .. sym .. n
      end
      return s
    end,
  },
})

