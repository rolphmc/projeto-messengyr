defmodule MessengyrWeb.LayoutView do
  use MessengyrWeb, :view

  # Phoenix LiveDashboard is available only in development by default,
  # so we instruct Elixir to not warn if the dashboard route is missing.
  @compile {:no_warn_undefined, {Routes, :live_dashboard_path, 2}}
  @category{"Programação", "Mobile", "Front-end"}

  def logged_in?(conn) do
  	Guardian.Plug.authenticated?(conn, [])
  end

  def username(conn) do
    user = Guardian.Plug.current_resource(conn)
    %{username: username} = user
    username
  end


end
