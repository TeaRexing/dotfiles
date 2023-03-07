local status_ok, config = pcall(require, "nightfox")
if not status_ok then
  print("Colorscheme not loaded!");
  return
end

config.setup({
  options = {
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})

vim.cmd("colorscheme nightfox")
