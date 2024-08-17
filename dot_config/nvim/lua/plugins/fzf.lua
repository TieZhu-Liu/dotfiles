return {
  'junegunn/fzf.vim',
  dependencies = { 'junegunn/fzf', build = ':call fzf#install()' },
  init = function()
    vim.g.fzf_command_prefix = 'Fzf'
    vim.g.fzf_preview_window = ''
    vim.g.fzf_layout = { down = '~30%' }
    vim.keymap.set('n', '<c-p>', '<cmd>FzfFiles<cr>')
    vim.keymap.set('n', '<c-b>', '<cmd>FzfBuffers<cr>')
    vim.keymap.set('n', '<leader>fb', '<cmd>FzfBLines<cr>')
    vim.keymap.set('n', '<leader>ff', '<cmd>FzfRg<cr>')
    vim.keymap.set('i', '<c-x><c-k>', '<plug>(fzf-complete-word)', { noremap = false })
    vim.env.FZF_DEFAULT_COMMAND = 'fd --type f --strip-cwd-prefix --follow'
    vim.env.FZF_DEFAULT_OPTS = '--color fg:#d0d0d0,fg+:#d6c107,bg:-1,bg+:-1,hl:#5f87af,hl+:#5fd7ff,info:#afaf87,pointer:#af5fff,spinner:#af5fff,header:#87afaf --preview-window=0 --no-separator --prompt="❯ " --pointer=">"'
  end
}
