# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :number,
    :step,
    :ingredients,
    :equipment
  ]

  @type t :: %__MODULE__{
    :number => float(),
    :step => String.t,
    :ingredients => [SpoonacularAPI.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.t] | nil,
    :equipment => [SpoonacularAPI.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.t] | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ingredients, :list, SpoonacularAPI.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner)
     |> Deserializer.deserialize(:equipment, :list, SpoonacularAPI.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner)
  end
end

