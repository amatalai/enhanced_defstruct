[![Build Status](https://travis-ci.org/amatalai/enhanced_defstruct.svg?branch=master)](https://travis-ci.org/amatalai/enhanced_defstruct)
# EnhancedDefstruct

EnhancedDefstruct is package that helps to create structs without invoking defmodule macro.

## Installation

* Add package to your list of dependencies in `mix.exs`:
```elixir
  def deps do
    [
      {:enhanced_defstruct, github: "amatalai/enhanced_defstruct"}
    ]
  end
```
* For Elixir < 1.4 ensure it's added to list of applications as well:
```elixir
  def application do
    [applications: [:enhanced_defstruct]]
  end
```

## Example Usage

```elixir
  import EnhancedDefstruct
  defstruct MyProject.Keyword, field: 1, option: 2
  defstruct MyProject.AtomList, [:something]
  defstruct MyProject.Blank, []

  iex(1)> %MyProject.Keyword{}
  %MyProject.Keyword{field: 1, option: 2}

  iex(2)> %MyProject.AtomList{}
  %MyProject.AtomList{something: nil}

  iex(3)> %MyProject.Blank{}
  %MyProject.Blank{}
```

## Warning

The use of this package may be regarded as `magic`, `hack`, `bad practice` etc. and should be avoided at all costs.

## License

  Copyright 2017 Tobiasz @amatalai Małecki <tobiasz.malecki@appunite.com>

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
