# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetMealPlanWeek200ResponseDaysInnerNutritionSummary do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :nutrients
  ]

  @type t :: %__MODULE__{
    :nutrients => [SpoonacularAPI.Model.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:nutrients, :list, SpoonacularAPI.Model.GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner)
  end
end

