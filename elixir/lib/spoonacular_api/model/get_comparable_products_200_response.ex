# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetComparableProducts200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :comparableProducts
  ]

  @type t :: %__MODULE__{
    :comparableProducts => SpoonacularAPI.Model.GetComparableProducts200ResponseComparableProducts.t
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:comparableProducts, :struct, SpoonacularAPI.Model.GetComparableProducts200ResponseComparableProducts)
  end
end

