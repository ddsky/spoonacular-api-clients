# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.AutocompleteRecipeSearch200ResponseInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :imageType
  ]

  @type t :: %__MODULE__{
    :id => integer(),
    :title => String.t,
    :imageType => String.t
  }

  def decode(value) do
    value
  end
end

