[![Build Status](https://travis-ci.org/amatalai/enhanced_defstruct.svg?branch=master)](https://travis-ci.org/amatalai/enhanced_defstruct)
[![Code Climate](https://img.shields.io/codeclimate/issues/github/amatalai/enhanced_defstruct.svg)](https://hex.pm/packages/enhanced_defstruct)
[![Hex.pm](https://img.shields.io/hexpm/v/enhanced_defstruct.svg?style=flat&colorB=6B4D90)](https://hex.pm/packages/enhanced_defstruct)
[![Hex.pm](https://img.shields.io/hexpm/dt/enhanced_defstruct.svg?style=flat)](https://hex.pm/packages/enhanced_defstruct)
# EnhancedDefstruct

EnhancedDefstruct is package that helps to create structs without invoking defmodule macro.

## Installation

* Add package to your list of dependencies in `mix.exs`:
```elixir
  def deps do
    [
      {:enhanced_defstruct, "~> 0.1.1"}
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
  defstruct :atom, field: true

  iex(1)> %MyProject.Keyword{}
  %MyProject.Keyword{field: 1, option: 2}

  iex(2)> %MyProject.AtomList{}
  %MyProject.AtomList{something: nil}

  iex(3)> %MyProject.Blank{}
  %MyProject.Blank{}

  iex(4)> struct(:atom)
  %:atom{field: true}
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

## Support on Beerpay
Hey dude! Help me out for a couple of :beers:!

[![Beerpay](https://beerpay.io/amatalai/enhanced_defstruct/badge.svg?style=beer-square)](https://beerpay.io/amatalai/enhanced_defstruct)  [![Beerpay](https://beerpay.io/amatalai/enhanced_defstruct/make-wish.svg?style=flat-square)](https://beerpay.io/amatalai/enhanced_defstruct?focus=wish)
