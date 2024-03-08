# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.ConvertAmounts200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :sourceAmount,
    :sourceUnit,
    :targetAmount,
    :targetUnit,
    :answer
  ]

  @type t :: %__MODULE__{
    :sourceAmount => float(),
    :sourceUnit => String.t,
    :targetAmount => float(),
    :targetUnit => String.t,
    :answer => String.t
  }

  def decode(value) do
    value
  end
end

