# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchGroceryProductsByUpc200ResponseServings do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :number,
    :size,
    :unit
  ]

  @type t :: %__MODULE__{
    :number => float(),
    :size => float(),
    :unit => String.t
  }

  def decode(value) do
    value
  end
end

