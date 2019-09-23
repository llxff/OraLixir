defmodule Oracle.MixProject do
  use Mix.Project

  def project do
    [
      app: :oracle,
      version: "0.1.0",
      elixir: "~> 1.9",
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
      {:ecto_sql, "~> 3.0"},
      {:oranif, git: "https://github.com/c-bik/oranif.git", tag: "0.2.2"}
    ]
  end
end