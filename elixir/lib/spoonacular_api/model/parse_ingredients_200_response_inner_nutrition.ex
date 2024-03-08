# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutrition do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :nutrients,
    :properties,
    :flavonoids,
    :caloricBreakdown,
    :weightPerServing
  ]

  @type t :: %__MODULE__{
    :nutrients => [SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner.t],
    :properties => [SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionPropertiesInner.t],
    :flavonoids => [SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionPropertiesInner.t],
    :caloricBreakdown => SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown.t,
    :weightPerServing => SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionWeightPerServing.t
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:nutrients, :list, SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner)
     |> Deserializer.deserialize(:properties, :list, SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionPropertiesInner)
     |> Deserializer.deserialize(:flavonoids, :list, SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionPropertiesInner)
     |> Deserializer.deserialize(:caloricBreakdown, :struct, SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown)
     |> Deserializer.deserialize(:weightPerServing, :struct, SpoonacularAPI.Model.ParseIngredients200ResponseInnerNutritionWeightPerServing)
  end
end

