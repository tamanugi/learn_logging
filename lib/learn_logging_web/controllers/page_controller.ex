defmodule LearnLoggingWeb.PageController do
  use LearnLoggingWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
