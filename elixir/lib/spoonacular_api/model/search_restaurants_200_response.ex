# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchRestaurants200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :restaurants
  ]

  @type t :: %__MODULE__{
    :restaurants => [SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInner.t] | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:restaurants, :list, SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInner)
  end
end

