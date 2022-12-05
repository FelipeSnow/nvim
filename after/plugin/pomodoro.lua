local pomodoro_status, pomodoro = pcall(require, "pomodoro")

if not pomodoro_status then
  return
end

pomodoro.setup({
  time_work = 50,
  time_break_short = 10,
  time_break_long = 20,
  timers_to_long_break = 4,
})
