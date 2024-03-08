# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.ClassifyGroceryProductBulk200ResponseInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :cleanTitle,
    :image,
    :category,
    :breadcrumbs,
    :usdaCode
  ]

  @type t :: %__MODULE__{
    :cleanTitle => String.t,
    :image => String.t,
    :category => String.t,
    :breadcrumbs => [String.t],
    :usdaCode => integer()
  }

  def decode(value) do
    value
  end
end

