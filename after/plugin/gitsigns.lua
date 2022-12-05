local status, gitsigns = pcall(require, "gitsigns")

if not status then
  print("ue")
  return
end

gitsigns.setup()
