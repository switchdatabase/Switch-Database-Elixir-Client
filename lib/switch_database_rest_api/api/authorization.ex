defmodule SwitchDatabaseRESTAPI.Api.Authorization do
  @moduledoc """
  Documentation for SwitchDatabaseRESTAPI.Api.Authorization.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "http://tr02.switchapi.com/"
  plug Tesla.Middleware.JSON

  def token_get(a_pi_key, signature, expire) do
    method = [method: :get]
    url = [url: "/Token"]
    query_params = []
    header_params = [header: [{:"aPIKey", a_pi_key}, {:"signature", signature}, {:"expire", expire}]]
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
