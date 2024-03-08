-module(spoonacular_default_api).

-export([analyze_recipe/2, analyze_recipe/3,
         create_recipe_card_get/2, create_recipe_card_get/3,
         search_restaurants/1, search_restaurants/2]).

-define(BASE_URL, <<"">>).

%% @doc Analyze Recipe
%% This endpoint allows you to send raw recipe information, such as title, servings, and ingredients, to then see what we compute (badges, diets, nutrition, and more). This is useful if you have your own recipe data and want to enrich it with our semantic analysis.
-spec analyze_recipe(ctx:ctx(), spoonacular_analyze_recipe_request:spoonacular_analyze_recipe_request()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_recipe(Ctx, SpoonacularAnalyzeRecipeRequest) ->
    analyze_recipe(Ctx, SpoonacularAnalyzeRecipeRequest, #{}).

-spec analyze_recipe(ctx:ctx(), spoonacular_analyze_recipe_request:spoonacular_analyze_recipe_request(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_recipe(Ctx, SpoonacularAnalyzeRecipeRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/analyze"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['language', 'includeNutrition', 'includeTaste'], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularAnalyzeRecipeRequest,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create Recipe Card
%% Generate a recipe card for a recipe.
-spec create_recipe_card_get(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
create_recipe_card_get(Ctx, Id) ->
    create_recipe_card_get(Ctx, Id, #{}).

-spec create_recipe_card_get(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
create_recipe_card_get(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/card"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['mask', 'backgroundImage', 'backgroundColor', 'fontColor'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Restaurants
%% Search through thousands of restaurants (in North America) by location, cuisine, budget, and more.
-spec search_restaurants(ctx:ctx()) -> {ok, spoonacular_search_restaurants_200_response:spoonacular_search_restaurants_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_restaurants(Ctx) ->
    search_restaurants(Ctx, #{}).

-spec search_restaurants(ctx:ctx(), maps:map()) -> {ok, spoonacular_search_restaurants_200_response:spoonacular_search_restaurants_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_restaurants(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/restaurants/search"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['query', 'lat', 'lng', 'distance', 'budget', 'cuisine', 'min-rating', 'is-open', 'sort', 'page'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


