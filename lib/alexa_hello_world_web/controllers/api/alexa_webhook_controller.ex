defmodule AlexaHelloWorldWeb.Api.AlexaWebhookController do
  use AlexaHelloWorld.Web, :controller

  def incoming(conn, %{"uid" => "alexa"} = params) do
    request = Alexa.Request.from_params(params)
    response = Alexa.handle_request(request)
    json conn, response
  end
end
