defmodule CreditCardLedger.MixProject do
  use Mix.Project

  def project do
    [
      app: :credit_card_ledger,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CreditCardLedger.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.4"},
      {:plug_cowboy, "~> 2.2"},
      {:ecto_sql, "~> 3.4"},
      {:jason, "~> 1.2"},
      {:myxql, "~> 0.4.1"}
    ]
  end

  defp aliases do
    [
      lint: "credo --strict"
    ]
  end
end
