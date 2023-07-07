local coq_settings = {
    auto_start = 'shut-up',
    keymap = {
        pre_select = true,
    },
    display = {
        pum = {
            fast_close = true
        }
    }
}

vim.api.nvim_set_var('coq_settings', coq_settings)
