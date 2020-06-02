defmodule CreditCardLedger.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :fullname, :string, nullable: false
      add :credit_limit, :float, nullable: false
      add :inserted_at, :naive_datetime
    end
  end
end
