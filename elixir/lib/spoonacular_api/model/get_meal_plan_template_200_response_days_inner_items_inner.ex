# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.GetMealPlanTemplate200ResponseDaysInnerItemsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :slot,
    :position,
    :type,
    :value
  ]

  @type t :: %__MODULE__{
    :id => integer(),
    :slot => integer(),
    :position => integer(),
    :type => String.t,
    :value => SpoonacularAPI.Model.GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue.t | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:value, :struct, SpoonacularAPI.Model.GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue)
  end
end

