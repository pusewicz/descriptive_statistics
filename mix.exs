defmodule DescriptiveStatistics.Mixfile do
  use Mix.Project

  def project do
    [ app: :descriptive_statistics,
      version: "0.0.1",
      elixir: "> 0.13.2",
      deps: [],
      package: [
        contributors: ["Piotr Usewicz", "Victor Martinez"],
        licenses: ["MIT"],
        links: [github: "https://github.com/pusewicz/descriptive_statistics"]
      ],
      description: "Descriptive Statistics is a library that allows you to compute simple descriptive statistics in Elixir. Inspired by https://github.com/thirtysixthspan/descriptive_statistics."
    ]
  end

  def application do
    []
  end
end
