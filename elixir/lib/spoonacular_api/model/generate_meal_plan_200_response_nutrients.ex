# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GenerateMealPlan200ResponseNutrients do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :calories,
    :carbohydrates,
    :fat,
    :protein
  ]

  @type t :: %__MODULE__{
    :calories => float(),
    :carbohydrates => float(),
    :fat => float(),
    :protein => float()
  }

  def decode(value) do
    value
  end
end

