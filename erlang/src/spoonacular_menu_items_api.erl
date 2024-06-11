-module(spoonacular_menu_items_api).

-export([autocomplete_menu_item_search/2, autocomplete_menu_item_search/3,
         get_menu_item_information/2, get_menu_item_information/3,
         menu_item_nutrition_by_id_image/2, menu_item_nutrition_by_id_image/3,
         menu_item_nutrition_label_image/2, menu_item_nutrition_label_image/3,
         menu_item_nutrition_label_widget/2, menu_item_nutrition_label_widget/3,
         search_menu_items/1, search_menu_items/2,
         visualize_menu_item_nutrition_by_id/2, visualize_menu_item_nutrition_by_id/3]).

-define(BASE_URL, <<"">>).

%% @doc Autocomplete Menu Item Search
%% Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
-spec autocomplete_menu_item_search(ctx:ctx(), binary()) -> {ok, spoonacular_autocomplete_menu_item_search_200_response:spoonacular_autocomplete_menu_item_search_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_menu_item_search(Ctx, Query) ->
    autocomplete_menu_item_search(Ctx, Query, #{}).

-spec autocomplete_menu_item_search(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_autocomplete_menu_item_search_200_response:spoonacular_autocomplete_menu_item_search_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
autocomplete_menu_item_search(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/menuItems/suggest"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Menu Item Information
%% Use a menu item id to get all available information about a menu item, such as nutrition.
-spec get_menu_item_information(ctx:ctx(), integer()) -> {ok, spoonacular_get_menu_item_information_200_response:spoonacular_get_menu_item_information_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_menu_item_information(Ctx, Id) ->
    get_menu_item_information(Ctx, Id, #{}).

-spec get_menu_item_information(ctx:ctx(), integer(), maps:map()) -> {ok, spoonacular_get_menu_item_information_200_response:spoonacular_get_menu_item_information_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_menu_item_information(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/menuItems/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Menu Item Nutrition by ID Image
%% Visualize a menu item's nutritional information as HTML including CSS.
-spec menu_item_nutrition_by_id_image(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
menu_item_nutrition_by_id_image(Ctx, Id) ->
    menu_item_nutrition_by_id_image(Ctx, Id, #{}).

-spec menu_item_nutrition_by_id_image(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
menu_item_nutrition_by_id_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/menuItems/", Id, "/nutritionWidget.png"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Menu Item Nutrition Label Image
%% Visualize a menu item's nutritional label information as an image.
-spec menu_item_nutrition_label_image(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
menu_item_nutrition_label_image(Ctx, Id) ->
    menu_item_nutrition_label_image(Ctx, Id, #{}).

-spec menu_item_nutrition_label_image(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
menu_item_nutrition_label_image(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/menuItems/", Id, "/nutritionLabel.png"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['showOptionalNutrients', 'showZeroValues', 'showIngredients'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Menu Item Nutrition Label Widget
%% Visualize a menu item's nutritional label information as HTML including CSS.
-spec menu_item_nutrition_label_widget(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
menu_item_nutrition_label_widget(Ctx, Id) ->
    menu_item_nutrition_label_widget(Ctx, Id, #{}).

-spec menu_item_nutrition_label_widget(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
menu_item_nutrition_label_widget(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/menuItems/", Id, "/nutritionLabel"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss', 'showOptionalNutrients', 'showZeroValues', 'showIngredients'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Menu Items
%% Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.
-spec search_menu_items(ctx:ctx()) -> {ok, spoonacular_search_menu_items_200_response:spoonacular_search_menu_items_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_menu_items(Ctx) ->
    search_menu_items(Ctx, #{}).

-spec search_menu_items(ctx:ctx(), maps:map()) -> {ok, spoonacular_search_menu_items_200_response:spoonacular_search_menu_items_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_menu_items(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/menuItems/search"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['query', 'minCalories', 'maxCalories', 'minCarbs', 'maxCarbs', 'minProtein', 'maxProtein', 'minFat', 'maxFat', 'addMenuItemInformation', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Menu Item Nutrition by ID Widget
%% Visualize a menu item's nutritional information as HTML including CSS.
-spec visualize_menu_item_nutrition_by_id(ctx:ctx(), integer()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_menu_item_nutrition_by_id(Ctx, Id) ->
    visualize_menu_item_nutrition_by_id(Ctx, Id, #{}).

-spec visualize_menu_item_nutrition_by_id(ctx:ctx(), integer(), maps:map()) -> {ok, binary(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
visualize_menu_item_nutrition_by_id(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/menuItems/", Id, "/nutritionWidget"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['defaultCss'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


