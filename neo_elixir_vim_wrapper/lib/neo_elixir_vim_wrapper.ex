defmodule NeoElixirVimWrapper do
    @python_dir Application.app_dir(:neo_elixir_vim_wrapper, "priv/python")
    use Export.Python

    def test( str ) do 
        {:ok, py} = Python.start(python_path: @python_dir)
        py |> Python.call(test( str ), from_file: "pythonThing")
    end
end
