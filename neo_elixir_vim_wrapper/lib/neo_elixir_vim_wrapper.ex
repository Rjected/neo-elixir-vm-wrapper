defmodule NeoElixirVimWrapper do
    @python_dir Path.expand("~/.neo-elixir-vm-wrapper/neo-python/neo/VM") 
    use Export.Python
    
    @spec isArray(tuple()) :: boolean()
    def isArray( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)).IsArray(), from_file: "InteropService") 
    end

        
    @spec isStruct(tuple()) :: boolean()
    def isArray( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)).IsStruct(), from_file: "InteropService") 
    end
 
    @spec getByteArray(tuple()) :: [...]
    def getByteArray( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)).GetByteArray(), from_file: "InteropService") 
    end

    @spec getBoolean(tuple()) :: boolean() 
    def getBoolean( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)).GetBoolean(), from_file: "InteropService") 
    end
    
    @spec getArray(tuple()) :: [...] 
    def getArray( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)).GetArray(), from_file: "InteropService") 
    end
 
    @spec getInterface(tuple()) :: undefined 
    def getInterface( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)).GetInterface(), from_file: "InteropService") 
    end 
    
    @spec getString(tuple()) :: list()
    def getInterface( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)).GetString(), from_file: "InteropService") 
    end
         
    @spec __str__(tuple()) :: list()  
    def getInterface( tuple ) do
        {:ok, py} = Python.start(python_path: @python_dir)
         
        py |> Python.call(stackitem_decoder(elem(tuple, 1)).__str__(), from_file: "InteropService") 
    end 

end
