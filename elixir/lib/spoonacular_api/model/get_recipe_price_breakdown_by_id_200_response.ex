# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetRecipePriceBreakdownById200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :ingredients,
    :totalCost,
    :totalCostPerServing
  ]

  @type t :: %__MODULE__{
    :ingredients => [SpoonacularAPI.Model.GetRecipePriceBreakdownById200ResponseIngredientsInner.t],
    :totalCost => float(),
    :totalCostPerServing => float()
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:ingredients, :list, SpoonacularAPI.Model.GetRecipePriceBreakdownById200ResponseIngredientsInner)
  end
end
