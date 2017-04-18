defmodule SwitchDatabaseRESTAPI.Api.DBOperations do
  @moduledoc """
  Documentation for SwitchDatabaseRESTAPI.Api.DBOperations.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "http://tr02.switchapi.com/"
  plug Tesla.Middleware.JSON

  def add_post(a_pi_key, access_token, list, body) do
    method = [method: :post]
    url = [url: "/Add"]
    query_params = []
    header_params = [header: [{:"aPIKey", a_pi_key}, {:"accessToken", access_token}, {:"list", list}]]
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def list_post(a_pi_key, access_token, list, body) do
    method = [method: :post]
    url = [url: "/List"]
    query_params = []
    header_params = [header: [{:"aPIKey", a_pi_key}, {:"accessToken", access_token}, {:"list", list}]]
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_delete(a_pi_key, access_token, list, list_item_id) do
    method = [method: :delete]
    url = [url: "/Set"]
    query_params = []
    header_params = [header: [{:"aPIKey", a_pi_key}, {:"accessToken", access_token}, {:"list", list}, {:"listItemId", list_item_id}]]
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  def set_post(a_pi_key, access_token, list, list_item_id, body) do
    method = [method: :post]
    url = [url: "/Set"]
    query_params = []
    header_params = [header: [{:"aPIKey", a_pi_key}, {:"accessToken", access_token}, {:"list", list}, {:"listItemId", list_item_id}]]
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
