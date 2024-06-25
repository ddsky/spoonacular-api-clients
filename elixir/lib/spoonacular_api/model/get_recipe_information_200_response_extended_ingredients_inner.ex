# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetRecipeInformation200ResponseExtendedIngredientsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :aisle,
    :amount,
    :consitency,
    :id,
    :image,
    :measures,
    :meta,
    :name,
    :original,
    :originalName,
    :unit
  ]

  @type t :: %__MODULE__{
    :aisle => String.t,
    :amount => float(),
    :consitency => String.t,
    :id => integer(),
    :image => String.t,
    :measures => SpoonacularAPI.Model.GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.t | nil,
    :meta => [String.t] | nil,
    :name => String.t,
    :original => String.t,
    :originalName => String.t,
    :unit => String.t
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:measures, :struct, SpoonacularAPI.Model.GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures)
  end
end

