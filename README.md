# Echo


![Echo](https://imgur.com/a/P5zye0J)

The purpose of this project is to convert HTTP Post into broadcast Websocket.


MIX_ENV=prod mix compile.protocols
MIX_ENV=prod PORT=4000 elixir -pa _build/prod/consolidated -S mix phx.server


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
