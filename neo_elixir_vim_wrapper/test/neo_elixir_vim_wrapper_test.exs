defmodule NeoElixirVimWrapperTest do
  use ExUnit.Case
  doctest NeoElixirVimWrapper

  test "greets the world" do
    assert NeoElixirVimWrapper.hello() == :world
  end
end
