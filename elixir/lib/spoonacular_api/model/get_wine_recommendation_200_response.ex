# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetWineRecommendation200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :recommendedWines,
    :totalFound
  ]

  @type t :: %__MODULE__{
    :recommendedWines => [SpoonacularAPI.Model.GetWineRecommendation200ResponseRecommendedWinesInner.t],
    :totalFound => integer()
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:recommendedWines, :list, SpoonacularAPI.Model.GetWineRecommendation200ResponseRecommendedWinesInner)
  end
end

