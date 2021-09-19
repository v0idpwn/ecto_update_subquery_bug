defmodule EctoBug.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_bug,
      version: "0.1.0",
      elixir: "~> 1.13-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {EctoBug.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, path: "../ecto_sql", override: true},
      {:ecto, path: "../ecto", override: true},
      {:postgrex, path: "../postgrex", override: true},
      {:myxql, path: "../myxql", override: true}
    ]
  end
end
