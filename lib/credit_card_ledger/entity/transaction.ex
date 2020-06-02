defmodule CreditCardLedger.Entity.Transaction do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "transactions" do
    field :amount, :float
    belongs_to(:user, CreditCardLedger.Entity.User)
    field :inserted_at, :naive_datetime
  end

  def cast(params, user) do
    now = NaiveDateTime.truncate(NaiveDateTime.utc_now(), :second)

    %__MODULE__{inserted_at: now}
    |> cast(params, [:amount])
    |> validate_required([:amount])
    |> put_assoc(:user, user)
    |> apply_changes()
  end
end
