import EnhancedDefstruct
defstruct NewStruct, one: 1, two: 2
defstruct Another, [:another]

defmodule EnhancedDefstructTest do
  use ExUnit.Case

  describe "fields param format" do
    test "struct with keyword fields" do
      assert %{one: 1, two: 2} = %NewStruct{}
    end

    test "struct with atom list fields" do
      assert %{another: nil} = %Another{}
    end

    test "invalid fields format" do
      assert_raise(
        ArgumentError,
        fn -> defstruct BadFieldsFormat, "string" end
      )
    end

    test "invalid struct name" do
      assert_raise(
        EnhancedDefstruct.Error,
        "invalid struct name, should be atom",
        fn -> defstruct "String", bad: :very end
      )
    end
  end
end
