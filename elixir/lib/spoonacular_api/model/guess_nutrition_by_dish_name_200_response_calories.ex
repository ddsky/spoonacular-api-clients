# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GuessNutritionByDishName200ResponseCalories do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :confidenceRange95Percent,
    :standardDeviation,
    :unit,
    :value
  ]

  @type t :: %__MODULE__{
    :confidenceRange95Percent => SpoonacularAPI.Model.GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent.t,
    :standardDeviation => float(),
    :unit => String.t,
    :value => float()
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:confidenceRange95Percent, :struct, SpoonacularAPI.Model.GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent)
  end
end

