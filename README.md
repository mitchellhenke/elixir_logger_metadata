# LoggerTest

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `logger_test` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:logger_test, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/logger_test](https://hexdocs.pm/logger_test).


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
