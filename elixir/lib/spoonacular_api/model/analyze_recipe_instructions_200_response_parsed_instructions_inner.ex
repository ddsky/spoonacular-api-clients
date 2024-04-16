# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :steps
  ]

  @type t :: %__MODULE__{
    :name => String.t,
    :steps => [SpoonacularAPI.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner.t] | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:steps, :list, SpoonacularAPI.Model.AnalyzeRecipeInstructions200ResponseParsedInstructionsInnerStepsInner)
  end
end
