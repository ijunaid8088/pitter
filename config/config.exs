# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pitter,
  ecto_repos: [Pitter.Repo]

# Configures the endpoint
config :pitter, Pitter.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wUir/s9qEzfm9+y1klc2jnL+r97H+OFz3XCozg0MFFHGfH0+7y5Pzvf+eEx5qPgG",
  render_errors: [view: Pitter.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pitter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
