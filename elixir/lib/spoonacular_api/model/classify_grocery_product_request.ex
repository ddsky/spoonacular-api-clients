# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.ClassifyGroceryProductRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :upc,
    :plu_code
  ]

  @type t :: %__MODULE__{
    :title => String.t,
    :upc => String.t,
    :plu_code => String.t
  }

  def decode(value) do
    value
  end
end

