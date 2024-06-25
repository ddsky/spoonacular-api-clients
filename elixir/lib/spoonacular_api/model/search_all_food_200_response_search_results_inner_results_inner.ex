# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchAllFood200ResponseSearchResultsInnerResultsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :image,
    :link,
    :type,
    :relevance,
    :content
  ]

  @type t :: %__MODULE__{
    :id => String.t,
    :name => String.t,
    :image => String.t | nil,
    :link => String.t | nil,
    :type => String.t,
    :relevance => float(),
    :content => String.t | nil
  }

  def decode(value) do
    value
  end
end

