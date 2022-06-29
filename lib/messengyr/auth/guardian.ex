defmodule Messengyr.Auth.Guardian do
  use Guardian, otp_app: :messengyr
    alias Messengyr.Repo
    alias Messengyr.Accounts.User

  # código dado no curso
  def subject_for_token(user = %User{}, _claims) do
    {:ok, to_string(user.id)}
  end


  # código dado no curso
  def subject_for_token(_, _) do
    { :error, "Unknown resource type"}
  end

  # código dado no curso
  def resource_from_claims(claims) do
    { :ok, Repo.get(User, claims["sub"])}
  end

end
