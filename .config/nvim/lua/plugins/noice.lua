return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true,
        -- border = { style = "rounded" },
      }
    end,
  },
}
