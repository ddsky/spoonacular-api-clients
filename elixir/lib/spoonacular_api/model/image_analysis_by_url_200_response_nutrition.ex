# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutrition do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :recipesUsed,
    :calories,
    :fat,
    :protein,
    :carbs
  ]

  @type t :: %__MODULE__{
    :recipesUsed => integer(),
    :calories => SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutritionCalories.t,
    :fat => SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutritionCalories.t,
    :protein => SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutritionCalories.t,
    :carbs => SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutritionCalories.t
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:calories, :struct, SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutritionCalories)
     |> Deserializer.deserialize(:fat, :struct, SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutritionCalories)
     |> Deserializer.deserialize(:protein, :struct, SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutritionCalories)
     |> Deserializer.deserialize(:carbs, :struct, SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutritionCalories)
  end
end

