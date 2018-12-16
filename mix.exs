defmodule CRUDimentary.MixProject do
  use Mix.Project

  def project do
    [
      app: :crudimentary,
      version: "0.2.5",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "CRUDimentary",
      source_url: "https://github.com/CRUDimentary/crudimentary",
      docs: [
        main: "Crudimentary",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:crudimentary_absinthe, ">= 0"},
      {:crudimentary_ecto, ">= 0"},
      {:crudimentary_cahce, ">= 0"},
      {:crudimentary_policy, ">= 0"},
    ]
  end
end
