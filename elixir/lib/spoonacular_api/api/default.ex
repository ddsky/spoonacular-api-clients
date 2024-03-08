# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Api.Default do
  @moduledoc """
  API calls for all endpoints tagged `Default`.
  """

  alias SpoonacularAPI.Connection
  import SpoonacularAPI.RequestBuilder

  @doc """
  Analyze Recipe
  This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `analyze_recipe_request` (AnalyzeRecipeRequest): Example request body.
  - `opts` (keyword): Optional parameters
    - `:language` (String.t): The input language, either \"en\" or \"de\".
    - `:includeNutrition` (boolean()): Whether nutrition data should be added to correctly parsed ingredients.
    - `:includeTaste` (boolean()): Whether taste data should be added to correctly parsed ingredients.

  ### Returns

  - `{:ok, map()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec analyze_recipe(Tesla.Env.client, SpoonacularAPI.Model.AnalyzeRecipeRequest.t, keyword()) :: {:ok, nil} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def analyze_recipe(connection, analyze_recipe_request, opts \\ []) do
    optional_params = %{
      :language => :query,
      :includeNutrition => :query,
      :includeTaste => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/recipes/analyze")
      |> add_param(:body, :body, analyze_recipe_request)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Create Recipe Card
  Generate a recipe card for a recipe.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (float()): The recipe id.
  - `opts` (keyword): Optional parameters
    - `:mask` (String.t): The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\").
    - `:backgroundImage` (String.t): The background image (\"none\",\"background1\", or \"background2\").
    - `:backgroundColor` (String.t): The background color for the recipe card as a hex-string.
    - `:fontColor` (String.t): The font color for the recipe card as a hex-string.

  ### Returns

  - `{:ok, map()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_recipe_card_get(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:ok, Map.t} | {:error, Tesla.Env.t}
  def create_recipe_card_get(connection, id, opts \\ []) do
    optional_params = %{
      :mask => :query,
      :backgroundImage => :query,
      :backgroundColor => :query,
      :fontColor => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/recipes/#{id}/card")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %{}},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Search Restaurants
  Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): The search query.
    - `:lat` (float()): The latitude of the user's location.
    - `:lng` (float()): The longitude of the user's location.\".
    - `:distance` (float()): The distance around the location in miles.
    - `:budget` (float()): The user's budget for a meal in USD.
    - `:cuisine` (String.t): The cuisine of the restaurant.
    - `:"min-rating"` (float()): The minimum rating of the restaurant between 0 and 5.
    - `:"is-open"` (boolean()): Whether the restaurant must be open at the time of search.
    - `:sort` (String.t): How to sort the results, one of the following 'cheapest', 'fastest', 'rating', 'distance' or the default 'relevance'.
    - `:page` (float()): The page number of results.

  ### Returns

  - `{:ok, SpoonacularAPI.Model.SearchRestaurants200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_restaurants(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.SearchRestaurants200Response.t} | {:error, Tesla.Env.t}
  def search_restaurants(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :lat => :query,
      :lng => :query,
      :distance => :query,
      :budget => :query,
      :cuisine => :query,
      :"min-rating" => :query,
      :"is-open" => :query,
      :sort => :query,
      :page => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/restaurants/search")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.SearchRestaurants200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end
end
