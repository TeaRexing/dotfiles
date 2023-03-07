local status_ok, todo = pcall(require, "todo-comments")
if not status_ok then
  print("ToDo Comments not loaded!")
  return
end

todo.setup {
  -- no changes
}
