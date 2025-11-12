local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  api.config.mappings.default_on_attach(bufnr)

  vim.keymap.set("n", "o", "", { buffer = bufnr })
  vim.keymap.set("n", "l", api.node.open.edit, { buffer = bufnr, noremap = true, silent = true })

  -- local orig_input = vim.ui.input
  --
  -- vim.ui.input = function(opts, on_confirm)
  --   if opts and opts.default then
  --     opts.default = vim.fn.fnamemodify(opts.default, ":t")
  --   end
  --
  --   orig_input(opts, on_confirm)
  -- end
end

return {
  on_attach = my_on_attach,
  renderer = {
    indent_width = 2,
    highlight_opened_files = "all",
    root_folder_modifier = ":t",
    icons = {
      git_placement = "after",
      diagnostics_placement = "after",
      modified_placement = "after",
    },
  },
  view = {
    adaptive_size = false,
    width = 35,
    scrolloff = 0,
    centralize_selection = false,
    preserve_window_proportions = true,
    number = false,
    relativenumber = false,
    indent_markers = {
      enable = true,
    },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = {},
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
      },
    },
  }
}
