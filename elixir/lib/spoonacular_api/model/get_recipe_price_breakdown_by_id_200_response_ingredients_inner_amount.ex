# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmount do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :metric,
    :us
  ]

  @type t :: %__MODULE__{
    :metric => SpoonacularAPI.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric.t,
    :us => SpoonacularAPI.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric.t
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:metric, :struct, SpoonacularAPI.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric)
     |> Deserializer.deserialize(:us, :struct, SpoonacularAPI.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric)
  end
end

