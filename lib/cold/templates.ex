defmodule Cold.Templates do

  def homepage do
    layout([
      [:h1, "Hello, I have a cold"],
      [:p,
       "This is a demo of ",
       [:a, %{href: "https://github.com/ShaneKilkelly/sneeze", target: "_blank"}, "sneeze"],
       " the template data->html renderer."]
    ])
  end

  def layout(content_block) do
    Sneeze.render([
      [:__@raw_html, "<!DOCTYPE html>"],
      [:head,
       [:title, "Cold, Sneeze!"]],
      [:body,
       [:div, %{id: "main-content"},
        content_block]]
    ])
  end

end
