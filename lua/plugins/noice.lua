--- @type LazySpec
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    presets = {
      bottom_search = true, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- enables an input dialog for inc-rename.nvim
    },
    routes = {
      {
        view = 'notify',
        filter = { event = 'msg_showmode' },
      },
    },
    lsp = {
      hover = { enabled = false },
      signature = { enabled = false },
    },
  },
  init = function()
    vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'Normal' }) -- Background of hover window
    vim.api.nvim_set_hl(0, 'FloatBorder', { link = 'DiagnosticInfo' }) -- Border color
  end,
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    'rcarriga/nvim-notify',
  },
}
