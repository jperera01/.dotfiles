return {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lsconfig').basedpyright.setup {}
    end,
  },
}
