# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInnerAddress do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :street_addr,
    :city,
    :state,
    :zipcode,
    :country,
    :lat,
    :lon,
    :street_addr_2,
    :latitude,
    :longitude
  ]

  @type t :: %__MODULE__{
    :street_addr => String.t | nil,
    :city => String.t | nil,
    :state => String.t | nil,
    :zipcode => String.t | nil,
    :country => String.t | nil,
    :lat => float() | nil,
    :lon => float() | nil,
    :street_addr_2 => String.t | nil,
    :latitude => float() | nil,
    :longitude => float() | nil
  }

  def decode(value) do
    value
  end
end

