defmodule DescriptiveStatistics.Mixfile do
  use Mix.Project

  def project do
    [ app: :descriptive_statistics,
      version: "0.0.1",
      elixir: "> 0.13.2",
      deps: deps,
      package: [
        contributors: ["Piotr Usewicz", "Victor Martinez"],
        licenses: ["MIT"],
        links: [github: "https://github.com/pusewicz/descriptive_statistics"]
      ],
      description: "Descriptive Statistics is a library that allows you to compute simple descriptive statistics in Elixir. Inspired by https://github.com/thirtysixthspan/descriptive_statistics."
    ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat.git" }
  defp deps do
    []
  end
end
