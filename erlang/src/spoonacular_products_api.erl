-module(spoonacular_products_api).

-export([autocomplete_product_search/2, autocomplete_product_search/3,
         classify_grocery_product/2, classify_grocery_product/3,
         classify_grocery_product_bulk/2, classify_grocery_product_bulk/3,
         get_comparable_products/2, get_comparable_products/3,
         get_product_information/2, get_product_information/3,
         product_nutrition_by_id_image/2, product_nutrition_by_id_image/3,
         product_nutrition_label_image/2, product_nutrition_label_image/3,
         product_nutrition_label_widget/2, product_nutrition_label_widget/3,
         search_grocery_products/1, search_grocery_products/2,
         search_grocery_products_by_upc/2, search_grocery_products_by_upc/3,
         visualize_product_nutrition_by_id/2, visualize_product_nutrition_by_id/3]).

-define(BASE_URL, "").

%% @doc Autocomplete Product Search
%% Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
-spec autocomplete_product_search(ctx:ctx(), binary()) -> {ok, spoonacular_inline_response_200_32:spoonacular_inline_response_200_32(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_product_search(Ctx, Query) ->
    autocomplete_product_search(Ctx, Query, #{}).

-spec autocomplete_product_search(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_inline_response_200_32:spoonacular_inline_response_200_32(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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

%% @doc Classify Grocery Product
%% This endpoint allows you to match a packaged food to a basic category, e.g. a specific brand of milk to the category milk.
-spec classify_grocery_product(ctx:ctx(), spoonacular_inline_object_1:spoonacular_inline_object_1()) -> {ok, spoonacular_inline_response_200_33:spoonacular_inline_response_200_33(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_grocery_product(Ctx, SpoonacularInlineObject1) ->
    classify_grocery_product(Ctx, SpoonacularInlineObject1, #{}).

-spec classify_grocery_product(ctx:ctx(), spoonacular_inline_object_1:spoonacular_inline_object_1(), maps:map()) -> {ok, spoonacular_inline_response_200_33:spoonacular_inline_response_200_33(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_grocery_product(Ctx, SpoonacularInlineObject1, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/food/products/classify"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['locale'], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject1,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Classify Grocery Product Bulk
%% Provide a set of product jsons, get back classified products.
-spec classify_grocery_product_bulk(ctx:ctx(), list()) -> {ok, [spoonacular_inline_response_200_33:spoonacular_inline_response_200_33()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_grocery_product_bulk(Ctx, SpoonacularInlineObjectArray) ->
    classify_grocery_product_bulk(Ctx, SpoonacularInlineObjectArray, #{}).

-spec classify_grocery_product_bulk(ctx:ctx(), list(), maps:map()) -> {ok, [spoonacular_inline_response_200_33:spoonacular_inline_response_200_33()], spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
classify_grocery_product_bulk(Ctx, SpoonacularInlineObjectArray, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/food/products/classifyBatch"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['locale'], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObjectArray,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Comparable Products
%% Find comparable products to the given one.
-spec get_comparable_products(ctx:ctx(), integer()) -> {ok, spoonacular_inline_response_200_31:spoonacular_inline_response_200_31(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_comparable_products(Ctx, Upc) ->
    get_comparable_products(Ctx, Upc, #{}).

-spec get_comparable_products(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_inline_response_200_31:spoonacular_inline_response_200_31(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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

%% @doc Get Product Information
%% Use a product id to get full information about a product, such as ingredients, nutrition, etc. The nutritional information is per serving.
-spec get_product_information(ctx:ctx(), integer()) -> {ok, spoonacular_inline_response_200_30:spoonacular_inline_response_200_30(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_product_information(Ctx, Id) ->
    get_product_information(Ctx, Id, #{}).

-spec get_product_information(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_inline_response_200_30:spoonacular_inline_response_200_30(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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

%% @doc Product Nutrition by ID Image
%% Visualize a product's nutritional information as an image.
-spec product_nutrition_by_id_image(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
product_nutrition_by_id_image(Ctx, Id) ->
    product_nutrition_by_id_image(Ctx, Id, #{}).

-spec product_nutrition_by_id_image(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
product_nutrition_by_id_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/", Id, "/nutritionWidget.png"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Product Nutrition Label Image
%% Get a product's nutrition label as an image.
-spec product_nutrition_label_image(ctx:ctx(), integer()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
product_nutrition_label_image(Ctx, Id) ->
    product_nutrition_label_image(Ctx, Id, #{}).

-spec product_nutrition_label_image(ctx:ctx(), integer(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
product_nutrition_label_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/", Id, "/nutritionLabel.png"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['showOptionalNutrients', 'showZeroValues', 'showIngredients'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Product Nutrition Label Widget
%% Get a product's nutrition label as an HTML widget.
-spec product_nutrition_label_widget(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
product_nutrition_label_widget(Ctx, Id) ->
    product_nutrition_label_widget(Ctx, Id, #{}).

-spec product_nutrition_label_widget(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
product_nutrition_label_widget(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/", Id, "/nutritionLabel"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss', 'showOptionalNutrients', 'showZeroValues', 'showIngredients'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Grocery Products
%% Search packaged food products, such as frozen pizza or Greek yogurt.
-spec search_grocery_products(ctx:ctx()) -> {ok, spoonacular_inline_response_200_27:spoonacular_inline_response_200_27(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_grocery_products(Ctx) ->
    search_grocery_products(Ctx, #{}).

-spec search_grocery_products(ctx:ctx(), maps:map()) -> {ok, spoonacular_inline_response_200_27:spoonacular_inline_response_200_27(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_grocery_products(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/food/products/search"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['query', 'minCalories', 'maxCalories', 'minCarbs', 'maxCarbs', 'minProtein', 'maxProtein', 'minFat', 'maxFat', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Grocery Products by UPC
%% Get information about a packaged food using its UPC.
-spec search_grocery_products_by_upc(ctx:ctx(), integer()) -> {ok, spoonacular_inline_response_200_28:spoonacular_inline_response_200_28(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_grocery_products_by_upc(Ctx, Upc) ->
    search_grocery_products_by_upc(Ctx, Upc, #{}).

-spec search_grocery_products_by_upc(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_inline_response_200_28:spoonacular_inline_response_200_28(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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

%% @doc Product Nutrition by ID Widget
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
    Headers = []++spoonacular_utils:optional_params(['Accept'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


