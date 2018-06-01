defmodule LoggerTest.Translator do
  def translate(_min_level, _level, kind, message) do
    case add_metadata(kind, message) do
      {:ok, metadata} ->
        {:ok, [], metadata}
      _ ->
        :none
    end
  end


  # '** Task ~p terminating~n** Started from ~p~n** When function  == ~p~n**      arguments == ~p~n** Reason for termination == ~n** ~p~n'
  def add_metadata(:format, {_msg, [_pid, _pid2, _function, _args, {error, stacktrace}]}) do
    {:ok, [stacktrace: stacktrace, error: error]}
  end

  def add_metadata(_, _) do
    nil
  end
end
