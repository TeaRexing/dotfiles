local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  print("Which-Key not loaded!")
  return
end

wk.setup {}
