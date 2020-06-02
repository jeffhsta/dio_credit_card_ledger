defmodule CreditCardLedger.Entity.UserTest do
  use ExUnit.Case
  alias CreditCardLedger.Entity.User
  alias CreditCardLedger.Repo

  test "save a user in the database" do
    params = %{
      fullname: "Some Body"
    }

    changeset = User.cast(params)
    Repo.insert(changeset)

    users = Repo.all(User)
    assert [%User{}] = users
  end
end
