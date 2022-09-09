# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.spoonacular.client.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :number,
    :step,
    :ingredients,
    :equipment
  ]

  @type t :: %__MODULE__{
    :number => float(),
    :step => String.t,
    :ingredients => [com.spoonacular.client.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.t] | nil,
    :equipment => [com.spoonacular.client.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner.t] | nil
  }
end

defimpl Poison.Decoder, for: com.spoonacular.client.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner do
  import com.spoonacular.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:ingredients, :list, com.spoonacular.client.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner, options)
    |> deserialize(:equipment, :list, com.spoonacular.client.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInnerIngredientsInner, options)
  end
end
