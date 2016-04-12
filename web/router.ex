defmodule PhoenixEchoApi.Router do
  use PhoenixEchoApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/", PhoenixEchoApi do
  #   pipe_through :browser # Use the default browser stack

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
   scope "/", PhoenixEchoApi do
     pipe_through :api

     get "/echo", PageController, :index
   end
end
