# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetRecipeNutritionWidgetById200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :calories,
    :carbs,
    :fat,
    :protein,
    :bad,
    :good
  ]

  @type t :: %__MODULE__{
    :calories => String.t,
    :carbs => String.t,
    :fat => String.t,
    :protein => String.t,
    :bad => [SpoonacularAPI.Model.GetRecipeNutritionWidgetById200ResponseBadInner.t],
    :good => [SpoonacularAPI.Model.GetRecipeNutritionWidgetById200ResponseGoodInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:bad, :list, SpoonacularAPI.Model.GetRecipeNutritionWidgetById200ResponseBadInner)
     |> Deserializer.deserialize(:good, :list, SpoonacularAPI.Model.GetRecipeNutritionWidgetById200ResponseGoodInner)
  end
end

