# NOTE: This file is auto generated by OpenAPI Generator 7.7.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule SpoonacularAPI.Api.MenuItems do
  @moduledoc """
  API calls for all endpoints tagged `MenuItems`.
  """

  alias SpoonacularAPI.Connection
  import SpoonacularAPI.RequestBuilder

  @doc """
  Autocomplete Menu Item Search
  Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `query` (String.t): The (partial) search query.
  - `opts` (keyword): Optional parameters
    - `:number` (float()): The number of results to return (between 1 and 25).

  ### Returns

  - `{:ok, SpoonacularAPI.Model.AutocompleteMenuItemSearch200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec autocomplete_menu_item_search(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.AutocompleteMenuItemSearch200Response.t} | {:error, Tesla.Env.t}
  def autocomplete_menu_item_search(connection, query, opts \\ []) do
    optional_params = %{
      :number => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/menuItems/suggest")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.AutocompleteMenuItemSearch200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Get Menu Item Information
  Use a menu item id to get all available information about a menu item, such as nutrition.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (integer()): The item's id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, SpoonacularAPI.Model.GetMenuItemInformation200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_menu_item_information(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.GetMenuItemInformation200Response.t} | {:error, Tesla.Env.t}
  def get_menu_item_information(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/food/menuItems/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.GetMenuItemInformation200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Menu Item Nutrition by ID Image
  Visualize a menu item's nutritional information as HTML including CSS.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (float()): The menu item id.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec menu_item_nutrition_by_id_image(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def menu_item_nutrition_by_id_image(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/food/menuItems/#{id}/nutritionWidget.png")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Menu Item Nutrition Label Image
  Visualize a menu item's nutritional label information as an image.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (float()): The menu item id.
  - `opts` (keyword): Optional parameters
    - `:showOptionalNutrients` (boolean()): Whether to show optional nutrients.
    - `:showZeroValues` (boolean()): Whether to show zero values.
    - `:showIngredients` (boolean()): Whether to show a list of ingredients.

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec menu_item_nutrition_label_image(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def menu_item_nutrition_label_image(connection, id, opts \\ []) do
    optional_params = %{
      :showOptionalNutrients => :query,
      :showZeroValues => :query,
      :showIngredients => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/menuItems/#{id}/nutritionLabel.png")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Menu Item Nutrition Label Widget
  Visualize a menu item's nutritional label information as HTML including CSS.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (float()): The menu item id.
  - `opts` (keyword): Optional parameters
    - `:defaultCss` (boolean()): Whether the default CSS should be added to the response.
    - `:showOptionalNutrients` (boolean()): Whether to show optional nutrients.
    - `:showZeroValues` (boolean()): Whether to show zero values.
    - `:showIngredients` (boolean()): Whether to show a list of ingredients.

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec menu_item_nutrition_label_widget(Tesla.Env.client, float(), keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def menu_item_nutrition_label_widget(connection, id, opts \\ []) do
    optional_params = %{
      :defaultCss => :query,
      :showOptionalNutrients => :query,
      :showZeroValues => :query,
      :showIngredients => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/menuItems/#{id}/nutritionLabel")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): The (natural language) search query.
    - `:minCalories` (float()): The minimum amount of calories the menu item must have.
    - `:maxCalories` (float()): The maximum amount of calories the menu item can have.
    - `:minCarbs` (float()): The minimum amount of carbohydrates in grams the menu item must have.
    - `:maxCarbs` (float()): The maximum amount of carbohydrates in grams the menu item can have.
    - `:minProtein` (float()): The minimum amount of protein in grams the menu item must have.
    - `:maxProtein` (float()): The maximum amount of protein in grams the menu item can have.
    - `:minFat` (float()): The minimum amount of fat in grams the menu item must have.
    - `:maxFat` (float()): The maximum amount of fat in grams the menu item can have.
    - `:addMenuItemInformation` (boolean()): If set to true, you get more information about the menu items returned.
    - `:offset` (integer()): The number of results to skip (between 0 and 900).
    - `:number` (integer()): The maximum number of items to return (between 1 and 100). Defaults to 10.

  ### Returns

  - `{:ok, SpoonacularAPI.Model.SearchMenuItems200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_menu_items(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, SpoonacularAPI.Model.SearchMenuItems200Response.t} | {:error, Tesla.Env.t}
  def search_menu_items(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :minCalories => :query,
      :maxCalories => :query,
      :minCarbs => :query,
      :maxCarbs => :query,
      :minProtein => :query,
      :maxProtein => :query,
      :minFat => :query,
      :maxFat => :query,
      :addMenuItemInformation => :query,
      :offset => :query,
      :number => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/menuItems/search")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, SpoonacularAPI.Model.SearchMenuItems200Response},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Menu Item Nutrition by ID Widget
  Visualize a menu item's nutritional information as HTML including CSS.

  ### Parameters

  - `connection` (SpoonacularAPI.Connection): Connection to server
  - `id` (integer()): The item's id.
  - `opts` (keyword): Optional parameters
    - `:defaultCss` (boolean()): Whether the default CSS should be added to the response.

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec visualize_menu_item_nutrition_by_id(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def visualize_menu_item_nutrition_by_id(connection, id, opts \\ []) do
    optional_params = %{
      :defaultCss => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/food/menuItems/#{id}/nutritionWidget")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {401, false},
      {403, false},
      {404, false}
    ])
  end
end
