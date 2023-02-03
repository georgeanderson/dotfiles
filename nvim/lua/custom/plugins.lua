return function(use)
  use({
    'chomosuke/term-edit.nvim', tag = 'v1.*',
    config = function()
      require('term-edit').setup({
        prompt_end = '%$ '
      })
    end
  })
end
