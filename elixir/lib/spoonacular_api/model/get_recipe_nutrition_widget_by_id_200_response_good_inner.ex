# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetRecipeNutritionWidgetById200ResponseGoodInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :amount,
    :indented,
    :percentOfDailyNeeds,
    :title
  ]

  @type t :: %__MODULE__{
    :amount => String.t,
    :indented => boolean(),
    :percentOfDailyNeeds => float(),
    :title => String.t
  }

  def decode(value) do
    value
  end
end

