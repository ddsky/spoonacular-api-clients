# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.QuickAnswer200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :answer,
    :image
  ]

  @type t :: %__MODULE__{
    :answer => String.t,
    :image => String.t
  }

  def decode(value) do
    value
  end
end

