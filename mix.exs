defmodule Blitzy.Mixfile do
  use Mix.Project

  def project do
    [app: :blitzy,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :httpoison, :timex]]
  end

  defp deps do
    [
     {:httpoison, "~> 0.9.0"},
     {:timex, "~> 3.0"},
     {:tzdata, "~> 0.1.8", override: true}
    ]
  end
end
