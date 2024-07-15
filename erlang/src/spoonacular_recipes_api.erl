-module(spoonacular_recipes_api).

-export([analyze_a_recipe_search_query/2, analyze_a_recipe_search_query/3,
         analyze_recipe_instructions/2, analyze_recipe_instructions/3,
         autocomplete_recipe_search/1, autocomplete_recipe_search/2,
         classify_cuisine/3, classify_cuisine/4,
         compute_glycemic_load/2, compute_glycemic_load/3,
         convert_amounts/5, convert_amounts/6,
         create_recipe_card/8, create_recipe_card/9,
         equipment_by_id_image/2, equipment_by_id_image/3,
         extract_recipe_from_website/2, extract_recipe_from_website/3,
         get_analyzed_recipe_instructions/2, get_analyzed_recipe_instructions/3,
         get_random_recipes/1, get_random_recipes/2,
         get_recipe_equipment_by_id/2, get_recipe_equipment_by_id/3,
         get_recipe_information/2, get_recipe_information/3,
         get_recipe_information_bulk/2, get_recipe_information_bulk/3,
         get_recipe_ingredients_by_id/2, get_recipe_ingredients_by_id/3,
         get_recipe_nutrition_widget_by_id/2, get_recipe_nutrition_widget_by_id/3,
         get_recipe_price_breakdown_by_id/2, get_recipe_price_breakdown_by_id/3,
         get_recipe_taste_by_id/2, get_recipe_taste_by_id/3,
         get_similar_recipes/2, get_similar_recipes/3,
         guess_nutrition_by_dish_name/2, guess_nutrition_by_dish_name/3,
         parse_ingredients/3, parse_ingredients/4,
         price_breakdown_by_id_image/2, price_breakdown_by_id_image/3,
         quick_answer/2, quick_answer/3,
         recipe_nutrition_by_id_image/2, recipe_nutrition_by_id_image/3,
         recipe_nutrition_label_image/2, recipe_nutrition_label_image/3,
         recipe_nutrition_label_widget/2, recipe_nutrition_label_widget/3,
         recipe_taste_by_id_image/2, recipe_taste_by_id_image/3,
         search_recipes/1, search_recipes/2,
         search_recipes_by_ingredients/1, search_recipes_by_ingredients/2,
         search_recipes_by_nutrients/1, search_recipes_by_nutrients/2,
         summarize_recipe/2, summarize_recipe/3,
         visualize_equipment/2, visualize_equipment/3,
         visualize_price_breakdown/3, visualize_price_breakdown/4,
         visualize_recipe_equipment_by_id/2, visualize_recipe_equipment_by_id/3,
         visualize_recipe_ingredients_by_id/2, visualize_recipe_ingredients_by_id/3,
         visualize_recipe_nutrition/3, visualize_recipe_nutrition/4,
         visualize_recipe_nutrition_by_id/2, visualize_recipe_nutrition_by_id/3,
         visualize_recipe_price_breakdown_by_id/2, visualize_recipe_price_breakdown_by_id/3,
         visualize_recipe_taste/2, visualize_recipe_taste/3,
         visualize_recipe_taste_by_id/2, visualize_recipe_taste_by_id/3]).

-define(BASE_URL, <<"">>).

%% @doc Analyze a Recipe Search Query
%% Parse a recipe search query to find out its intention.
-spec analyze_a_recipe_search_query(ctx:ctx(), binary()) -> {ok, spoonacular_analyze_a_recipe_search_query_200_response:spoonacular_analyze_a_recipe_search_query_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_a_recipe_search_query(Ctx, Q) ->
    analyze_a_recipe_search_query(Ctx, Q, #{}).

-spec analyze_a_recipe_search_query(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_analyze_a_recipe_search_query_200_response:spoonacular_analyze_a_recipe_search_query_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_a_recipe_search_query(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/queries/analyze"],
    QS = lists:flatten([{<<"q">>, Q}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Analyze Recipe Instructions
%% This endpoint allows you to break down instructions into atomic steps. Furthermore, each step will contain the ingredients and equipment required. Additionally, all ingredients and equipment from the recipe's instructions will be extracted independently of the step they're used in.
-spec analyze_recipe_instructions(ctx:ctx(), binary()) -> {ok, spoonacular_analyze_recipe_instructions_200_response:spoonacular_analyze_recipe_instructions_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_recipe_instructions(Ctx, Instructions) ->
    analyze_recipe_instructions(Ctx, Instructions, #{}).

-spec analyze_recipe_instructions(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_analyze_recipe_instructions_200_response:spoonacular_analyze_recipe_instructions_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_recipe_instructions(Ctx, Instructions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/analyzeInstructions"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"instructions">>, Instructions}]++spoonacular_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Autocomplete Recipe Search
%% Autocomplete a partial input to suggest possible recipe names.
-spec autocomplete_recipe_search(ctx:ctx()) -> {ok, [spoonacular_autocomplete_recipe_search_200_response_inner:spoonacular_autocomplete_recipe_search_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_recipe_search(Ctx) ->
    autocomplete_recipe_search(Ctx, #{}).

-spec autocomplete_recipe_search(ctx:ctx(), maps:map()) -> {ok, [spoonacular_autocomplete_recipe_search_200_response_inner:spoonacular_autocomplete_recipe_search_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_recipe_search(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/autocomplete"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['query', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Classify Cuisine
%% Classify the recipe's cuisine.
-spec classify_cuisine(ctx:ctx(), binary(), binary()) -> {ok, spoonacular_classify_cuisine_200_response:spoonacular_classify_cuisine_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_cuisine(Ctx, Title, IngredientList) ->
    classify_cuisine(Ctx, Title, IngredientList, #{}).

-spec classify_cuisine(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, spoonacular_classify_cuisine_200_response:spoonacular_classify_cuisine_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_cuisine(Ctx, Title, IngredientList, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/cuisine"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['language'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"title">>, Title}, {<<"ingredientList">>, IngredientList}]++spoonacular_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Compute Glycemic Load
%% Retrieve the glycemic index for a list of ingredients and compute the individual and total glycemic load.
-spec compute_glycemic_load(ctx:ctx(), spoonacular_compute_glycemic_load_request:spoonacular_compute_glycemic_load_request()) -> {ok, spoonacular_compute_glycemic_load_200_response:spoonacular_compute_glycemic_load_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
compute_glycemic_load(Ctx, SpoonacularComputeGlycemicLoadRequest) ->
    compute_glycemic_load(Ctx, SpoonacularComputeGlycemicLoadRequest, #{}).

-spec compute_glycemic_load(ctx:ctx(), spoonacular_compute_glycemic_load_request:spoonacular_compute_glycemic_load_request(), maps:map()) -> {ok, spoonacular_compute_glycemic_load_200_response:spoonacular_compute_glycemic_load_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
compute_glycemic_load(Ctx, SpoonacularComputeGlycemicLoadRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/food/ingredients/glycemicLoad"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['language'], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularComputeGlycemicLoadRequest,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Convert Amounts
%% Convert amounts like \"2 cups of flour to grams\".
-spec convert_amounts(ctx:ctx(), binary(), integer(), binary(), binary()) -> {ok, spoonacular_convert_amounts_200_response:spoonacular_convert_amounts_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
convert_amounts(Ctx, IngredientName, SourceAmount, SourceUnit, TargetUnit) ->
    convert_amounts(Ctx, IngredientName, SourceAmount, SourceUnit, TargetUnit, #{}).

-spec convert_amounts(ctx:ctx(), binary(), integer(), binary(), binary(), maps:map()) -> {ok, spoonacular_convert_amounts_200_response:spoonacular_convert_amounts_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
convert_amounts(Ctx, IngredientName, SourceAmount, SourceUnit, TargetUnit, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/convert"],
    QS = lists:flatten([{<<"ingredientName">>, IngredientName}, {<<"sourceAmount">>, SourceAmount}, {<<"sourceUnit">>, SourceUnit}, {<<"targetUnit">>, TargetUnit}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create Recipe Card
%% Generate a recipe card for a recipe.
-spec create_recipe_card(ctx:ctx(), binary(), binary(), binary(), integer(), integer(), binary(), binary()) -> {ok, spoonacular_create_recipe_card_200_response:spoonacular_create_recipe_card_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
create_recipe_card(Ctx, Title, Ingredients, Instructions, ReadyInMinutes, Servings, Mask, BackgroundImage) ->
    create_recipe_card(Ctx, Title, Ingredients, Instructions, ReadyInMinutes, Servings, Mask, BackgroundImage, #{}).

-spec create_recipe_card(ctx:ctx(), binary(), binary(), binary(), integer(), integer(), binary(), binary(), maps:map()) -> {ok, spoonacular_create_recipe_card_200_response:spoonacular_create_recipe_card_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
create_recipe_card(Ctx, Title, Ingredients, Instructions, ReadyInMinutes, Servings, Mask, BackgroundImage, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/visualizeRecipe"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"title">>, Title}, {<<"ingredients">>, Ingredients}, {<<"instructions">>, Instructions}, {<<"readyInMinutes">>, ReadyInMinutes}, {<<"servings">>, Servings}, {<<"mask">>, Mask}, {<<"backgroundImage">>, BackgroundImage}]++spoonacular_utils:optional_params(['image', 'imageUrl', 'author', 'backgroundColor', 'fontColor', 'source'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Equipment by ID Image
%% Visualize a recipe's equipment list as an image.
-spec equipment_by_id_image(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
equipment_by_id_image(Ctx, Id) ->
    equipment_by_id_image(Ctx, Id, #{}).

-spec equipment_by_id_image(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
equipment_by_id_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/equipmentWidget.png"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Recipe from Website
%% This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
-spec extract_recipe_from_website(ctx:ctx(), binary()) -> {ok, spoonacular_get_recipe_information_200_response:spoonacular_get_recipe_information_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
extract_recipe_from_website(Ctx, Url) ->
    extract_recipe_from_website(Ctx, Url, #{}).

-spec extract_recipe_from_website(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_get_recipe_information_200_response:spoonacular_get_recipe_information_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
extract_recipe_from_website(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/extract"],
    QS = lists:flatten([{<<"url">>, Url}])++spoonacular_utils:optional_params(['forceExtraction', 'analyze', 'includeNutrition', 'includeTaste'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Analyzed Recipe Instructions
%% Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
-spec get_analyzed_recipe_instructions(ctx:ctx(), integer()) -> {ok, spoonacular_get_analyzed_recipe_instructions_200_response:spoonacular_get_analyzed_recipe_instructions_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_analyzed_recipe_instructions(Ctx, Id) ->
    get_analyzed_recipe_instructions(Ctx, Id, #{}).

-spec get_analyzed_recipe_instructions(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_analyzed_recipe_instructions_200_response:spoonacular_get_analyzed_recipe_instructions_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_analyzed_recipe_instructions(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/analyzedInstructions"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['stepBreakdown'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Random Recipes
%% Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
-spec get_random_recipes(ctx:ctx()) -> {ok, spoonacular_get_random_recipes_200_response:spoonacular_get_random_recipes_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_random_recipes(Ctx) ->
    get_random_recipes(Ctx, #{}).

-spec get_random_recipes(ctx:ctx(), maps:map()) -> {ok, spoonacular_get_random_recipes_200_response:spoonacular_get_random_recipes_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_random_recipes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/random"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['includeNutrition', 'include-tags', 'exclude-tags', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Equipment by ID
%% Get a recipe's equipment list.
-spec get_recipe_equipment_by_id(ctx:ctx(), integer()) -> {ok, spoonacular_get_recipe_equipment_by_id_200_response:spoonacular_get_recipe_equipment_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_equipment_by_id(Ctx, Id) ->
    get_recipe_equipment_by_id(Ctx, Id, #{}).

-spec get_recipe_equipment_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_recipe_equipment_by_id_200_response:spoonacular_get_recipe_equipment_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_equipment_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/equipmentWidget.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Recipe Information
%% Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
-spec get_recipe_information(ctx:ctx(), integer()) -> {ok, spoonacular_get_recipe_information_200_response:spoonacular_get_recipe_information_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_information(Ctx, Id) ->
    get_recipe_information(Ctx, Id, #{}).

-spec get_recipe_information(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_recipe_information_200_response:spoonacular_get_recipe_information_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_information(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/information"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['includeNutrition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Recipe Information Bulk
%% Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
-spec get_recipe_information_bulk(ctx:ctx(), binary()) -> {ok, [spoonacular_get_recipe_information_bulk_200_response_inner:spoonacular_get_recipe_information_bulk_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_information_bulk(Ctx, Ids) ->
    get_recipe_information_bulk(Ctx, Ids, #{}).

-spec get_recipe_information_bulk(ctx:ctx(), binary(), maps:map()) -> {ok, [spoonacular_get_recipe_information_bulk_200_response_inner:spoonacular_get_recipe_information_bulk_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_information_bulk(Ctx, Ids, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/informationBulk"],
    QS = lists:flatten([{<<"ids">>, Ids}])++spoonacular_utils:optional_params(['includeNutrition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Ingredients by ID
%% Get a recipe's ingredient list.
-spec get_recipe_ingredients_by_id(ctx:ctx(), integer()) -> {ok, spoonacular_get_recipe_ingredients_by_id_200_response:spoonacular_get_recipe_ingredients_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_ingredients_by_id(Ctx, Id) ->
    get_recipe_ingredients_by_id(Ctx, Id, #{}).

-spec get_recipe_ingredients_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_recipe_ingredients_by_id_200_response:spoonacular_get_recipe_ingredients_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_ingredients_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/ingredientWidget.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Nutrition by ID
%% Get a recipe's nutrition data.
-spec get_recipe_nutrition_widget_by_id(ctx:ctx(), integer()) -> {ok, spoonacular_get_recipe_nutrition_widget_by_id_200_response:spoonacular_get_recipe_nutrition_widget_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_nutrition_widget_by_id(Ctx, Id) ->
    get_recipe_nutrition_widget_by_id(Ctx, Id, #{}).

-spec get_recipe_nutrition_widget_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_recipe_nutrition_widget_by_id_200_response:spoonacular_get_recipe_nutrition_widget_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_nutrition_widget_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/nutritionWidget.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Price Breakdown by ID
%% Get a recipe's price breakdown data.
-spec get_recipe_price_breakdown_by_id(ctx:ctx(), integer()) -> {ok, spoonacular_get_recipe_price_breakdown_by_id_200_response:spoonacular_get_recipe_price_breakdown_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_price_breakdown_by_id(Ctx, Id) ->
    get_recipe_price_breakdown_by_id(Ctx, Id, #{}).

-spec get_recipe_price_breakdown_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_recipe_price_breakdown_by_id_200_response:spoonacular_get_recipe_price_breakdown_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_price_breakdown_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/priceBreakdownWidget.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Taste by ID
%% Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
-spec get_recipe_taste_by_id(ctx:ctx(), integer()) -> {ok, spoonacular_get_recipe_taste_by_id_200_response:spoonacular_get_recipe_taste_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_taste_by_id(Ctx, Id) ->
    get_recipe_taste_by_id(Ctx, Id, #{}).

-spec get_recipe_taste_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_recipe_taste_by_id_200_response:spoonacular_get_recipe_taste_by_id_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_taste_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/tasteWidget.json"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['normalize'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Similar Recipes
%% Find recipes which are similar to the given one.
-spec get_similar_recipes(ctx:ctx(), integer()) -> {ok, [spoonacular_get_similar_recipes_200_response_inner:spoonacular_get_similar_recipes_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_similar_recipes(Ctx, Id) ->
    get_similar_recipes(Ctx, Id, #{}).

-spec get_similar_recipes(ctx:ctx(), integer(), maps:map()) -> {ok, [spoonacular_get_similar_recipes_200_response_inner:spoonacular_get_similar_recipes_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_similar_recipes(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/similar"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Guess Nutrition by Dish Name
%% Estimate the macronutrients of a dish based on its title.
-spec guess_nutrition_by_dish_name(ctx:ctx(), binary()) -> {ok, spoonacular_guess_nutrition_by_dish_name_200_response:spoonacular_guess_nutrition_by_dish_name_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
guess_nutrition_by_dish_name(Ctx, Title) ->
    guess_nutrition_by_dish_name(Ctx, Title, #{}).

-spec guess_nutrition_by_dish_name(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_guess_nutrition_by_dish_name_200_response:spoonacular_guess_nutrition_by_dish_name_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
guess_nutrition_by_dish_name(Ctx, Title, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/guessNutrition"],
    QS = lists:flatten([{<<"title">>, Title}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Parse Ingredients
%% Extract an ingredient from plain text.
-spec parse_ingredients(ctx:ctx(), binary(), integer()) -> {ok, [spoonacular_parse_ingredients_200_response_inner:spoonacular_parse_ingredients_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
parse_ingredients(Ctx, IngredientList, Servings) ->
    parse_ingredients(Ctx, IngredientList, Servings, #{}).

-spec parse_ingredients(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, [spoonacular_parse_ingredients_200_response_inner:spoonacular_parse_ingredients_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
parse_ingredients(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/parseIngredients"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['language'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['includeNutrition'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Price Breakdown by ID Image
%% Visualize a recipe's price breakdown.
-spec price_breakdown_by_id_image(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
price_breakdown_by_id_image(Ctx, Id) ->
    price_breakdown_by_id_image(Ctx, Id, #{}).

-spec price_breakdown_by_id_image(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
price_breakdown_by_id_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/priceBreakdownWidget.png"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Quick Answer
%% Answer a nutrition related natural language question.
-spec quick_answer(ctx:ctx(), binary()) -> {ok, spoonacular_quick_answer_200_response:spoonacular_quick_answer_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
quick_answer(Ctx, Q) ->
    quick_answer(Ctx, Q, #{}).

-spec quick_answer(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_quick_answer_200_response:spoonacular_quick_answer_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
quick_answer(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/quickAnswer"],
    QS = lists:flatten([{<<"q">>, Q}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Recipe Nutrition by ID Image
%% Visualize a recipe's nutritional information as an image.
-spec recipe_nutrition_by_id_image(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
recipe_nutrition_by_id_image(Ctx, Id) ->
    recipe_nutrition_by_id_image(Ctx, Id, #{}).

-spec recipe_nutrition_by_id_image(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
recipe_nutrition_by_id_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/nutritionWidget.png"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Recipe Nutrition Label Image
%% Get a recipe's nutrition label as an image.
-spec recipe_nutrition_label_image(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
recipe_nutrition_label_image(Ctx, Id) ->
    recipe_nutrition_label_image(Ctx, Id, #{}).

-spec recipe_nutrition_label_image(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
recipe_nutrition_label_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/nutritionLabel.png"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['showOptionalNutrients', 'showZeroValues', 'showIngredients'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Recipe Nutrition Label Widget
%% Get a recipe's nutrition label as an HTML widget.
-spec recipe_nutrition_label_widget(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
recipe_nutrition_label_widget(Ctx, Id) ->
    recipe_nutrition_label_widget(Ctx, Id, #{}).

-spec recipe_nutrition_label_widget(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
recipe_nutrition_label_widget(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/nutritionLabel"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss', 'showOptionalNutrients', 'showZeroValues', 'showIngredients'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Recipe Taste by ID Image
%% Get a recipe's taste as an image. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
-spec recipe_taste_by_id_image(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
recipe_taste_by_id_image(Ctx, Id) ->
    recipe_taste_by_id_image(Ctx, Id, #{}).

-spec recipe_taste_by_id_image(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
recipe_taste_by_id_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/tasteWidget.png"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['normalize', 'rgb'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Recipes
%% Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
-spec search_recipes(ctx:ctx()) -> {ok, spoonacular_search_recipes_200_response:spoonacular_search_recipes_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes(Ctx) ->
    search_recipes(Ctx, #{}).

-spec search_recipes(ctx:ctx(), maps:map()) -> {ok, spoonacular_search_recipes_200_response:spoonacular_search_recipes_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/complexSearch"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['query', 'cuisine', 'excludeCuisine', 'diet', 'intolerances', 'equipment', 'includeIngredients', 'excludeIngredients', 'type', 'instructionsRequired', 'fillIngredients', 'addRecipeInformation', 'addRecipeNutrition', 'author', 'tags', 'recipeBoxId', 'titleMatch', 'maxReadyTime', 'minServings', 'maxServings', 'ignorePantry', 'sort', 'sortDirection', 'minCarbs', 'maxCarbs', 'minProtein', 'maxProtein', 'minCalories', 'maxCalories', 'minFat', 'maxFat', 'minAlcohol', 'maxAlcohol', 'minCaffeine', 'maxCaffeine', 'minCopper', 'maxCopper', 'minCalcium', 'maxCalcium', 'minCholine', 'maxCholine', 'minCholesterol', 'maxCholesterol', 'minFluoride', 'maxFluoride', 'minSaturatedFat', 'maxSaturatedFat', 'minVitaminA', 'maxVitaminA', 'minVitaminC', 'maxVitaminC', 'minVitaminD', 'maxVitaminD', 'minVitaminE', 'maxVitaminE', 'minVitaminK', 'maxVitaminK', 'minVitaminB1', 'maxVitaminB1', 'minVitaminB2', 'maxVitaminB2', 'minVitaminB5', 'maxVitaminB5', 'minVitaminB3', 'maxVitaminB3', 'minVitaminB6', 'maxVitaminB6', 'minVitaminB12', 'maxVitaminB12', 'minFiber', 'maxFiber', 'minFolate', 'maxFolate', 'minFolicAcid', 'maxFolicAcid', 'minIodine', 'maxIodine', 'minIron', 'maxIron', 'minMagnesium', 'maxMagnesium', 'minManganese', 'maxManganese', 'minPhosphorus', 'maxPhosphorus', 'minPotassium', 'maxPotassium', 'minSelenium', 'maxSelenium', 'minSodium', 'maxSodium', 'minSugar', 'maxSugar', 'minZinc', 'maxZinc', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Recipes by Ingredients
%%  Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         
-spec search_recipes_by_ingredients(ctx:ctx()) -> {ok, [spoonacular_search_recipes_by_ingredients_200_response_inner:spoonacular_search_recipes_by_ingredients_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_by_ingredients(Ctx) ->
    search_recipes_by_ingredients(Ctx, #{}).

-spec search_recipes_by_ingredients(ctx:ctx(), maps:map()) -> {ok, [spoonacular_search_recipes_by_ingredients_200_response_inner:spoonacular_search_recipes_by_ingredients_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_by_ingredients(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/findByIngredients"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['ingredients', 'number', 'ranking', 'ignorePantry'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Recipes by Nutrients
%% Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
-spec search_recipes_by_nutrients(ctx:ctx()) -> {ok, [spoonacular_search_recipes_by_nutrients_200_response_inner:spoonacular_search_recipes_by_nutrients_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_by_nutrients(Ctx) ->
    search_recipes_by_nutrients(Ctx, #{}).

-spec search_recipes_by_nutrients(ctx:ctx(), maps:map()) -> {ok, [spoonacular_search_recipes_by_nutrients_200_response_inner:spoonacular_search_recipes_by_nutrients_200_response_inner()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_by_nutrients(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/findByNutrients"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['minCarbs', 'maxCarbs', 'minProtein', 'maxProtein', 'minCalories', 'maxCalories', 'minFat', 'maxFat', 'minAlcohol', 'maxAlcohol', 'minCaffeine', 'maxCaffeine', 'minCopper', 'maxCopper', 'minCalcium', 'maxCalcium', 'minCholine', 'maxCholine', 'minCholesterol', 'maxCholesterol', 'minFluoride', 'maxFluoride', 'minSaturatedFat', 'maxSaturatedFat', 'minVitaminA', 'maxVitaminA', 'minVitaminC', 'maxVitaminC', 'minVitaminD', 'maxVitaminD', 'minVitaminE', 'maxVitaminE', 'minVitaminK', 'maxVitaminK', 'minVitaminB1', 'maxVitaminB1', 'minVitaminB2', 'maxVitaminB2', 'minVitaminB5', 'maxVitaminB5', 'minVitaminB3', 'maxVitaminB3', 'minVitaminB6', 'maxVitaminB6', 'minVitaminB12', 'maxVitaminB12', 'minFiber', 'maxFiber', 'minFolate', 'maxFolate', 'minFolicAcid', 'maxFolicAcid', 'minIodine', 'maxIodine', 'minIron', 'maxIron', 'minMagnesium', 'maxMagnesium', 'minManganese', 'maxManganese', 'minPhosphorus', 'maxPhosphorus', 'minPotassium', 'maxPotassium', 'minSelenium', 'maxSelenium', 'minSodium', 'maxSodium', 'minSugar', 'maxSugar', 'minZinc', 'maxZinc', 'offset', 'number', 'random'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Summarize Recipe
%% Automatically generate a short description that summarizes key information about the recipe.
-spec summarize_recipe(ctx:ctx(), integer()) -> {ok, spoonacular_summarize_recipe_200_response:spoonacular_summarize_recipe_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
summarize_recipe(Ctx, Id) ->
    summarize_recipe(Ctx, Id, #{}).

-spec summarize_recipe(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_summarize_recipe_200_response:spoonacular_summarize_recipe_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
summarize_recipe(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/summary"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Equipment Widget
%% Visualize the equipment used to make a recipe.
-spec visualize_equipment(ctx:ctx(), binary()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_equipment(Ctx, Instructions) ->
    visualize_equipment(Ctx, Instructions, #{}).

-spec visualize_equipment(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_equipment(Ctx, Instructions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/visualizeEquipment"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"instructions">>, Instructions}]++spoonacular_utils:optional_params(['view', 'defaultCss', 'showBacklink'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Price Breakdown Widget
%% Visualize the price breakdown of a recipe.
-spec visualize_price_breakdown(ctx:ctx(), binary(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_price_breakdown(Ctx, IngredientList, Servings) ->
    visualize_price_breakdown(Ctx, IngredientList, Servings, #{}).

-spec visualize_price_breakdown(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_price_breakdown(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/visualizePriceEstimator"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['language'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['mode', 'defaultCss', 'showBacklink'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Equipment by ID Widget
%% Visualize a recipe's equipment list.
-spec visualize_recipe_equipment_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_equipment_by_id(Ctx, Id) ->
    visualize_recipe_equipment_by_id(Ctx, Id, #{}).

-spec visualize_recipe_equipment_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_equipment_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/equipmentWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Ingredients by ID Widget
%% Visualize a recipe's ingredient list.
-spec visualize_recipe_ingredients_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_ingredients_by_id(Ctx, Id) ->
    visualize_recipe_ingredients_by_id(Ctx, Id, #{}).

-spec visualize_recipe_ingredients_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_ingredients_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/ingredientWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss', 'measure'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Recipe Nutrition Widget
%% Visualize a recipe's nutritional information as HTML including CSS.
-spec visualize_recipe_nutrition(ctx:ctx(), binary(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_nutrition(Ctx, IngredientList, Servings) ->
    visualize_recipe_nutrition(Ctx, IngredientList, Servings, #{}).

-spec visualize_recipe_nutrition(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_nutrition(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/visualizeNutrition"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['language'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['defaultCss', 'showBacklink'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Recipe Nutrition by ID Widget
%% Visualize a recipe's nutritional information as HTML including CSS.
-spec visualize_recipe_nutrition_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_nutrition_by_id(Ctx, Id) ->
    visualize_recipe_nutrition_by_id(Ctx, Id, #{}).

-spec visualize_recipe_nutrition_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_nutrition_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/nutritionWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Price Breakdown by ID Widget
%% Visualize a recipe's price breakdown.
-spec visualize_recipe_price_breakdown_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_price_breakdown_by_id(Ctx, Id) ->
    visualize_recipe_price_breakdown_by_id(Ctx, Id, #{}).

-spec visualize_recipe_price_breakdown_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_price_breakdown_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/priceBreakdownWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Recipe Taste Widget
%% Visualize a recipe's taste information as HTML including CSS. You can play around with that endpoint!
-spec visualize_recipe_taste(ctx:ctx(), binary()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_taste(Ctx, IngredientList) ->
    visualize_recipe_taste(Ctx, IngredientList, #{}).

-spec visualize_recipe_taste(ctx:ctx(), binary(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_taste(Ctx, IngredientList, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/recipes/visualizeTaste"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['language'], _OptionalParams),
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}]++spoonacular_utils:optional_params(['normalize', 'rgb'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Recipe Taste by ID Widget
%% Get a recipe's taste. The tastes supported are sweet, salty, sour, bitter, savory, and fatty.
-spec visualize_recipe_taste_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_taste_by_id(Ctx, Id) ->
    visualize_recipe_taste_by_id(Ctx, Id, #{}).

-spec visualize_recipe_taste_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_taste_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/recipes/", Id, "/tasteWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['normalize', 'rgb'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


