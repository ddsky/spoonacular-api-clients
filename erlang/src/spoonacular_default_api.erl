-module(spoonacular_default_api).

-export([add_to_meal_plan/4, add_to_meal_plan/5,
         add_to_shopping_list/4, add_to_shopping_list/5,
         analyze_a_recipe_search_query/2, analyze_a_recipe_search_query/3,
         analyze_recipe_instructions/2, analyze_recipe_instructions/3,
         autocomplete_ingredient_search/2, autocomplete_ingredient_search/3,
         autocomplete_menu_item_search/2, autocomplete_menu_item_search/3,
         autocomplete_product_search/2, autocomplete_product_search/3,
         autocomplete_recipe_search/2, autocomplete_recipe_search/3,
         classify_cuisine/3, classify_cuisine/4,
         classify_grocery_product/2, classify_grocery_product/3,
         classify_grocery_product_bulk/2, classify_grocery_product_bulk/3,
         convert_amounts/5, convert_amounts/6,
         create_recipe_card/9, create_recipe_card/10,
         delete_from_meal_plan/5, delete_from_meal_plan/6,
         delete_from_shopping_list/5, delete_from_shopping_list/6,
         detect_food_in_text/2, detect_food_in_text/3,
         extract_recipe_from_website/2, extract_recipe_from_website/3,
         generate_meal_plan/1, generate_meal_plan/2,
         generate_shopping_list/6, generate_shopping_list/7,
         get_a_random_food_joke/1, get_a_random_food_joke/2,
         get_analyzed_recipe_instructions/2, get_analyzed_recipe_instructions/3,
         get_comparable_products/2, get_comparable_products/3,
         get_conversation_suggests/2, get_conversation_suggests/3,
         get_dish_pairing_for_wine/2, get_dish_pairing_for_wine/3,
         get_ingredient_information/2, get_ingredient_information/3,
         get_ingredient_substitutes/2, get_ingredient_substitutes/3,
         get_ingredient_substitutes_by_id/2, get_ingredient_substitutes_by_id/3,
         get_meal_plan_template/4, get_meal_plan_template/5,
         get_meal_plan_templates/3, get_meal_plan_templates/4,
         get_meal_plan_week/4, get_meal_plan_week/5,
         get_menu_item_information/2, get_menu_item_information/3,
         get_product_information/2, get_product_information/3,
         get_random_food_trivia/1, get_random_food_trivia/2,
         get_random_recipes/1, get_random_recipes/2,
         get_recipe_equipment_by_id/2, get_recipe_equipment_by_id/3,
         get_recipe_information/2, get_recipe_information/3,
         get_recipe_information_bulk/2, get_recipe_information_bulk/3,
         get_recipe_ingredients_by_id/2, get_recipe_ingredients_by_id/3,
         get_recipe_nutrition_widget_by_id/2, get_recipe_nutrition_widget_by_id/3,
         get_recipe_price_breakdown_by_id/2, get_recipe_price_breakdown_by_id/3,
         get_shopping_list/3, get_shopping_list/4,
         get_similar_recipes/2, get_similar_recipes/3,
         get_wine_description/2, get_wine_description/3,
         get_wine_pairing/2, get_wine_pairing/3,
         get_wine_recommendation/2, get_wine_recommendation/3,
         guess_nutrition_by_dish_name/2, guess_nutrition_by_dish_name/3,
         image_analysis_by_url/2, image_analysis_by_url/3,
         image_classification_by_url/2, image_classification_by_url/3,
         map_ingredients_to_grocery_products/2, map_ingredients_to_grocery_products/3,
         parse_ingredients/3, parse_ingredients/4,
         quick_answer/2, quick_answer/3,
         search_custom_foods/4, search_custom_foods/5,
         search_food_videos/2, search_food_videos/3,
         search_grocery_products/2, search_grocery_products/3,
         search_grocery_products_by_upc/2, search_grocery_products_by_upc/3,
         search_menu_items/2, search_menu_items/3,
         search_recipes/2, search_recipes/3,
         search_recipes_by_ingredients/2, search_recipes_by_ingredients/3,
         search_recipes_by_nutrients/1, search_recipes_by_nutrients/2,
         search_recipes_complex/2, search_recipes_complex/3,
         search_site_content/2, search_site_content/3,
         summarize_recipe/2, summarize_recipe/3,
         talk_to_chatbot/2, talk_to_chatbot/3,
         visualize_equipment/3, visualize_equipment/4,
         visualize_ingredients/3, visualize_ingredients/4,
         visualize_menu_item_nutrition_by_id/2, visualize_menu_item_nutrition_by_id/3,
         visualize_price_breakdown/3, visualize_price_breakdown/4,
         visualize_product_nutrition_by_id/2, visualize_product_nutrition_by_id/3,
         visualize_recipe_equipment_by_id/2, visualize_recipe_equipment_by_id/3,
         visualize_recipe_ingredients_by_id/2, visualize_recipe_ingredients_by_id/3,
         visualize_recipe_nutrition/3, visualize_recipe_nutrition/4,
         visualize_recipe_nutrition_by_id/2, visualize_recipe_nutrition_by_id/3,
         visualize_recipe_price_breakdown_by_id/2, visualize_recipe_price_breakdown_by_id/3]).

-define(BASE_URL, "").

%% @doc Add to Meal Plan
%% Add an item to the user's meal plan.
-spec add_to_meal_plan(ctx:ctx(), binary(), binary(), spoonacular_inline_object_9:spoonacular_inline_object_9()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_meal_plan(Ctx, Username, Hash, SpoonacularInlineObject9) ->
    add_to_meal_plan(Ctx, Username, Hash, SpoonacularInlineObject9, #{}).

-spec add_to_meal_plan(ctx:ctx(), binary(), binary(), spoonacular_inline_object_9:spoonacular_inline_object_9(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_meal_plan(Ctx, Username, Hash, SpoonacularInlineObject9, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mealplanner/", Username, "/items"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject9,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add to Shopping List
%% Add an item to the current shopping list of a user.
-spec add_to_shopping_list(ctx:ctx(), binary(), binary(), spoonacular_inline_object_12:spoonacular_inline_object_12()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_shopping_list(Ctx, Username, Hash, SpoonacularInlineObject12) ->
    add_to_shopping_list(Ctx, Username, Hash, SpoonacularInlineObject12, #{}).

-spec add_to_shopping_list(ctx:ctx(), binary(), binary(), spoonacular_inline_object_12:spoonacular_inline_object_12(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_shopping_list(Ctx, Username, Hash, SpoonacularInlineObject12, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mealplanner/", Username, "/shopping-list/items"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject12,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Analyze a Recipe Search Query
%% Parse a recipe search query to find out its intention.
-spec analyze_a_recipe_search_query(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_a_recipe_search_query(Ctx, Q) ->
    analyze_a_recipe_search_query(Ctx, Q, #{}).

-spec analyze_a_recipe_search_query(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_a_recipe_search_query(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/queries/analyze"],
    QS = lists:flatten([{<<"q">>, Q}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Analyze Recipe Instructions
%% Extract ingredients and equipment from the recipe's instructions.
-spec analyze_recipe_instructions(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_recipe_instructions(Ctx, Instructions) ->
    analyze_recipe_instructions(Ctx, Instructions, #{}).

-spec analyze_recipe_instructions(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
analyze_recipe_instructions(Ctx, Instructions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/recipes/analyzeInstructions"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"instructions">>, Instructions}]++spoonacular_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Autocomplete Ingredient Search
%% Autocomplete the entry of an ingredient.
-spec autocomplete_ingredient_search(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_ingredient_search(Ctx, Query) ->
    autocomplete_ingredient_search(Ctx, Query, #{}).

-spec autocomplete_ingredient_search(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_ingredient_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/ingredients/autocomplete"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['number', 'metaInformation', 'intolerances'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Autocomplete Menu Item Search
%% Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
-spec autocomplete_menu_item_search(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_menu_item_search(Ctx, Query) ->
    autocomplete_menu_item_search(Ctx, Query, #{}).

-spec autocomplete_menu_item_search(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_menu_item_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/menuItems/suggest"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Autocomplete Product Search
%% Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
-spec autocomplete_product_search(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_product_search(Ctx, Query) ->
    autocomplete_product_search(Ctx, Query, #{}).

-spec autocomplete_product_search(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_product_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/suggest"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Autocomplete Recipe Search
%% Autocomplete a partial input to suggest possible recipe names.
-spec autocomplete_recipe_search(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_recipe_search(Ctx, Query) ->
    autocomplete_recipe_search(Ctx, Query, #{}).

-spec autocomplete_recipe_search(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_recipe_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/autocomplete"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Classify Cuisine
%% Classify the recipe's cuisine.
-spec classify_cuisine(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_cuisine(Ctx, Title, IngredientList) ->
    classify_cuisine(Ctx, Title, IngredientList, #{}).

-spec classify_cuisine(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_cuisine(Ctx, Title, IngredientList, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/recipes/cuisine"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"title">>, Title}, {<<"ingredientList">>, IngredientList}]++spoonacular_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Classify Grocery Product
%% This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
-spec classify_grocery_product(ctx:ctx(), spoonacular_inline_object_8:spoonacular_inline_object_8()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_grocery_product(Ctx, SpoonacularInlineObject8) ->
    classify_grocery_product(Ctx, SpoonacularInlineObject8, #{}).

-spec classify_grocery_product(ctx:ctx(), spoonacular_inline_object_8:spoonacular_inline_object_8(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_grocery_product(Ctx, SpoonacularInlineObject8, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/food/products/classify"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['locale'], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject8,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Classify Grocery Product Bulk
%% Provide a set of product jsons, get back classified products.
-spec classify_grocery_product_bulk(ctx:ctx(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_grocery_product_bulk(Ctx, Body) ->
    classify_grocery_product_bulk(Ctx, Body, #{}).

-spec classify_grocery_product_bulk(ctx:ctx(), maps:map(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_grocery_product_bulk(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/food/products/classifyBatch"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['locale'], _OptionalParams),
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Convert Amounts
%% Convert amounts like \"2 cups of flour to grams\".
-spec convert_amounts(ctx:ctx(), binary(), integer(), binary(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
convert_amounts(Ctx, IngredientName, SourceAmount, SourceUnit, TargetUnit) ->
    convert_amounts(Ctx, IngredientName, SourceAmount, SourceUnit, TargetUnit, #{}).

-spec convert_amounts(ctx:ctx(), binary(), integer(), binary(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
convert_amounts(Ctx, IngredientName, SourceAmount, SourceUnit, TargetUnit, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/convert"],
    QS = lists:flatten([{<<"ingredientName">>, IngredientName}, {<<"sourceAmount">>, SourceAmount}, {<<"sourceUnit">>, SourceUnit}, {<<"targetUnit">>, TargetUnit}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create Recipe Card
%% Generate a recipe card for a recipe.
-spec create_recipe_card(ctx:ctx(), binary(), binary(), binary(), binary(), integer(), integer(), binary(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
create_recipe_card(Ctx, Title, Image, Ingredients, Instructions, ReadyInMinutes, Servings, Mask, BackgroundImage) ->
    create_recipe_card(Ctx, Title, Image, Ingredients, Instructions, ReadyInMinutes, Servings, Mask, BackgroundImage, #{}).

-spec create_recipe_card(ctx:ctx(), binary(), binary(), binary(), binary(), integer(), integer(), binary(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
create_recipe_card(Ctx, Title, Image, Ingredients, Instructions, ReadyInMinutes, Servings, Mask, BackgroundImage, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/recipes/visualizeRecipe"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"title">>, Title}, {<<"image">>, Image}, {<<"ingredients">>, Ingredients}, {<<"instructions">>, Instructions}, {<<"readyInMinutes">>, ReadyInMinutes}, {<<"servings">>, Servings}, {<<"mask">>, Mask}, {<<"backgroundImage">>, BackgroundImage}]++spoonacular_utils:optional_params(['author', 'backgroundColor', 'fontColor', 'source'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete from Meal Plan
%% Delete an item from the user's meal plan.
-spec delete_from_meal_plan(ctx:ctx(), binary(), integer(), binary(), spoonacular_inline_object_10:spoonacular_inline_object_10()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_meal_plan(Ctx, Username, Id, Hash, SpoonacularInlineObject10) ->
    delete_from_meal_plan(Ctx, Username, Id, Hash, SpoonacularInlineObject10, #{}).

-spec delete_from_meal_plan(ctx:ctx(), binary(), integer(), binary(), spoonacular_inline_object_10:spoonacular_inline_object_10(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_meal_plan(Ctx, Username, Id, Hash, SpoonacularInlineObject10, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/mealplanner/", Username, "/items/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject10,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete from Shopping List
%% Delete an item from the current shopping list of the user.
-spec delete_from_shopping_list(ctx:ctx(), binary(), integer(), binary(), spoonacular_inline_object_13:spoonacular_inline_object_13()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_shopping_list(Ctx, Username, Id, Hash, SpoonacularInlineObject13) ->
    delete_from_shopping_list(Ctx, Username, Id, Hash, SpoonacularInlineObject13, #{}).

-spec delete_from_shopping_list(ctx:ctx(), binary(), integer(), binary(), spoonacular_inline_object_13:spoonacular_inline_object_13(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_shopping_list(Ctx, Username, Id, Hash, SpoonacularInlineObject13, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/mealplanner/", Username, "/shopping-list/items/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject13,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Detect Food in Text
%% Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
-spec detect_food_in_text(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
detect_food_in_text(Ctx, Text) ->
    detect_food_in_text(Ctx, Text, #{}).

-spec detect_food_in_text(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
detect_food_in_text(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/food/detect"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"text">>, Text}]++spoonacular_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract Recipe from Website
%% This endpoint lets you extract recipe data such as title, ingredients, and instructions from any properly formatted Website.
-spec extract_recipe_from_website(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
extract_recipe_from_website(Ctx, Url) ->
    extract_recipe_from_website(Ctx, Url, #{}).

-spec extract_recipe_from_website(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
extract_recipe_from_website(Ctx, Url, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/extract"],
    QS = lists:flatten([{<<"url">>, Url}])++spoonacular_utils:optional_params(['forceExtraction', 'analyze'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate Meal Plan
%% Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
-spec generate_meal_plan(ctx:ctx()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_meal_plan(Ctx) ->
    generate_meal_plan(Ctx, #{}).

-spec generate_meal_plan(ctx:ctx(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_meal_plan(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mealplanner/generate"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['timeFrame', 'targetCalories', 'diet', 'exclude'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate Shopping List
%% Generate the shopping list for a user from the meal planner in a given time frame.
-spec generate_shopping_list(ctx:ctx(), binary(), binary(), binary(), binary(), spoonacular_inline_object_11:spoonacular_inline_object_11()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash, SpoonacularInlineObject11) ->
    generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash, SpoonacularInlineObject11, #{}).

-spec generate_shopping_list(ctx:ctx(), binary(), binary(), binary(), binary(), spoonacular_inline_object_11:spoonacular_inline_object_11(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash, SpoonacularInlineObject11, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mealplanner/", Username, "/shopping-list/", StartDate, "/", EndDate, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject11,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a Random Food Joke
%% Get a random joke that is related to food. Caution: this is an endpoint for adults!
-spec get_a_random_food_joke(ctx:ctx()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_a_random_food_joke(Ctx) ->
    get_a_random_food_joke(Ctx, #{}).

-spec get_a_random_food_joke(ctx:ctx(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_a_random_food_joke(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/jokes/random"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Analyzed Recipe Instructions
%% Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and equipment required.
-spec get_analyzed_recipe_instructions(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_analyzed_recipe_instructions(Ctx, Id) ->
    get_analyzed_recipe_instructions(Ctx, Id, #{}).

-spec get_analyzed_recipe_instructions(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_analyzed_recipe_instructions(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/analyzedInstructions"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['stepBreakdown'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Comparable Products
%% Find comparable products to the given one.
-spec get_comparable_products(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_comparable_products(Ctx, Upc) ->
    get_comparable_products(Ctx, Upc, #{}).

-spec get_comparable_products(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_comparable_products(Ctx, Upc, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/upc/", Upc, "/comparable"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Conversation Suggests
%% This endpoint returns suggestions for things the user can say or ask the chatbot.
-spec get_conversation_suggests(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_conversation_suggests(Ctx, Query) ->
    get_conversation_suggests(Ctx, Query, #{}).

-spec get_conversation_suggests(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_conversation_suggests(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/converse/suggest"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Dish Pairing for Wine
%% Find a dish that goes well with a given wine.
-spec get_dish_pairing_for_wine(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_dish_pairing_for_wine(Ctx, Wine) ->
    get_dish_pairing_for_wine(Ctx, Wine, #{}).

-spec get_dish_pairing_for_wine(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_dish_pairing_for_wine(Ctx, Wine, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/wine/dishes"],
    QS = lists:flatten([{<<"wine">>, Wine}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Ingredient Information
%% Use an ingredient id to get all available information about an ingredient, such as its image and supermarket aisle.
-spec get_ingredient_information(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_information(Ctx, Id) ->
    get_ingredient_information(Ctx, Id, #{}).

-spec get_ingredient_information(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_information(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/ingredients/", Id, "/information"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['amount', 'unit'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Ingredient Substitutes
%% Search for substitutes for a given ingredient.
-spec get_ingredient_substitutes(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_substitutes(Ctx, IngredientName) ->
    get_ingredient_substitutes(Ctx, IngredientName, #{}).

-spec get_ingredient_substitutes(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_substitutes(Ctx, IngredientName, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/ingredients/substitutes"],
    QS = lists:flatten([{<<"ingredientName">>, IngredientName}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Ingredient Substitutes by ID
%% Search for substitutes for a given ingredient.
-spec get_ingredient_substitutes_by_id(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_substitutes_by_id(Ctx, Id) ->
    get_ingredient_substitutes_by_id(Ctx, Id, #{}).

-spec get_ingredient_substitutes_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_ingredient_substitutes_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/ingredients/", Id, "/substitutes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Meal Plan Template
%% Get information about a meal plan template.
-spec get_meal_plan_template(ctx:ctx(), binary(), integer(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_template(Ctx, Username, Id, Hash) ->
    get_meal_plan_template(Ctx, Username, Id, Hash, #{}).

-spec get_meal_plan_template(ctx:ctx(), binary(), integer(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_template(Ctx, Username, Id, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mealplanner/", Username, "/templates/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Meal Plan Templates
%% Get meal plan templates from user or public ones.
-spec get_meal_plan_templates(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_templates(Ctx, Username, Hash) ->
    get_meal_plan_templates(Ctx, Username, Hash, #{}).

-spec get_meal_plan_templates(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_templates(Ctx, Username, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mealplanner/", Username, "/templates"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Meal Plan Week
%% Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
-spec get_meal_plan_week(ctx:ctx(), binary(), binary(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_week(Ctx, Username, StartDate, Hash) ->
    get_meal_plan_week(Ctx, Username, StartDate, Hash, #{}).

-spec get_meal_plan_week(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_week(Ctx, Username, StartDate, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mealplanner/", Username, "/week/", StartDate, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Menu Item Information
%% Use a menu item id to get all available information about a menu item, such as nutrition.
-spec get_menu_item_information(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_menu_item_information(Ctx, Id) ->
    get_menu_item_information(Ctx, Id, #{}).

-spec get_menu_item_information(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_menu_item_information(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/menuItems/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Product Information
%% Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
-spec get_product_information(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_product_information(Ctx, Id) ->
    get_product_information(Ctx, Id, #{}).

-spec get_product_information(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_product_information(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Random Food Trivia
%% Returns random food trivia.
-spec get_random_food_trivia(ctx:ctx()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_random_food_trivia(Ctx) ->
    get_random_food_trivia(Ctx, #{}).

-spec get_random_food_trivia(ctx:ctx(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_random_food_trivia(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/trivia/random"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Random Recipes
%% Find random (popular) recipes. If you need to filter recipes by diet, nutrition etc. you might want to consider using the complex recipe search endpoint and set the sort request parameter to random.
-spec get_random_recipes(ctx:ctx()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_random_recipes(Ctx) ->
    get_random_recipes(Ctx, #{}).

-spec get_random_recipes(ctx:ctx(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_random_recipes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/random"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['limitLicense', 'tags', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Recipe Equipment by ID
%% Get a recipe's equipment list.
-spec get_recipe_equipment_by_id(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_equipment_by_id(Ctx, Id) ->
    get_recipe_equipment_by_id(Ctx, Id, #{}).

-spec get_recipe_equipment_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_equipment_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/equipmentWidget.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Recipe Information
%% Use a recipe id to get full information about a recipe, such as ingredients, nutrition, diet and allergen information, etc.
-spec get_recipe_information(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_information(Ctx, Id) ->
    get_recipe_information(Ctx, Id, #{}).

-spec get_recipe_information(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_information(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/information"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['includeNutrition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Recipe Information Bulk
%% Get information about multiple recipes at once. This is equivalent to calling the Get Recipe Information endpoint multiple times, but faster.
-spec get_recipe_information_bulk(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_information_bulk(Ctx, Ids) ->
    get_recipe_information_bulk(Ctx, Ids, #{}).

-spec get_recipe_information_bulk(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_information_bulk(Ctx, Ids, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/informationBulk"],
    QS = lists:flatten([{<<"ids">>, Ids}])++spoonacular_utils:optional_params(['includeNutrition'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Recipe Ingredients by ID
%% Get a recipe's ingredient list.
-spec get_recipe_ingredients_by_id(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_ingredients_by_id(Ctx, Id) ->
    get_recipe_ingredients_by_id(Ctx, Id, #{}).

-spec get_recipe_ingredients_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_ingredients_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/ingredientWidget.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Recipe Nutrition Widget by ID
%% Get a recipe's nutrition widget data.
-spec get_recipe_nutrition_widget_by_id(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_nutrition_widget_by_id(Ctx, Id) ->
    get_recipe_nutrition_widget_by_id(Ctx, Id, #{}).

-spec get_recipe_nutrition_widget_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_nutrition_widget_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/nutritionWidget.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Recipe Price Breakdown by ID
%% Get a recipe's price breakdown data.
-spec get_recipe_price_breakdown_by_id(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_price_breakdown_by_id(Ctx, Id) ->
    get_recipe_price_breakdown_by_id(Ctx, Id, #{}).

-spec get_recipe_price_breakdown_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_recipe_price_breakdown_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/priceBreakdownWidget.json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Shopping List
%% Get the current shopping list for the given user.
-spec get_shopping_list(ctx:ctx(), binary(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_shopping_list(Ctx, Username, Hash) ->
    get_shopping_list(Ctx, Username, Hash, #{}).

-spec get_shopping_list(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_shopping_list(Ctx, Username, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/mealplanner/", Username, "/shopping-list"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Similar Recipes
%% Find recipes which are similar to the given one.
-spec get_similar_recipes(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_similar_recipes(Ctx, Id) ->
    get_similar_recipes(Ctx, Id, #{}).

-spec get_similar_recipes(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_similar_recipes(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/similar"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['number', 'limitLicense'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Wine Description
%% Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".
-spec get_wine_description(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_wine_description(Ctx, Wine) ->
    get_wine_description(Ctx, Wine, #{}).

-spec get_wine_description(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_wine_description(Ctx, Wine, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/wine/description"],
    QS = lists:flatten([{<<"wine">>, Wine}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Wine Pairing
%% Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").
-spec get_wine_pairing(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_wine_pairing(Ctx, Food) ->
    get_wine_pairing(Ctx, Food, #{}).

-spec get_wine_pairing(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_wine_pairing(Ctx, Food, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/wine/pairing"],
    QS = lists:flatten([{<<"food">>, Food}])++spoonacular_utils:optional_params(['maxPrice'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Wine Recommendation
%% Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".
-spec get_wine_recommendation(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_wine_recommendation(Ctx, Wine) ->
    get_wine_recommendation(Ctx, Wine, #{}).

-spec get_wine_recommendation(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_wine_recommendation(Ctx, Wine, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/wine/recommendation"],
    QS = lists:flatten([{<<"wine">>, Wine}])++spoonacular_utils:optional_params(['maxPrice', 'minRating', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Guess Nutrition by Dish Name
%% Estimate the macronutrients of a dish based on its title.
-spec guess_nutrition_by_dish_name(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
guess_nutrition_by_dish_name(Ctx, Title) ->
    guess_nutrition_by_dish_name(Ctx, Title, #{}).

-spec guess_nutrition_by_dish_name(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
guess_nutrition_by_dish_name(Ctx, Title, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/guessNutrition"],
    QS = lists:flatten([{<<"title">>, Title}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Image Analysis by URL
%% Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes. You can play around with that endpoint!
-spec image_analysis_by_url(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
image_analysis_by_url(Ctx, ImageUrl) ->
    image_analysis_by_url(Ctx, ImageUrl, #{}).

-spec image_analysis_by_url(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
image_analysis_by_url(Ctx, ImageUrl, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/images/analyze"],
    QS = lists:flatten([{<<"imageUrl">>, ImageUrl}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Image Classification by URL
%% Classify a food image. You can play around with that endpoint!
-spec image_classification_by_url(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
image_classification_by_url(Ctx, ImageUrl) ->
    image_classification_by_url(Ctx, ImageUrl, #{}).

-spec image_classification_by_url(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
image_classification_by_url(Ctx, ImageUrl, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/images/classify"],
    QS = lists:flatten([{<<"imageUrl">>, ImageUrl}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Map Ingredients to Grocery Products
%% Map a set of ingredients to products you can buy in the grocery store.
-spec map_ingredients_to_grocery_products(ctx:ctx(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
map_ingredients_to_grocery_products(Ctx, Body) ->
    map_ingredients_to_grocery_products(Ctx, Body, #{}).

-spec map_ingredients_to_grocery_products(ctx:ctx(), maps:map(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
map_ingredients_to_grocery_products(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/food/ingredients/map"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Parse Ingredients
%% Extract an ingredient from plain text.
-spec parse_ingredients(ctx:ctx(), binary(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
parse_ingredients(Ctx, IngredientList, Servings) ->
    parse_ingredients(Ctx, IngredientList, Servings, #{}).

-spec parse_ingredients(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
parse_ingredients(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/recipes/parseIngredients"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['includeNutrition'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Quick Answer
%% Answer a nutrition related natural language question.
-spec quick_answer(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
quick_answer(Ctx, Q) ->
    quick_answer(Ctx, Q, #{}).

-spec quick_answer(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
quick_answer(Ctx, Q, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/quickAnswer"],
    QS = lists:flatten([{<<"q">>, Q}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Custom Foods
%% Search custom foods in a user's account.
-spec search_custom_foods(ctx:ctx(), binary(), binary(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_custom_foods(Ctx, Query, Username, Hash) ->
    search_custom_foods(Ctx, Query, Username, Hash, #{}).

-spec search_custom_foods(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_custom_foods(Ctx, Query, Username, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/customFoods/search"],
    QS = lists:flatten([{<<"query">>, Query}, {<<"username">>, Username}, {<<"hash">>, Hash}])++spoonacular_utils:optional_params(['offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Food Videos
%% Find recipe and other food related videos.
-spec search_food_videos(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_food_videos(Ctx, Query) ->
    search_food_videos(Ctx, Query, #{}).

-spec search_food_videos(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_food_videos(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/videos/search"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['type', 'cuisine', 'diet', 'includeIngredients', 'excludeIngredients', 'minLength', 'maxLength', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Grocery Products
%% Search packaged food products, such as frozen pizza or Greek yogurt.
-spec search_grocery_products(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_grocery_products(Ctx, Query) ->
    search_grocery_products(Ctx, Query, #{}).

-spec search_grocery_products(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_grocery_products(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/search"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['minCalories', 'maxCalories', 'minCarbs', 'maxCarbs', 'minProtein', 'maxProtein', 'minFat', 'maxFat', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Grocery Products by UPC
%% Get information about a packaged food using its UPC.
-spec search_grocery_products_by_upc(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_grocery_products_by_upc(Ctx, Upc) ->
    search_grocery_products_by_upc(Ctx, Upc, #{}).

-spec search_grocery_products_by_upc(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_grocery_products_by_upc(Ctx, Upc, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/upc/", Upc, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Menu Items
%% Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
-spec search_menu_items(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_menu_items(Ctx, Query) ->
    search_menu_items(Ctx, Query, #{}).

-spec search_menu_items(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_menu_items(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/menuItems/search"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['minCalories', 'maxCalories', 'minCarbs', 'maxCarbs', 'minProtein', 'maxProtein', 'minFat', 'maxFat', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Recipes
%% Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \"Search Recipes Complex\" endpoint for much more flexibility.
-spec search_recipes(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes(Ctx, Query) ->
    search_recipes(Ctx, Query, #{}).

-spec search_recipes(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/search"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['cuisine', 'diet', 'excludeIngredients', 'intolerances', 'offset', 'number', 'limitLicense', 'instructionsRequired'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Recipes by Ingredients
%%              Ever wondered what recipes you can cook with the ingredients you have in your fridge or pantry? This endpoint lets you find recipes that either maximize the usage of ingredients you have at hand (pre shopping) or minimize the ingredients that you don't currently have (post shopping).         
-spec search_recipes_by_ingredients(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_by_ingredients(Ctx, Ingredients) ->
    search_recipes_by_ingredients(Ctx, Ingredients, #{}).

-spec search_recipes_by_ingredients(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_by_ingredients(Ctx, Ingredients, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/findByIngredients"],
    QS = lists:flatten([{<<"ingredients">>, Ingredients}])++spoonacular_utils:optional_params(['number', 'limitLicense', 'ranking', 'ignorePantry'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Recipes by Nutrients
%% Find a set of recipes that adhere to the given nutritional limits. You may set limits for macronutrients (calories, protein, fat, and carbohydrate) and/or many micronutrients.
-spec search_recipes_by_nutrients(ctx:ctx()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_by_nutrients(Ctx) ->
    search_recipes_by_nutrients(Ctx, #{}).

-spec search_recipes_by_nutrients(ctx:ctx(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_by_nutrients(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/findByNutrients"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['minCarbs', 'maxCarbs', 'minProtein', 'maxProtein', 'minCalories', 'maxCalories', 'minFat', 'maxFat', 'minAlcohol', 'maxAlcohol', 'minCaffeine', 'maxCaffeine', 'minCopper', 'maxCopper', 'minCalcium', 'maxCalcium', 'minCholine', 'maxCholine', 'minCholesterol', 'maxCholesterol', 'minFluoride', 'maxFluoride', 'minSaturatedFat', 'maxSaturatedFat', 'minVitaminA', 'maxVitaminA', 'minVitaminC', 'maxVitaminC', 'minVitaminD', 'maxVitaminD', 'minVitaminE', 'maxVitaminE', 'minVitaminK', 'maxVitaminK', 'minVitaminB1', 'maxVitaminB1', 'minVitaminB2', 'maxVitaminB2', 'minVitaminB5', 'maxVitaminB5', 'minVitaminB3', 'maxVitaminB3', 'minVitaminB6', 'maxVitaminB6', 'minVitaminB12', 'maxVitaminB12', 'minFiber', 'maxFiber', 'minFolate', 'maxFolate', 'minFolicAcid', 'maxFolicAcid', 'minIodine', 'maxIodine', 'minIron', 'maxIron', 'minMagnesium', 'maxMagnesium', 'minManganese', 'maxManganese', 'minPhosphorus', 'maxPhosphorus', 'minPotassium', 'maxPotassium', 'minSelenium', 'maxSelenium', 'minSodium', 'maxSodium', 'minSugar', 'maxSugar', 'minZinc', 'maxZinc', 'offset', 'number', 'random', 'limitLicense'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Recipes Complex
%% Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: This method combines searching by query, by ingredients, and by nutrients into one endpoint.
-spec search_recipes_complex(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_complex(Ctx, Query) ->
    search_recipes_complex(Ctx, Query, #{}).

-spec search_recipes_complex(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_recipes_complex(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/complexSearch"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['cuisine', 'excludeCuisine', 'diet', 'intolerances', 'equipment', 'includeIngredients', 'excludeIngredients', 'type', 'instructionsRequired', 'fillIngredients', 'addRecipeInformation', 'addRecipeNutrition', 'author', 'tags', 'recipeBoxId', 'titleMatch', 'maxReadyTime', 'ignorePantry', 'sort', 'sortDirection', 'minCarbs', 'maxCarbs', 'minProtein', 'maxProtein', 'minCalories', 'maxCalories', 'minFat', 'maxFat', 'minAlcohol', 'maxAlcohol', 'minCaffeine', 'maxCaffeine', 'minCopper', 'maxCopper', 'minCalcium', 'maxCalcium', 'minCholine', 'maxCholine', 'minCholesterol', 'maxCholesterol', 'minFluoride', 'maxFluoride', 'minSaturatedFat', 'maxSaturatedFat', 'minVitaminA', 'maxVitaminA', 'minVitaminC', 'maxVitaminC', 'minVitaminD', 'maxVitaminD', 'minVitaminE', 'maxVitaminE', 'minVitaminK', 'maxVitaminK', 'minVitaminB1', 'maxVitaminB1', 'minVitaminB2', 'maxVitaminB2', 'minVitaminB5', 'maxVitaminB5', 'minVitaminB3', 'maxVitaminB3', 'minVitaminB6', 'maxVitaminB6', 'minVitaminB12', 'maxVitaminB12', 'minFiber', 'maxFiber', 'minFolate', 'maxFolate', 'minFolicAcid', 'maxFolicAcid', 'minIodine', 'maxIodine', 'minIron', 'maxIron', 'minMagnesium', 'maxMagnesium', 'minManganese', 'maxManganese', 'minPhosphorus', 'maxPhosphorus', 'minPotassium', 'maxPotassium', 'minSelenium', 'maxSelenium', 'minSodium', 'maxSodium', 'minSugar', 'maxSugar', 'minZinc', 'maxZinc', 'offset', 'number', 'limitLicense'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Site Content
%% Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
-spec search_site_content(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_site_content(Ctx, Query) ->
    search_site_content(Ctx, Query, #{}).

-spec search_site_content(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_site_content(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/site/search"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Summarize Recipe
%% Automatically generate a short description that summarizes key information about the recipe.
-spec summarize_recipe(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
summarize_recipe(Ctx, Id) ->
    summarize_recipe(Ctx, Id, #{}).

-spec summarize_recipe(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
summarize_recipe(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/summary"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Talk to Chatbot
%% This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
-spec talk_to_chatbot(ctx:ctx(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
talk_to_chatbot(Ctx, Text) ->
    talk_to_chatbot(Ctx, Text, #{}).

-spec talk_to_chatbot(ctx:ctx(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
talk_to_chatbot(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/converse"],
    QS = lists:flatten([{<<"text">>, Text}])++spoonacular_utils:optional_params(['contextId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Equipment
%% Visualize the equipment used to make a recipe.
-spec visualize_equipment(ctx:ctx(), binary(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_equipment(Ctx, IngredientList, Servings) ->
    visualize_equipment(Ctx, IngredientList, Servings, #{}).

-spec visualize_equipment(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_equipment(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/recipes/visualizeEquipment"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['view', 'defaultCss', 'showBacklink'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Ingredients
%% Visualize ingredients of a recipe.
-spec visualize_ingredients(ctx:ctx(), binary(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_ingredients(Ctx, IngredientList, Servings) ->
    visualize_ingredients(Ctx, IngredientList, Servings, #{}).

-spec visualize_ingredients(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_ingredients(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/recipes/visualizeIngredients"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['measure', 'view', 'defaultCss', 'showBacklink'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Menu Item Nutrition by ID
%% Visualize a menu item's nutritional information as HTML including CSS.
-spec visualize_menu_item_nutrition_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_menu_item_nutrition_by_id(Ctx, Id) ->
    visualize_menu_item_nutrition_by_id(Ctx, Id, #{}).

-spec visualize_menu_item_nutrition_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_menu_item_nutrition_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/menuItems/", Id, "/nutritionWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Price Breakdown
%% Visualize the price breakdown of a recipe.
-spec visualize_price_breakdown(ctx:ctx(), binary(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_price_breakdown(Ctx, IngredientList, Servings) ->
    visualize_price_breakdown(Ctx, IngredientList, Servings, #{}).

-spec visualize_price_breakdown(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_price_breakdown(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/recipes/visualizePriceEstimator"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['mode', 'defaultCss', 'showBacklink'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Product Nutrition by ID
%% Visualize a product's nutritional information as HTML including CSS.
-spec visualize_product_nutrition_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_product_nutrition_by_id(Ctx, Id) ->
    visualize_product_nutrition_by_id(Ctx, Id, #{}).

-spec visualize_product_nutrition_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_product_nutrition_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/", Id, "/nutritionWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Recipe Equipment by ID
%% Visualize a recipe's equipment list.
-spec visualize_recipe_equipment_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_equipment_by_id(Ctx, Id) ->
    visualize_recipe_equipment_by_id(Ctx, Id, #{}).

-spec visualize_recipe_equipment_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_equipment_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/equipmentWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Recipe Ingredients by ID
%% Visualize a recipe's ingredient list.
-spec visualize_recipe_ingredients_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_ingredients_by_id(Ctx, Id) ->
    visualize_recipe_ingredients_by_id(Ctx, Id, #{}).

-spec visualize_recipe_ingredients_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_ingredients_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/ingredientWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Recipe Nutrition
%% Visualize a recipe's nutritional information as HTML including CSS
-spec visualize_recipe_nutrition(ctx:ctx(), binary(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_nutrition(Ctx, IngredientList, Servings) ->
    visualize_recipe_nutrition(Ctx, IngredientList, Servings, #{}).

-spec visualize_recipe_nutrition(ctx:ctx(), binary(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_nutrition(Ctx, IngredientList, Servings, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/recipes/visualizeNutrition"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"ingredientList">>, IngredientList}, {<<"servings">>, Servings}]++spoonacular_utils:optional_params(['defaultCss', 'showBacklink'], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Recipe Nutrition by ID
%% Visualize a recipe's nutritional information as HTML including CSS.
-spec visualize_recipe_nutrition_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_nutrition_by_id(Ctx, Id) ->
    visualize_recipe_nutrition_by_id(Ctx, Id, #{}).

-spec visualize_recipe_nutrition_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_nutrition_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/nutritionWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Visualize Recipe Price Breakdown by ID
%% Visualize a recipe's price breakdown.
-spec visualize_recipe_price_breakdown_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_price_breakdown_by_id(Ctx, Id) ->
    visualize_recipe_price_breakdown_by_id(Ctx, Id, #{}).

-spec visualize_recipe_price_breakdown_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_recipe_price_breakdown_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/recipes/", Id, "/priceBreakdownWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


