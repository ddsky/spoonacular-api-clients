# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.AutocompleteProductSearch200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :results
  ]

  @type t :: %__MODULE__{
    :results => [SpoonacularAPI.Model.AutocompleteProductSearch200ResponseResultsInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:results, :list, SpoonacularAPI.Model.AutocompleteProductSearch200ResponseResultsInner)
  end
end

