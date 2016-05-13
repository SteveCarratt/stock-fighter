defmodule ExecutionStreamTest do
  use ExUnit.Case
  doctest ExecutionStream 

  test "test" do
	socket = ExecutionStream.start "CAC85133150", "REMEX"
	ExecutionHandler.loop fn ->Socket.Web.recv! socket end
  end
end
