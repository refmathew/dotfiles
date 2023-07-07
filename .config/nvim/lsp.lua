local lspconfig = require('lspconfig')
-- local util = require('lspconfig/util')
local opts = { noremap = true, silent = true }
local configs = require('lspconfig/configs')

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  -- vim.keymap.set('n', '<space>wl', function()
  -- print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  -- end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>F', function() vim.lsp.buf.format() { async = true } end, bufopts)
  vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true


lspconfig.cssls.setup({
  on_attach = on_attach,
  capabilities = capabilities
})


-- lspconfig.cssmodules_ls.setup({
-- on_attach = on_attach,
-- capabilities = capabilities,
-- filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact"}
-- })


-- lspconfig.emmet_ls.setup({
-- on_attach = on_attach,
-- capabilities = capabilities,
-- filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
-- })


-- lspconfig.html.setup({
-- on_attach = on_attach,
-- capabilities = capabilities
-- })

lspconfig.angularls.setup({
  filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
  root_dir = lspconfig.util.root_pattern("angular.json")
})

lspconfig.sumneko_lua.setup({
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
})

lspconfig.volar.setup({
  on_attach = on_attach,
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
  init_options = {
    typescript = {
      serverPath = "/home/mathew/.npm-global/lib/node_modules/typescript/lib/tsserverlibrary.js"
    }
  }
})


-- local lspconfig = require'lspconfig'
-- local lspconfig_configs = require'lspconfig.configs'
-- local lspconfig_util = require 'lspconfig.util'

-- local function on_new_config(new_config, new_root_dir)
-- local function get_typescript_server_path(root_dir)
-- local project_root = lspconfig_util.find_node_modules_ancestor(root_dir)
-- return project_root and (lspconfig_util.path.join(project_root, 'node_modules', 'typescript', 'lib', 'tsserverlibrary.js'))
-- or ''
-- end

-- if
-- new_config.init_options
-- and new_config.init_options.typescript
-- and new_config.init_options.typescript.serverPath == ''
-- then
-- new_config.init_options.typescript.serverPath = get_typescript_server_path(new_root_dir)
-- end
-- end

-- local volar_cmd = {'vue-language-server', '--stdio'}
-- local volar_root_dir = lspconfig_util.root_pattern 'package.json'

-- lspconfig_configs.volar_api = {
-- default_config = {
-- cmd = volar_cmd,
-- root_dir = volar_root_dir,
-- on_new_config = on_new_config,
-- filetypes = { 'vue'},
-- -- If you want to use Volar's Take Over Mode (if you know, you know)
-- --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
-- init_options = {
-- typescript = {
-- serverPath = ''
-- },
-- languageFeatures = {
-- implementation = true, -- new in @volar/vue-language-server v0.33
-- references = true,
-- definition = true,
-- typeDefinition = true,
-- callHierarchy = true,
-- hover = true,
-- rename = true,
-- renameFileRefactoring = true,
-- signatureHelp = true,
-- codeAction = true,
-- workspaceSymbol = true,
-- completion = {
-- defaultTagNameCase = 'both',
-- defaultAttrNameCase = 'kebabCase',
-- getDocumentNameCasesRequest = false,
-- getDocumentSelectionRequest = false,
-- },
-- }
-- },
-- }
-- }
-- lspconfig.volar_api.setup{}

-- lspconfig_configs.volar_doc = {
-- default_config = {
-- cmd = volar_cmd,
-- root_dir = volar_root_dir,
-- on_new_config = on_new_config,

-- filetypes = { 'vue'},
-- -- If you want to use Volar's Take Over Mode (if you know, you know):
-- --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
-- init_options = {
-- typescript = {
-- serverPath = ''
-- },
-- languageFeatures = {
-- implementation = true, -- new in @volar/vue-language-server v0.33
-- documentHighlight = true,
-- documentLink = true,
-- codeLens = { showReferencesNotification = true},
-- -- not supported - https://github.com/neovim/neovim/pull/15723
-- semanticTokens = false,
-- diagnostics = true,
-- schemaRequestService = true,
-- }
-- },
-- }
-- }
-- lspconfig.volar_doc.setup{}

-- lspconfig_configs.volar_html = {
-- default_config = {
-- cmd = volar_cmd,
-- root_dir = volar_root_dir,
-- on_new_config = on_new_config,

-- filetypes = { 'vue'},
-- -- If you want to use Volar's Take Over Mode (if you know, you know), intentionally no 'json':
-- --filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
-- init_options = {
-- typescript = {
-- serverPath = ''
-- },
-- documentFeatures = {
-- selectionRange = true,
-- foldingRange = true,
-- linkedEditingRange = true,
-- documentSymbol = true,
-- -- not supported - https://github.com/neovim/neovim/pull/13654
-- documentColor = false,
-- documentFormatting = {
-- defaultPrintWidth = 100,
-- },
-- }
-- },
-- }
-- }
-- lspconfig.volar_html.setup{}

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true
-- require'lspconfig'.cssls.setup {
-- capabilities = capabilities,
-- }


-- local formatBuf = function(pattern) vim.lsp.buf.formatting_sync() end
-- vim.api.nvim_create_autocmd({"BufWrite"}, {
-- pattern = {"*.vue"},
-- command = "vim.lsp.buf.formatting_sync()"
-- })
