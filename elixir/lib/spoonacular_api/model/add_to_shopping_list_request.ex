# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.AddToShoppingListRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :item,
    :aisle,
    :parse
  ]

  @type t :: %__MODULE__{
    :item => String.t,
    :aisle => String.t,
    :parse => boolean()
  }

  def decode(value) do
    value
  end
end

