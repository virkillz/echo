defmodule EchoWeb.RoomChannel do
	use Phoenix.Channel

	def join("data:echo", message, socket) do
		# Because we already put inside connect, we can close for now
		# ets = :ets.info(Echo.PubSub.Local0)
		# current_user = ets[:size]
  		# EchoWeb.Endpoint.broadcast("data:echo", "new_data", %{data: current_user})
		{:ok, socket}
	end

	  def handle_in("new_msg", params, socket) do
	    broadcast!(socket, "new_msg", params)
	    {:noreply, socket}
	  end	

	def join("private", _message, socket) do
		{:ok, socket}
	end

	def join(_room, _params, _socket) do
		{:error, "You can only join lobby"}
	end

end