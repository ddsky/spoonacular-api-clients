# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.SearchGroceryProductsByUpc200ResponseServings do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :number,
    :size,
    :unit
  ]

  @type t :: %__MODULE__{
    :number => float(),
    :size => float(),
    :unit => String.t
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.SearchGroceryProductsByUpc200ResponseServings do
  def decode(value, _options) do
    value
  end
end

