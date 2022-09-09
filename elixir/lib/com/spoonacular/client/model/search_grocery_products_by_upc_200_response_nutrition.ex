# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.SearchGroceryProductsByUpc200ResponseNutrition do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :nutrients,
    :caloricBreakdown
  ]

  @type t :: %__MODULE__{
    :nutrients => [com.spoonacular.client.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner.t],
    :caloricBreakdown => com.spoonacular.client.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown.t
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.SearchGroceryProductsByUpc200ResponseNutrition do
  import com.spoonacular.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:nutrients, :list, com.spoonacular.client.Model.ParseIngredients200ResponseInnerNutritionNutrientsInner, options)
    |> deserialize(:caloricBreakdown, :struct, com.spoonacular.client.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown, options)
  end
end

