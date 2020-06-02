defmodule CreditCardLedger.Repo do
  use Ecto.Repo,
    otp_app: :credit_card_ledger,
    adapter: Ecto.Adapters.MyXQL
end
