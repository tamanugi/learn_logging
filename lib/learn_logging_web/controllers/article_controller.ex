defmodule LearnLoggingWeb.ArticleController do
  use LearnLoggingWeb, :controller

  action_fallback LearnLoggingWeb.FallbackController

  require Logger

  def index(conn, %{"level" => level, "message" => message}) do
    Logger.log(String.to_atom(level), message)
    render(conn, "index.json", articles: [])
  end
end
