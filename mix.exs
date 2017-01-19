defmodule EnhancedDefstruct.Mixfile do
  use Mix.Project

  def project do
    [
      app: :enhanced_defstruct,
      deps: deps(),
      description: description(),
      docs: [
        extras: ["README.md"],
        main: "readme"
      ],
      elixir: "~> 1.3",
      package: package(),
      test_coverage: [tool: ExCoveralls],
      version: "0.1.0"
   ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:excoveralls, "~> 0.5", only: :test},
      {:ex_doc, "~> 0.13.0", only: :dev}
    ]
  end

  defp description do
    "EnhancedDefstruct is package that helps to create structs without invoking defmodule macro."
  end

  defp package do
    [
      name: :enhanced_defstruct,
      files: ~w(lib mix.exs README.md LICENSE),
      maintainers: ["Tobiasz Małecki"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/amatalai/enhanced_defstruct"}
    ]
  end
end
