defmodule Messengyr.Accounts do

  import Ecto.Changeset
  alias Messengyr.Accounts.User
  alias Messengyr.Repo

  def create_user(%{"password" => password} =   params) do

    encrypted_password = Argon2.hash_pwd_salt(password)

    register_changeset(params)
    |> put_change(:encrypted_password, encrypted_password)
    |> Repo.insert

  end

  def register_changeset(params \\ %{}) do
    %User{}
    |> cast(params, [:username, :name, :email, :password])
    |> validate_required([:username, :name, :email, :password])
    |> unique_constraint(:email)
    |> unique_constraint(:username)
    |> validate_format(:email, ~r/@/)
    |> validate_format(:username, ~r/^[a-zA-Z0-9]*$/)
    |> validate_length(:password, min: 4)
  end

end
