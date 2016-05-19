defmodule ExecutionStreamTest do
  use ExUnit.Case
  doctest ExecutionStream 

  test "handles execution" do
	ExecutionStream.start
  end
end
