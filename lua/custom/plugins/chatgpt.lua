return {
  'jackMort/ChatGPT.nvim',
  event = 'VeryLazy',
  config = function()
    local openai_api_key = os.getenv 'OPENAI_API_KEY'
    require('chatgpt').setup {
      api_key_cmd = openai_api_key,
    }
  end,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-lua/plenary.nvim',
    'folke/trouble.nvim',
    'nvim-telescope/telescope.nvim',
  },
}
