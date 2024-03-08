# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchGroceryProductsByUpc200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :badges,
    :importantBadges,
    :breadcrumbs,
    :generatedText,
    :imageType,
    :ingredientCount,
    :ingredientList,
    :ingredients,
    :likes,
    :nutrition,
    :price,
    :servings,
    :spoonacularScore
  ]

  @type t :: %__MODULE__{
    :id => integer(),
    :title => String.t,
    :badges => [String.t],
    :importantBadges => [String.t],
    :breadcrumbs => [String.t],
    :generatedText => String.t,
    :imageType => String.t,
    :ingredientCount => integer() | nil,
    :ingredientList => String.t,
    :ingredients => [SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseIngredientsInner.t],
    :likes => float(),
    :nutrition => SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseNutrition.t,
    :price => float(),
    :servings => SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseServings.t,
    :spoonacularScore => float()
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ingredients, :list, SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseIngredientsInner)
     |> Deserializer.deserialize(:nutrition, :struct, SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseNutrition)
     |> Deserializer.deserialize(:servings, :struct, SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseServings)
  end
end

