# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.AnalyzeARecipeSearchQuery200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :dishes,
    :ingredients,
    :cuisines,
    :modifiers
  ]

  @type t :: %__MODULE__{
    :dishes => [SpoonacularAPI.Model.AnalyzeARecipeSearchQuery200ResponseDishesInner.t],
    :ingredients => [SpoonacularAPI.Model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner.t],
    :cuisines => [String.t],
    :modifiers => [String.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:dishes, :list, SpoonacularAPI.Model.AnalyzeARecipeSearchQuery200ResponseDishesInner)
     |> Deserializer.deserialize(:ingredients, :list, SpoonacularAPI.Model.AnalyzeARecipeSearchQuery200ResponseIngredientsInner)
  end
end

