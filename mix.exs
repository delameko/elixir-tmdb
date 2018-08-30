defmodule Tmdb.Mixfile do
  use Mix.Project

  def project do
    [app: :tmdb,
     version: "0.1.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      {:httpoison, "~> 1.0"},
      {:poison, "~> 1.5 or ~> 2.0 or ~> 3.0"}
    ]
  end
end
