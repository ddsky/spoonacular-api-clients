-module(spoonacular_meal_planning_api).

-export([add_meal_plan_template/3, add_meal_plan_template/4,
         add_to_meal_plan/4, add_to_meal_plan/5,
         add_to_shopping_list/4, add_to_shopping_list/5,
         clear_meal_plan_day/4, clear_meal_plan_day/5,
         connect_user/2, connect_user/3,
         delete_from_meal_plan/4, delete_from_meal_plan/5,
         delete_from_shopping_list/4, delete_from_shopping_list/5,
         delete_meal_plan_template/4, delete_meal_plan_template/5,
         generate_meal_plan/1, generate_meal_plan/2,
         generate_shopping_list/5, generate_shopping_list/6,
         get_meal_plan_template/4, get_meal_plan_template/5,
         get_meal_plan_templates/3, get_meal_plan_templates/4,
         get_meal_plan_week/4, get_meal_plan_week/5,
         get_shopping_list/3, get_shopping_list/4]).

-define(BASE_URL, <<"">>).

%% @doc Add Meal Plan Template
%% Add a meal plan template for a user.
-spec add_meal_plan_template(ctx:ctx(), binary(), binary()) -> {ok, spoonacular_add_meal_plan_template_200_response:spoonacular_add_meal_plan_template_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_meal_plan_template(Ctx, Username, Hash) ->
    add_meal_plan_template(Ctx, Username, Hash, #{}).

-spec add_meal_plan_template(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, spoonacular_add_meal_plan_template_200_response:spoonacular_add_meal_plan_template_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_meal_plan_template(Ctx, Username, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mealplanner/", Username, "/templates"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add to Meal Plan
%% Add an item to the user's meal plan.
-spec add_to_meal_plan(ctx:ctx(), binary(), binary(), spoonacular_add_to_meal_plan_request:spoonacular_add_to_meal_plan_request()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_meal_plan(Ctx, Username, Hash, SpoonacularAddToMealPlanRequest) ->
    add_to_meal_plan(Ctx, Username, Hash, SpoonacularAddToMealPlanRequest, #{}).

-spec add_to_meal_plan(ctx:ctx(), binary(), binary(), spoonacular_add_to_meal_plan_request:spoonacular_add_to_meal_plan_request(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_meal_plan(Ctx, Username, Hash, SpoonacularAddToMealPlanRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mealplanner/", Username, "/items"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularAddToMealPlanRequest,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add to Shopping List
%% Add an item to the current shopping list of a user.
-spec add_to_shopping_list(ctx:ctx(), binary(), binary(), spoonacular_add_to_shopping_list_request:spoonacular_add_to_shopping_list_request()) -> {ok, spoonacular_generate_shopping_list_200_response:spoonacular_generate_shopping_list_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_shopping_list(Ctx, Username, Hash, SpoonacularAddToShoppingListRequest) ->
    add_to_shopping_list(Ctx, Username, Hash, SpoonacularAddToShoppingListRequest, #{}).

-spec add_to_shopping_list(ctx:ctx(), binary(), binary(), spoonacular_add_to_shopping_list_request:spoonacular_add_to_shopping_list_request(), maps:map()) -> {ok, spoonacular_generate_shopping_list_200_response:spoonacular_generate_shopping_list_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_shopping_list(Ctx, Username, Hash, SpoonacularAddToShoppingListRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mealplanner/", Username, "/shopping-list/items"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularAddToShoppingListRequest,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Clear Meal Plan Day
%% Delete all planned items from the user's meal plan for a specific day.
-spec clear_meal_plan_day(ctx:ctx(), binary(), binary(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
clear_meal_plan_day(Ctx, Username, Date, Hash) ->
    clear_meal_plan_day(Ctx, Username, Date, Hash, #{}).

-spec clear_meal_plan_day(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
clear_meal_plan_day(Ctx, Username, Date, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/mealplanner/", Username, "/day/", Date, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Connect User
%% In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
-spec connect_user(ctx:ctx(), spoonacular_connect_user_request:spoonacular_connect_user_request()) -> {ok, spoonacular_connect_user_200_response:spoonacular_connect_user_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
connect_user(Ctx, SpoonacularConnectUserRequest) ->
    connect_user(Ctx, SpoonacularConnectUserRequest, #{}).

-spec connect_user(ctx:ctx(), spoonacular_connect_user_request:spoonacular_connect_user_request(), maps:map()) -> {ok, spoonacular_connect_user_200_response:spoonacular_connect_user_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
connect_user(Ctx, SpoonacularConnectUserRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/users/connect"],
    QS = [],
    Headers = [],
    Body1 = SpoonacularConnectUserRequest,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete from Meal Plan
%% Delete an item from the user's meal plan.
-spec delete_from_meal_plan(ctx:ctx(), binary(), integer(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_meal_plan(Ctx, Username, Id, Hash) ->
    delete_from_meal_plan(Ctx, Username, Id, Hash, #{}).

-spec delete_from_meal_plan(ctx:ctx(), binary(), integer(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_meal_plan(Ctx, Username, Id, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/mealplanner/", Username, "/items/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete from Shopping List
%% Delete an item from the current shopping list of the user.
-spec delete_from_shopping_list(ctx:ctx(), binary(), integer(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_shopping_list(Ctx, Username, Id, Hash) ->
    delete_from_shopping_list(Ctx, Username, Id, Hash, #{}).

-spec delete_from_shopping_list(ctx:ctx(), binary(), integer(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_shopping_list(Ctx, Username, Id, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/mealplanner/", Username, "/shopping-list/items/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete Meal Plan Template
%% Delete a meal plan template for a user.
-spec delete_meal_plan_template(ctx:ctx(), binary(), integer(), binary()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_meal_plan_template(Ctx, Username, Id, Hash) ->
    delete_meal_plan_template(Ctx, Username, Id, Hash, #{}).

-spec delete_meal_plan_template(ctx:ctx(), binary(), integer(), binary(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_meal_plan_template(Ctx, Username, Id, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/mealplanner/", Username, "/templates/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate Meal Plan
%% Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
-spec generate_meal_plan(ctx:ctx()) -> {ok, spoonacular_generate_meal_plan_200_response:spoonacular_generate_meal_plan_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_meal_plan(Ctx) ->
    generate_meal_plan(Ctx, #{}).

-spec generate_meal_plan(ctx:ctx(), maps:map()) -> {ok, spoonacular_generate_meal_plan_200_response:spoonacular_generate_meal_plan_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_meal_plan(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mealplanner/generate"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['timeFrame', 'targetCalories', 'diet', 'exclude'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate Shopping List
%% Generate the shopping list for a user from the meal planner in a given time frame.
-spec generate_shopping_list(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, spoonacular_generate_shopping_list_200_response:spoonacular_generate_shopping_list_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash) ->
    generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash, #{}).

-spec generate_shopping_list(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, spoonacular_generate_shopping_list_200_response:spoonacular_generate_shopping_list_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/mealplanner/", Username, "/shopping-list/", StartDate, "/", EndDate, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Meal Plan Template
%% Get information about a meal plan template.
-spec get_meal_plan_template(ctx:ctx(), binary(), integer(), binary()) -> {ok, spoonacular_get_meal_plan_template_200_response:spoonacular_get_meal_plan_template_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_template(Ctx, Username, Id, Hash) ->
    get_meal_plan_template(Ctx, Username, Id, Hash, #{}).

-spec get_meal_plan_template(ctx:ctx(), binary(), integer(), binary(), maps:map()) -> {ok, spoonacular_get_meal_plan_template_200_response:spoonacular_get_meal_plan_template_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_template(Ctx, Username, Id, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mealplanner/", Username, "/templates/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Meal Plan Templates
%% Get meal plan templates from user or public ones.
-spec get_meal_plan_templates(ctx:ctx(), binary(), binary()) -> {ok, spoonacular_get_meal_plan_templates_200_response:spoonacular_get_meal_plan_templates_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_templates(Ctx, Username, Hash) ->
    get_meal_plan_templates(Ctx, Username, Hash, #{}).

-spec get_meal_plan_templates(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, spoonacular_get_meal_plan_templates_200_response:spoonacular_get_meal_plan_templates_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_templates(Ctx, Username, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mealplanner/", Username, "/templates"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Meal Plan Week
%% Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
-spec get_meal_plan_week(ctx:ctx(), binary(), binary(), binary()) -> {ok, spoonacular_get_meal_plan_week_200_response:spoonacular_get_meal_plan_week_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_week(Ctx, Username, StartDate, Hash) ->
    get_meal_plan_week(Ctx, Username, StartDate, Hash, #{}).

-spec get_meal_plan_week(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, spoonacular_get_meal_plan_week_200_response:spoonacular_get_meal_plan_week_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_week(Ctx, Username, StartDate, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mealplanner/", Username, "/week/", StartDate, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Shopping List
%% Get the current shopping list for the given user.
-spec get_shopping_list(ctx:ctx(), binary(), binary()) -> {ok, spoonacular_get_shopping_list_200_response:spoonacular_get_shopping_list_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_shopping_list(Ctx, Username, Hash) ->
    get_shopping_list(Ctx, Username, Hash, #{}).

-spec get_shopping_list(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, spoonacular_get_shopping_list_200_response:spoonacular_get_shopping_list_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_shopping_list(Ctx, Username, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mealplanner/", Username, "/shopping-list"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


