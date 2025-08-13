-- function copied from neovim/nvim-lspconfig
local function root_markers_with_field(root_files, new_names, field, fname)
  local path = vim.fn.fnamemodify(fname, ':h')
  local found = vim.fs.find(new_names, { path = path, upward = true })
  for _, f in ipairs(found or {}) do
    -- Match the given `field`.
    for line in io.lines(f) do
      if line:find(field) then
        root_files[#root_files + 1] = vim.fs.basename(f)
        break
      end
    end
  end
  return root_files
end

vim.lsp.config['biome'] = {
  cmd = function(dispatchers, config)
    local cmd = 'biome'
    local local_cmd = (config or {}).root_dir and config.root_dir .. '/node_modules/.bin/biome'
    if local_cmd and vim.fn.executable(local_cmd) == 1 then
      cmd = local_cmd
    end
    return vim.lsp.rpc.start({ cmd, 'lsp-proxy' }, dispatchers)
  end,
  filetypes = {
    'astro',
    'css',
    'graphql',
    'html',
    'javascript',
    'javascriptreact',
    'json',
    'jsonc',
    'svelte',
    'typescript',
    'typescript.tsx',
    'typescriptreact',
    'vue',
  },
  workspace_required = true,
  root_dir = function(_, on_dir)
    -- To support monorepos, biome recommends starting the search for the root from cwd
    -- https://biomejs.dev/guides/big-projects/#use-multiple-configuration-files
    local cwd = vim.fn.getcwd()
    local root_files = { 'biome.json', 'biome.jsonc' }
    local new_names = { 'package.json', 'package.json5' }
    root_files = root_markers_with_field(root_files, new_names, 'biome', cwd)
    local root_dir = vim.fs.dirname(vim.fs.find(root_files, { path = cwd, upward = true })[1])
    on_dir(root_dir)
  end,
}

vim.lsp.enable('biome')
