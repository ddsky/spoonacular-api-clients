# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchAllFood200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :query,
    :totalResults,
    :limit,
    :offset,
    :searchResults
  ]

  @type t :: %__MODULE__{
    :query => String.t,
    :totalResults => integer(),
    :limit => integer(),
    :offset => integer(),
    :searchResults => [SpoonacularAPI.Model.SearchAllFood200ResponseSearchResultsInner.t]
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:searchResults, :list, SpoonacularAPI.Model.SearchAllFood200ResponseSearchResultsInner)
  end
end

