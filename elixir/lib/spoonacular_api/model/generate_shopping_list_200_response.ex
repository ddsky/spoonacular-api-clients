# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GenerateShoppingList200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :aisles,
    :cost,
    :startDate,
    :endDate
  ]

  @type t :: %__MODULE__{
    :aisles => [SpoonacularAPI.Model.GetShoppingList200ResponseAislesInner.t],
    :cost => float(),
    :startDate => float(),
    :endDate => float()
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:aisles, :list, SpoonacularAPI.Model.GetShoppingList200ResponseAislesInner)
  end
end

