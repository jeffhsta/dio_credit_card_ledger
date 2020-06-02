defmodule CreditCardLedgerHTTP.Handler do
  import Plug.Conn

  def index(conn) do
    conn
    |> IO.inspect(label: "Connection")
    |> put_resp_content_type("text/plain")
    |> send_resp(:ok, "Ola")
  end
end
