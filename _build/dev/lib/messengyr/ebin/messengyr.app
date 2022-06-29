{application,messengyr,
    [{compile_env,[{messengyr,['Elixir.MessengyrWeb.Gettext'],error}]},
     {applications,
         [kernel,stdlib,elixir,logger,runtime_tools,phoenix,phoenix_ecto,
          ecto_sql,postgrex,phoenix_html,phoenix_live_reload,
          phoenix_live_view,phoenix_live_dashboard,esbuild,swoosh,
          telemetry_metrics,telemetry_poller,gettext,jason,plug_cowboy,
          comeonin,argon2_elixir,bcrypt_elixir,guardian]},
     {description,"messengyr"},
     {modules,
         ['Elixir.Messengyr','Elixir.Messengyr.Accounts',
          'Elixir.Messengyr.Accounts.Session',
          'Elixir.Messengyr.Accounts.User','Elixir.Messengyr.Application',
          'Elixir.Messengyr.Auth.Guardian',
          'Elixir.Messengyr.Auth.Guardian.Plug',
          'Elixir.Messengyr.Auth.Pipeline','Elixir.Messengyr.Mailer',
          'Elixir.Messengyr.Repo','Elixir.MessengyrWeb',
          'Elixir.MessengyrWeb.ChatController','Elixir.MessengyrWeb.ChatView',
          'Elixir.MessengyrWeb.Endpoint','Elixir.MessengyrWeb.ErrorHelpers',
          'Elixir.MessengyrWeb.ErrorView','Elixir.MessengyrWeb.Gettext',
          'Elixir.MessengyrWeb.LayoutView',
          'Elixir.MessengyrWeb.PageController','Elixir.MessengyrWeb.PageView',
          'Elixir.MessengyrWeb.Router','Elixir.MessengyrWeb.Router.Helpers',
          'Elixir.MessengyrWeb.Telemetry']},
     {registered,[]},
     {vsn,"0.1.0"},
     {mod,{'Elixir.Messengyr.Application',[]}}]}.