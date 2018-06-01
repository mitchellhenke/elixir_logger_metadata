# LoggerTest

Using Elixir 1.7 and OTP 21

```elixir
Logger.add_translator({LoggerTest.Translator, :translate})
Task.start(fn -> raise "Hello" end)
# Logger backends receive metadata with [error: %RuntimeError{message: "Hello"},
#  stacktrace: [
#    {:erl_eval, :do_apply, 6, [file: 'erl_eval.erl', line: 668]},
#    {Task.Supervised, :do_apply, 2, [file: 'lib/task/supervised.ex', line: 88]},
#    {:proc_lib, :init_p_do_apply, 3, [file: 'proc_lib.erl', line: 247]}
#  ]]
```
