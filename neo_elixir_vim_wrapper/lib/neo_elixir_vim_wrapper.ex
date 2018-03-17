defmodule NeoElixirVimWrapper do
    @python_dir Path.expand("~/.neo-elixir-vm-wrapper/neo-python/neo/VM") 
    use Export.Python
    
    @spec isArray(tuple()) :: boolean()
    def isArray( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)), from_file: "InteropService") 
    end
    

end
