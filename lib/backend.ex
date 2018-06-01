defmodule LoggerTest.Backend do
  @moduledoc false

  @behaviour :gen_event

  def init(_) do
    {:ok, %{}}
  end

  def handle_call({:configure, _options}, state) do
    {:ok, :ok, state}
  end

  def handle_event({_level, gl, _event}, state) when node(gl) != node() do
    {:ok, state}
  end

  def handle_event({_level, _gl, {Logger, msg, _ts, md}}, state) do
    IO.inspect(msg, label: "MESSAGE")
    IO.inspect(md, label: "METADATA")

    {:ok, state}
  end

  def handle_event(:flush, state) do
    {:ok, state}
  end

  def handle_event(_, state) do
    {:ok, state}
  end

  def handle_info(_, state) do
    {:ok, state}
  end

  def code_change(_old_vsn, state, _extra) do
    {:ok, state}
  end

  def terminate(_reason, _state) do
    :ok
  end
end
