# Cold

A demo of [Sneeze](https://github.com/ShaneKilkelly/sneeze).


## Run

```
iex -S mix
```

Then visit localhost:4000 in a browser.


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `cold` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:cold, "~> 0.1.0"}]
    end
    ```

  2. Ensure `cold` is started before your application:

    ```elixir
    def application do
      [applications: [:cold]]
    end
    ```
