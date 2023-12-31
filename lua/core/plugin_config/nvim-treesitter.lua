require("nvim-treesitter").setup({
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = { 
    "json",
    "html", 
    "css", 
    "vim", 
    "lua", 
    "javascript", 
    "typescript", 
    "tsx", 
    "go", 
    "rust", 
    "java", 
    "python", 
    "markdown", 
    "yaml", 
    "cpp", 
    "toml"
  },
  -- 启用代码高亮模块
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})
