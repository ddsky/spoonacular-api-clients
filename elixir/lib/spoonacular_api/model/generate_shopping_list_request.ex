# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GenerateShoppingListRequest do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :username,
    :"start-date",
    :"end-date",
    :hash
  ]

  @type t :: %__MODULE__{
    :username => String.t,
    :"start-date" => String.t,
    :"end-date" => String.t,
    :hash => String.t
  }

  def decode(value) do
    value
  end
end

