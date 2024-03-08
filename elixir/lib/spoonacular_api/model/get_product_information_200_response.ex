# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetProductInformation200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :breadcrumbs,
    :imageType,
    :badges,
    :importantBadges,
    :ingredientCount,
    :generatedText,
    :ingredientList,
    :ingredients,
    :likes,
    :aisle,
    :nutrition,
    :price,
    :servings,
    :spoonacularScore
  ]

  @type t :: %__MODULE__{
    :id => integer(),
    :title => String.t,
    :breadcrumbs => [String.t],
    :imageType => String.t,
    :badges => [String.t],
    :importantBadges => [String.t],
    :ingredientCount => integer(),
    :generatedText => any() | nil,
    :ingredientList => String.t,
    :ingredients => [SpoonacularAPI.Model.GetProductInformation200ResponseIngredientsInner.t],
    :likes => float(),
    :aisle => String.t,
    :nutrition => SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseNutrition.t,
    :price => float(),
    :servings => SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseServings.t,
    :spoonacularScore => float()
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ingredients, :list, SpoonacularAPI.Model.GetProductInformation200ResponseIngredientsInner)
     |> Deserializer.deserialize(:nutrition, :struct, SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseNutrition)
     |> Deserializer.deserialize(:servings, :struct, SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseServings)
  end
end

