# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :Monday,
    :Tuesday,
    :Wednesday,
    :Thursday,
    :Friday,
    :Saturday,
    :Sunday
  ]

  @type t :: %__MODULE__{
    :Monday => String.t | nil,
    :Tuesday => String.t | nil,
    :Wednesday => String.t | nil,
    :Thursday => String.t | nil,
    :Friday => String.t | nil,
    :Saturday => String.t | nil,
    :Sunday => String.t | nil
  }

  def decode(value) do
    value
  end
end

