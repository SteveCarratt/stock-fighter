defmodule CoreTest do
  use ExUnit.Case
  doctest Core

  test "test" do
	Core.test |> IO.inspect
  end
end
