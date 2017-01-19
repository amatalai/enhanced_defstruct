defmodule EnhancedDefstruct do
  defmacro defstruct(name, fields) do
    quote do
      defmodule unquote(name) do
        defstruct unquote(fields)
      end
    end
  end
end
