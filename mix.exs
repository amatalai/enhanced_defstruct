defmodule EnhancedDefstruct.Mixfile do
  use Mix.Project

  def project do
    [
      app: :enhanced_defstruct,
      version: "0.0.1",
      description: description(),
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      docs: [extras: ["README.md"]]
   ]
  end

  def application do
    [applications: [:logger]]
  end

  defp description do
    "EnhancedDefstruct is package that helps to create structs without invoking defmodule macro."
  end

  defp deps do
    [
      {:excoveralls, "~> 0.5", only: :test},
      {:ex_doc, "~> 0.13.0", only: :dev}
    ]
  end
end
