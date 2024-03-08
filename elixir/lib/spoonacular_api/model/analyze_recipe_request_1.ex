# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.AnalyzeRecipeRequest1 do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :servings,
    :ingredients,
    :instructions
  ]

  @type t :: %__MODULE__{
    :title => String.t | nil,
    :servings => integer() | nil,
    :ingredients => [String.t] | nil,
    :instructions => String.t | nil
  }

  def decode(value) do
    value
  end
end

