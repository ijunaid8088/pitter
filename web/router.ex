defmodule Pitter.Router do
  use Pitter.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Pitter do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/tweets", TweetController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Pitter do
  #   pipe_through :api
  # end
end
