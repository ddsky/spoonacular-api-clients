# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.AddToShoppingListRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :item,
    :aisle,
    :parse
  ]

  @type t :: %__MODULE__{
    :item => String.t,
    :aisle => String.t,
    :parse => boolean()
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.AddToShoppingListRequest do
  def decode(value, _options) do
    value
  end
end

