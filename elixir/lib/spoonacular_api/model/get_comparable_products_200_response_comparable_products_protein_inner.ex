# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetComparableProducts200ResponseComparableProductsProteinInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :difference,
    :id,
    :image,
    :title
  ]

  @type t :: %__MODULE__{
    :difference => float(),
    :id => integer(),
    :image => String.t,
    :title => String.t
  }

  def decode(value) do
    value
  end
end

