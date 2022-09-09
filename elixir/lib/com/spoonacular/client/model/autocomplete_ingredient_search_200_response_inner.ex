# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.AutocompleteIngredientSearch200ResponseInner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :image,
    :id,
    :aisle,
    :possibleUnits
  ]

  @type t :: %__MODULE__{
    :name => String.t,
    :image => String.t,
    :id => integer() | nil,
    :aisle => String.t | nil,
    :possibleUnits => [String.t] | nil
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.AutocompleteIngredientSearch200ResponseInner do
  def decode(value, _options) do
    value
  end
end

