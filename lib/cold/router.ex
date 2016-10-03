defmodule Cold.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, Sneeze.render([
          [:__@raw_html, "<!DOCTYPE html>"],
          [:head,
           [:title, "Cold, Sneeze!"]],
          [:body,
           [:div, %{id: "main-content"},
            [:h1, "Hello, I have a cold"],
            [:p,  "This is a demo of ",
             [:a, %{href: "https://github.com/ShaneKilkelly/sneeze", target: "_blank"}, "sneeze"],
             " the template data->html renderer."]]]
    ]))
  end

  match _, do: send_resp(conn, 404, "Oops!")

end
