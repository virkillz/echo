defmodule EchoWeb.PageController do
  use EchoWeb, :controller

  def index(conn, _params) do
  		IO.inspect(conn)
  		host = "#{conn.host}:#{conn.port}"
		ets = :ets.info(Echo.PubSub.Local0)
		current_user = ets[:size]
  		EchoWeb.Endpoint.broadcast("data:echo", "new_data", %{data: current_user})
    	render(conn, "index.html", count: current_user, max: current_user, host: host)
  end

  def test(conn, %{"message" => message}) do

  	EchoWeb.Endpoint.broadcast("data:echo", "new_message", %{data: Phoenix.HTML.javascript_escape(message)})
    json(conn, %{data: "ok"})
  end  
end
