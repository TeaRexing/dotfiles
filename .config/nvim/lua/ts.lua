local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  print("Treesitter not loaded!")
  return
end

configs.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { }, -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { "yaml" }
  },
}
