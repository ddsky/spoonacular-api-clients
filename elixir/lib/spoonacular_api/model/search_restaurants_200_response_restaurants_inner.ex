# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :_id,
    :name,
    :phone_number,
    :address,
    :type,
    :description,
    :local_hours,
    :cuisines,
    :food_photos,
    :logo_photos,
    :store_photos,
    :dollar_signs,
    :pickup_enabled,
    :delivery_enabled,
    :is_open,
    :offers_first_party_delivery,
    :offers_third_party_delivery,
    :miles,
    :weighted_rating_value,
    :aggregated_rating_count
  ]

  @type t :: %__MODULE__{
    :_id => String.t | nil,
    :name => String.t | nil,
    :phone_number => integer() | nil,
    :address => SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInnerAddress.t | nil,
    :type => String.t | nil,
    :description => String.t | nil,
    :local_hours => SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInnerLocalHours.t | nil,
    :cuisines => [String.t] | nil,
    :food_photos => [String.t] | nil,
    :logo_photos => [String.t] | nil,
    :store_photos => [String.t] | nil,
    :dollar_signs => integer() | nil,
    :pickup_enabled => boolean() | nil,
    :delivery_enabled => boolean() | nil,
    :is_open => boolean() | nil,
    :offers_first_party_delivery => boolean() | nil,
    :offers_third_party_delivery => boolean() | nil,
    :miles => float() | nil,
    :weighted_rating_value => float() | nil,
    :aggregated_rating_count => integer() | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:address, :struct, SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInnerAddress)
     |> Deserializer.deserialize(:local_hours, :struct, SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInnerLocalHours)
  end
end

