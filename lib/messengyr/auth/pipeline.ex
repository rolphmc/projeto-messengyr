defmodule Messengyr.Auth.Pipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :messengyr,
    module: Messengyr.Auth.Guardian,
    error_handler: Messengyr.Auth.Guardian.AuthErrorHandler

  #curso
  plug Guardian.Plug.VerifySession
  plug Guardian.Plug.LoadResource, allow_blank: true

end
