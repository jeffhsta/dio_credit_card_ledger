import Config

config :credit_card_ledger,
  repo: CreditCardLedger.Repo

config :credit_card_ledger, CreditCardLedger.Repo,
  database: "credit_card_ledger_dev",
  username: "root",
  password: "secret",
  hostname: "localhost",
  port: 3306

  config :credit_card_ledger, ecto_repos: [CreditCardLedger.Repo]

if Mix.env() == :test do
  config :credit_card_ledger, CreditCardLedger.Repo,
    database: "credit_card_ledger_test",
    pool: Ecto.Adapters.SQL.Sandbox
end
