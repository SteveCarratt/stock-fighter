defmodule CoreTest do
  use ExUnit.Case
  doctest Core

  test "test" do
	{:ok, a} = Core.start "SIB62876667", "MLDEX"
	IO.inspect a
  end
end
