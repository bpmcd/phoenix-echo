defmodule PhoenixEchoApi.PageController do
  use PhoenixEchoApi.Web, :controller
  use Timex

  @now Date.today()

  def index(conn, %{"name" => name, "message" => message, "number" => number}) do
  	num = String.to_integer(number, 10)
    json conn, %{name: name, capitalizedMessage: String.upcase(message), squaredNumber: num * num, year: @now.year, month: @now.month, day: @now.day}
  end
end
