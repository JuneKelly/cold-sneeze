defmodule Cold do
  use Application
  require Logger

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    port = Application.get_env(:cold, :cowboy_port)

    children = [
      Plug.Adapters.Cowboy.child_spec(:http, Cold.Router, [], port: port)
    ]

    Logger.info "Start server, listening on port #{port}"
    Supervisor.start_link(children, strategy: :one_for_one, name: Cold.Supervisor)
  end
end
