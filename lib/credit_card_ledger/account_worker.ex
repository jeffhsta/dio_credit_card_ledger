defmodule CreditCardLedger.AccountWorker do
  use GenServer
  alias CreditCardLedger.Transaction

  def start_link({user_id, worker_name}) do
    GenServer.start_link(__MODULE__, user_id, name: worker_name)
  end

  def init(_user_id) do
    {:ok, %{}}
  end

  def handle_call({:add_transaction, params}, _from, state) do
    result = Transaction.add_transaction(params.user_id, params.amount)
    {:reply, result, state}
  end
end
