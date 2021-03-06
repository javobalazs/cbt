defmodule Ddd.MixProject do
  use Mix.Project

  @vsn "1.2.3"

  def project do
    [
      app: :cbt,
      version: @vsn,
      elixir: "~> 1.6",
      description: "couch btree library",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
