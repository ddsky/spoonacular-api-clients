# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.ImageAnalysisByUrl200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :nutrition,
    :category,
    :recipes
  ]

  @type t :: %__MODULE__{
    :nutrition => SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutrition.t,
    :category => SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseCategory.t,
    :recipes => [SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseRecipesInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:nutrition, :struct, SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseNutrition)
     |> Deserializer.deserialize(:category, :struct, SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseCategory)
     |> Deserializer.deserialize(:recipes, :list, SpoonacularAPI.Model.ImageAnalysisByUrl200ResponseRecipesInner)
  end
end
