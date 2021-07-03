require("toggleterm").setup({
  direction = "vertical",
	size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
	end,
  open_mapping = [[<c-\>]],
  insert_mappings = true,
})
