defmodule EnhancedDefstruct do
  @moduledoc """
  EnhancedDefstruct is package that helps to create structs without invoking defmodule macro.
  """

  defmacro defstruct(name, fields) do
    quote do
      defmodule unquote(name) do
        defstruct unquote(fields)
      end
    end
  end
end
