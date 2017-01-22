defmodule EnhancedDefstruct do

  defmacro defstruct(name, fields) do
    name = Macro.expand(name, __CALLER__)

    do_defstruct(name, fields)
  end

  defp do_defstruct(name, fields) when is_atom(name) do
    quote do
      defmodule unquote(name) do
        defstruct unquote(fields)
      end
    end
  end

  defp do_defstruct(_name, _fields) do
    quote do
      raise EnhancedDefstruct.Error, "invalid struct name, should be atom"
    end
  end

end
