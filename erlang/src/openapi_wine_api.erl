-module(openapi_wine_api).

-export([get_dish_pairing_for_wine/2, get_dish_pairing_for_wine/3,
         get_wine_description/2, get_wine_description/3,
         get_wine_pairing/2, get_wine_pairing/3,
         get_wine_recommendation/2, get_wine_recommendation/3]).

-define(BASE_URL, <<"">>).

%% @doc Dish Pairing for Wine
%% Find a dish that goes well with a given wine.
-spec get_dish_pairing_for_wine(ctx:ctx(), binary()) -> {ok, openapi_get_dish_pairing_for_wine_200_response:openapi_get_dish_pairing_for_wine_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_dish_pairing_for_wine(Ctx, Wine) ->
    get_dish_pairing_for_wine(Ctx, Wine, #{}).

-spec get_dish_pairing_for_wine(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_get_dish_pairing_for_wine_200_response:openapi_get_dish_pairing_for_wine_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_dish_pairing_for_wine(Ctx, Wine, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/food/wine/dishes">>],
    QS = lists:flatten([{<<"wine">>, Wine}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wine Description
%% Get a simple description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".
-spec get_wine_description(ctx:ctx(), binary()) -> {ok, openapi_get_wine_description_200_response:openapi_get_wine_description_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_wine_description(Ctx, Wine) ->
    get_wine_description(Ctx, Wine, #{}).

-spec get_wine_description(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_get_wine_description_200_response:openapi_get_wine_description_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_wine_description(Ctx, Wine, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/food/wine/description">>],
    QS = lists:flatten([{<<"wine">>, Wine}])++openapi_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wine Pairing
%% Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").
-spec get_wine_pairing(ctx:ctx(), binary()) -> {ok, openapi_get_wine_pairing_200_response:openapi_get_wine_pairing_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_wine_pairing(Ctx, Food) ->
    get_wine_pairing(Ctx, Food, #{}).

-spec get_wine_pairing(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_get_wine_pairing_200_response:openapi_get_wine_pairing_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_wine_pairing(Ctx, Food, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/food/wine/pairing">>],
    QS = lists:flatten([{<<"food">>, Food}])++openapi_utils:optional_params(['maxPrice'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Wine Recommendation
%% Get a specific wine recommendation (concrete product) for a given wine type, e.g. \"merlot\".
-spec get_wine_recommendation(ctx:ctx(), binary()) -> {ok, openapi_get_wine_recommendation_200_response:openapi_get_wine_recommendation_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_wine_recommendation(Ctx, Wine) ->
    get_wine_recommendation(Ctx, Wine, #{}).

-spec get_wine_recommendation(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_get_wine_recommendation_200_response:openapi_get_wine_recommendation_200_response(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
get_wine_recommendation(Ctx, Wine, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = [<<"/food/wine/recommendation">>],
    QS = lists:flatten([{<<"wine">>, Wine}])++openapi_utils:optional_params(['maxPrice', 'minRating', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


