# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.RecipeInformationWinePairing do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :pairedWines,
    :pairingText,
    :productMatches
  ]

  @type t :: %__MODULE__{
    :pairedWines => [String.t] | nil,
    :pairingText => String.t | nil,
    :productMatches => [SpoonacularAPI.Model.RecipeInformationWinePairingProductMatchesInner.t] | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:productMatches, :list, SpoonacularAPI.Model.RecipeInformationWinePairingProductMatchesInner)
  end
end
