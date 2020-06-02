defmodule CreditCardLedger.Repo.Migrations.CreateTransactionTable do
  use Ecto.Migration

  def change do
    create table(:transactions, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :amount, :float, nullable: false
      add :user_id, references(:users, type: :uuid)
      add :inserted_at, :naive_datetime
    end
  end
end
