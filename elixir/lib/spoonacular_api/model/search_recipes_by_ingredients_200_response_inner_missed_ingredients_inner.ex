# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :aisle,
    :amount,
    :id,
    :image,
    :meta,
    :name,
    :original,
    :originalName,
    :unit,
    :unitLong,
    :unitShort
  ]

  @type t :: %__MODULE__{
    :aisle => String.t,
    :amount => float(),
    :id => integer(),
    :image => String.t,
    :meta => [String.t] | nil,
    :name => String.t,
    :original => String.t,
    :originalName => String.t,
    :unit => String.t,
    :unitLong => String.t,
    :unitShort => String.t
  }

  def decode(value) do
    value
  end
end

