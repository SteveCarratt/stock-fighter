defmodule ExecutionStreamTest do
  use ExUnit.Case
  doctest ExecutionStream 

  test "handles execution" do
	ExecutionHandler.handle fn -> {:text, "{ text: 'hello', execution: 'something' }"} end
  end
end
