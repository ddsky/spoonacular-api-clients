# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Model.RecipeInformation do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :title,
    :image,
    :imageType,
    :servings,
    :readyInMinutes,
    :preparationMinutes,
    :cookingMinutes,
    :license,
    :sourceName,
    :sourceUrl,
    :spoonacularSourceUrl,
    :aggregateLikes,
    :healthScore,
    :spoonacularScore,
    :pricePerServing,
    :analyzedInstructions,
    :cheap,
    :creditsText,
    :cuisines,
    :dairyFree,
    :diets,
    :gaps,
    :glutenFree,
    :instructions,
    :lowFodmap,
    :occasions,
    :sustainable,
    :vegan,
    :vegetarian,
    :veryHealthy,
    :veryPopular,
    :weightWatcherSmartPoints,
    :dishTypes,
    :extendedIngredients,
    :summary,
    :winePairing,
    :taste
  ]

  @type t :: %__MODULE__{
    :id => integer(),
    :title => String.t,
    :image => String.t | nil,
    :imageType => String.t | nil,
    :servings => float(),
    :readyInMinutes => integer(),
    :preparationMinutes => integer() | nil,
    :cookingMinutes => integer() | nil,
    :license => String.t | nil,
    :sourceName => String.t,
    :sourceUrl => String.t,
    :spoonacularSourceUrl => String.t,
    :aggregateLikes => integer(),
    :healthScore => float(),
    :spoonacularScore => float(),
    :pricePerServing => float(),
    :analyzedInstructions => [map()],
    :cheap => boolean(),
    :creditsText => String.t,
    :cuisines => [String.t],
    :dairyFree => boolean(),
    :diets => [String.t],
    :gaps => String.t,
    :glutenFree => boolean(),
    :instructions => String.t | nil,
    :lowFodmap => boolean(),
    :occasions => [String.t],
    :sustainable => boolean(),
    :vegan => boolean(),
    :vegetarian => boolean(),
    :veryHealthy => boolean(),
    :veryPopular => boolean(),
    :weightWatcherSmartPoints => float(),
    :dishTypes => [String.t],
    :extendedIngredients => [SpoonacularAPI.Model.RecipeInformationExtendedIngredientsInner.t],
    :summary => String.t,
    :winePairing => SpoonacularAPI.Model.RecipeInformationWinePairing.t | nil,
    :taste => SpoonacularAPI.Model.TasteInformation.t | nil
  }

  alias SpoonacularAPI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:extendedIngredients, :list, SpoonacularAPI.Model.RecipeInformationExtendedIngredientsInner)
     |> Deserializer.deserialize(:winePairing, :struct, SpoonacularAPI.Model.RecipeInformationWinePairing)
     |> Deserializer.deserialize(:taste, :struct, SpoonacularAPI.Model.TasteInformation)
  end
end
