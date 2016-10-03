defmodule Cold.Router do
  require Logger
  use Plug.Router
  alias Cold.Templates

  plug :match
  plug :dispatch

  get "/" do
    Logger.info "Render homepage"
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, Templates.homepage)
  end

  match _ do
    Logger.info "404, not found"
    send_resp(conn, 404, "Oops!")
  end

end
