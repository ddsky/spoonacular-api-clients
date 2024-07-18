-module(spoonacular_ingredients_api).

-export([autocomplete_ingredient_search/2, autocomplete_ingredient_search/3,
         compute_ingredient_amount/4, compute_ingredient_amount/5,
         get_ingredient_information/2, get_ingredient_information/3,
         get_ingredient_substitutes/2, get_ingredient_substitutes/3,
         get_ingredient_substitutes_by_id/2, get_ingredient_substitutes_by_id/3,
         ingredient_search/2, ingredient_search/3,
         ingredients_by_id_image/2, ingredients_by_id_image/3,
         map_ingredients_to_grocery_products/2, map_ingredients_to_grocery_products/3,
         visualize_ingredients/3, visualize_ingredients/4]).

-define(BASE_URL, <<"">>).

%% @doc Autocomplete Ingredient Search
%% Autocomplete the entry of an ingredient.
-spec autocomplete_ingredient_search(ctx:ctx(), binary()) -> {ok, [spoonacular_autocomplete_ingredient_search_200_response_inner:spoonacular_autocomplete_ingredient_search_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_ingredient_search(Ctx, Query) ->
    autocomplete_ingredient_search(Ctx, Query, #{}).

-spec autocomplete_ingredient_search(ctx:ctx(), binary(), maps:map()) -> {ok, [spoonacular_autocomplete_ingredient_search_200_response_inner:spoonacular_autocomplete_ingredient_search_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_ingredient_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/ingredients/autocomplete"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['number', 'metaInformation', 'intolerances', 'language'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Compute Ingredient Amount
%% Compute the amount you need of a certain ingredient for a certain nutritional goal. For example, how much pineapple do you have to eat to get 10 grams of protein?
-spec compute_ingredient_amount(ctx:ctx(), integer(), binary(), integer()) -> {ok, spoonacular_compute_ingredient_amount_200_response:spoonacular_compute_ingredient_amount_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
compute_ingredient_amount(Ctx, Id, Nutrient, Target) ->
    compute_ingredient_amount(Ctx, Id, Nutrient, Target, #{}).

-spec compute_ingredient_amount(ctx:ctx(), integer(), binary(), integer(), maps:map()) -> {ok, spoonacular_compute_ingredient_amount_200_response:spoonacular_compute_ingredient_amount_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
compute_ingredient_amount(Ctx, Id, Nutrient, Target, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/ingredients/", Id, "/amount"],
    QS = lists:flatten([{<<"nutrient">>, Nutrient}, {<<"target">>, Target}])++spoonacular_utils:optional_params(['unit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Ingredient Information
%% Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
-spec get_ingredient_information(ctx:ctx(), integer()) -> {ok, spoonacular_ingredient_information:spoonacular_ingredient_information(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_information(Ctx, Id) ->
    get_ingredient_information(Ctx, Id, #{}).

-spec get_ingredient_information(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_ingredient_information:spoonacular_ingredient_information(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_information(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/ingredients/", Id, "/information"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['amount', 'unit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Ingredient Substitutes
%% Search for substitutes for a given ingredient.
-spec get_ingredient_substitutes(ctx:ctx(), binary()) -> {ok, spoonacular_get_ingredient_substitutes_200_response:spoonacular_get_ingredient_substitutes_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_substitutes(Ctx, IngredientName) ->
    get_ingredient_substitutes(Ctx, IngredientName, #{}).

-spec get_ingredient_substitutes(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_get_ingredient_substitutes_200_response:spoonacular_get_ingredient_substitutes_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_substitutes(Ctx, IngredientName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/ingredients/substitutes"],
    QS = lists:flatten([{<<"ingredientName">>, IngredientName}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Ingredient Substitutes by ID
%% Search for substitutes for a given ingredient.
-spec get_ingredient_substitutes_by_id(ctx:ctx(), integer()) -> {ok, spoonacular_get_ingredient_substitutes_200_response:spoonacular_get_ingredient_substitutes_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_substitutes_by_id(Ctx, Id) ->
    get_ingredient_substitutes_by_id(Ctx, Id, #{}).

-spec get_ingredient_substitutes_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_ingredient_substitutes_200_response:spoonacular_get_ingredient_substitutes_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_substitutes_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/ingredients/", Id, "/substitutes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Ingredient Search
%% Search for simple whole foods (e.g. fruits, vegetables, nuts, grains, meat, fish, dairy etc.).
-spec ingredient_search(ctx:ctx(), binary()) -> {ok, spoonacular_ingredient_search_200_response:spoonacular_ingredient_search_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
ingredient_search(Ctx, Query) ->
    ingredient_search(Ctx, Query, #{}).

-spec ingredient_search(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_ingredient_search_200_response:spoonacular_ingredient_search_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
ingredient_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/ingredients/search"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['addChildren', 'minProteinPercent', 'maxProteinPercent', 'minFatPercent', 'maxFatPercent', 'minCarbsPercent', 'maxCarbsPercent', 'metaInformation', 'intolerances', 'sort', 'sortDirection', 'offset', 'number', 'language'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Ingredients by ID Image
%% Visualize a recipe's ingredient list.
-spec ingredients_by_id_image(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
ingredients_by_id_image(Ctx, Id) ->
    ingredients_by_id_image(Ctx, Id, #{}).

-spec ingredients_by_id_image(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
ingredients_by_id_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/ingredientWidget.png"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['measure'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Map Ingredients to Grocery Products
%% Map a set of ingredients to products you can buy in the grocery store.
-spec map_ingredients_to_grocery_products(ctx:ctx(), spoonacular_map_ingredients_to_grocery_products_request:spoonacular_map_ingredients_to_grocery_products_request()) -> {ok, [spoonacular_map_ingredients_to_grocery_products_200_response_inner:spoonacular_map_ingredients_to_grocery_products_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
map_ingredients_to_grocery_products(Ctx, SpoonacularMapIngredientsToGroceryProductsRequest) ->
    map_ingredients_to_grocery_products(Ctx, SpoonacularMapIngredientsToGroceryProductsRequest, #{}).

-spec map_ingredients_to_grocery_products(ctx:ctx(), spoonacular_map_ingredients_to_grocery_products_request:spoonacular_map_ingredients_to_grocery_products_request(), maps:map()) -> {ok, [spoonacular_map_ingredients_to_grocery_products_200_response_inner:spoonacular_map_ingredients_to_grocery_products_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
map_ingredients_to_grocery_products(Ctx, SpoonacularMapIngredientsToGroceryProductsRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/food/ingredients/map"],
    QS = [],
    Headers = [],
    Body1 = SpoonacularMapIngredientsToGroceryProductsRequest,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Ingredients Widget
%% Visualize ingredients of a recipe. You can play around with that endpoint!
-spec visualize_ingredients(ctx:ctx(), binary(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_ingredients(Ctx, IngredientList, Servings) ->
    visualize_ingredients(Ctx, IngredientList, Servings, #{}).

-spec visualize_ingredients(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_ingredients(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/visualizeIngredients"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['language'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['measure', 'view', 'defaultCss', 'showBacklink'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


