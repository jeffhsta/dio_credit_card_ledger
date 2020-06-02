defmodule CreditCardLedger.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false
  require Logger
  use Application
  @http_port 8080

  def start(_type, _args) do
    Logger.info("Starting http server at port #{@http_port}")

    children = [
      CreditCardLedger.Repo,
      {Plug.Cowboy, scheme: :http, plug: CreditCardLedgerHTTP.Router, options: [port: @http_port]},
      CreditCardLedger.SafeTransaction,
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CreditCardLedger.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
