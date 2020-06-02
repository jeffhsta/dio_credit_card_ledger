defmodule CreditCardLedger.Entity.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "users" do
    field :fullname, :string
    field :credit_limit, :float
    field :inserted_at, :naive_datetime
  end

  @spec cast(:invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}) :: map
  def cast(params) do
    now = NaiveDateTime.truncate(NaiveDateTime.utc_now(), :second)

    %__MODULE__{inserted_at: now}
    |> cast(params, [:fullname, :credit_limit])
    |> validate_required([:fullname, :credit_limit])
    |> apply_changes()
  end
end
