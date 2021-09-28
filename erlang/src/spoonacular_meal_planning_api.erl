-module(spoonacular_meal_planning_api).

-export([add_to_meal_plan/4, add_to_meal_plan/5,
         add_to_shopping_list/4, add_to_shopping_list/5,
         clear_meal_plan_day/5, clear_meal_plan_day/6,
         connect_user/2, connect_user/3,
         delete_from_meal_plan/5, delete_from_meal_plan/6,
         delete_from_shopping_list/5, delete_from_shopping_list/6,
         generate_meal_plan/1, generate_meal_plan/2,
         generate_shopping_list/6, generate_shopping_list/7,
         get_meal_plan_template/4, get_meal_plan_template/5,
         get_meal_plan_templates/3, get_meal_plan_templates/4,
         get_meal_plan_week/4, get_meal_plan_week/5,
         get_shopping_list/3, get_shopping_list/4]).

-define(BASE_URL, "").

%% @doc Add to Meal Plan
%% Add an item to the user's meal plan.
-spec add_to_meal_plan(ctx:ctx(), binary(), binary(), spoonacular_inline_object_4:spoonacular_inline_object_4()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_meal_plan(Ctx, Username, Hash, SpoonacularInlineObject4) ->
    add_to_meal_plan(Ctx, Username, Hash, SpoonacularInlineObject4, #{}).

-spec add_to_meal_plan(ctx:ctx(), binary(), binary(), spoonacular_inline_object_4:spoonacular_inline_object_4(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_meal_plan(Ctx, Username, Hash, SpoonacularInlineObject4, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mealplanner/", Username, "/items"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject4,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add to Shopping List
%% Add an item to the current shopping list of a user.
-spec add_to_shopping_list(ctx:ctx(), binary(), binary(), spoonacular_inline_object_7:spoonacular_inline_object_7()) -> {ok, spoonacular_inline_response_200_41:spoonacular_inline_response_200_41(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_shopping_list(Ctx, Username, Hash, SpoonacularInlineObject7) ->
    add_to_shopping_list(Ctx, Username, Hash, SpoonacularInlineObject7, #{}).

-spec add_to_shopping_list(ctx:ctx(), binary(), binary(), spoonacular_inline_object_7:spoonacular_inline_object_7(), maps:map()) -> {ok, spoonacular_inline_response_200_41:spoonacular_inline_response_200_41(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
add_to_shopping_list(Ctx, Username, Hash, SpoonacularInlineObject7, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mealplanner/", Username, "/shopping-list/items"],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject7,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Clear Meal Plan Day
%% Delete all planned items from the user's meal plan for a specific day.
-spec clear_meal_plan_day(ctx:ctx(), binary(), binary(), binary(), spoonacular_inline_object_3:spoonacular_inline_object_3()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
clear_meal_plan_day(Ctx, Username, Date, Hash, SpoonacularInlineObject3) ->
    clear_meal_plan_day(Ctx, Username, Date, Hash, SpoonacularInlineObject3, #{}).

-spec clear_meal_plan_day(ctx:ctx(), binary(), binary(), binary(), spoonacular_inline_object_3:spoonacular_inline_object_3(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
clear_meal_plan_day(Ctx, Username, Date, Hash, SpoonacularInlineObject3, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/mealplanner/", Username, "/day/", Date, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject3,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Connect User
%% In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
-spec connect_user(ctx:ctx(), maps:map()) -> {ok, spoonacular_inline_response_200_42:spoonacular_inline_response_200_42(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
connect_user(Ctx, Body) ->
    connect_user(Ctx, Body, #{}).

-spec connect_user(ctx:ctx(), maps:map(), maps:map()) -> {ok, spoonacular_inline_response_200_42:spoonacular_inline_response_200_42(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
connect_user(Ctx, Body, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/users/connect"],
    QS = [],
    Headers = [],
    Body1 = Body,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>, <<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete from Meal Plan
%% Delete an item from the user's meal plan.
-spec delete_from_meal_plan(ctx:ctx(), binary(), integer(), binary(), spoonacular_inline_object_5:spoonacular_inline_object_5()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_meal_plan(Ctx, Username, Id, Hash, SpoonacularInlineObject5) ->
    delete_from_meal_plan(Ctx, Username, Id, Hash, SpoonacularInlineObject5, #{}).

-spec delete_from_meal_plan(ctx:ctx(), binary(), integer(), binary(), spoonacular_inline_object_5:spoonacular_inline_object_5(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_meal_plan(Ctx, Username, Id, Hash, SpoonacularInlineObject5, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/mealplanner/", Username, "/items/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject5,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete from Shopping List
%% Delete an item from the current shopping list of the user.
-spec delete_from_shopping_list(ctx:ctx(), binary(), integer(), binary(), spoonacular_inline_object_8:spoonacular_inline_object_8()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_shopping_list(Ctx, Username, Id, Hash, SpoonacularInlineObject8) ->
    delete_from_shopping_list(Ctx, Username, Id, Hash, SpoonacularInlineObject8, #{}).

-spec delete_from_shopping_list(ctx:ctx(), binary(), integer(), binary(), spoonacular_inline_object_8:spoonacular_inline_object_8(), maps:map()) -> {ok, maps:map(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
delete_from_shopping_list(Ctx, Username, Id, Hash, SpoonacularInlineObject8, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/mealplanner/", Username, "/shopping-list/items/", Id, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject8,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate Meal Plan
%% Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
-spec generate_meal_plan(ctx:ctx()) -> {ok, spoonacular_inline_response_200_37:spoonacular_inline_response_200_37(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_meal_plan(Ctx) ->
    generate_meal_plan(Ctx, #{}).

-spec generate_meal_plan(ctx:ctx(), maps:map()) -> {ok, spoonacular_inline_response_200_37:spoonacular_inline_response_200_37(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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
-spec generate_shopping_list(ctx:ctx(), binary(), binary(), binary(), binary(), spoonacular_inline_object_6:spoonacular_inline_object_6()) -> {ok, spoonacular_inline_response_200_41:spoonacular_inline_response_200_41(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash, SpoonacularInlineObject6) ->
    generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash, SpoonacularInlineObject6, #{}).

-spec generate_shopping_list(ctx:ctx(), binary(), binary(), binary(), binary(), spoonacular_inline_object_6:spoonacular_inline_object_6(), maps:map()) -> {ok, spoonacular_inline_response_200_41:spoonacular_inline_response_200_41(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
generate_shopping_list(Ctx, Username, StartDate, EndDate, Hash, SpoonacularInlineObject6, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/mealplanner/", Username, "/shopping-list/", StartDate, "/", EndDate, ""],
    QS = lists:flatten([{<<"hash">>, Hash}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = SpoonacularInlineObject6,
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Meal Plan Template
%% Get information about a meal plan template.
-spec get_meal_plan_template(ctx:ctx(), binary(), integer(), binary()) -> {ok, spoonacular_inline_response_200_40:spoonacular_inline_response_200_40(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_template(Ctx, Username, Id, Hash) ->
    get_meal_plan_template(Ctx, Username, Id, Hash, #{}).

-spec get_meal_plan_template(ctx:ctx(), binary(), integer(), binary(), maps:map()) -> {ok, spoonacular_inline_response_200_40:spoonacular_inline_response_200_40(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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
-spec get_meal_plan_templates(ctx:ctx(), binary(), binary()) -> {ok, spoonacular_inline_response_200_39:spoonacular_inline_response_200_39(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_templates(Ctx, Username, Hash) ->
    get_meal_plan_templates(Ctx, Username, Hash, #{}).

-spec get_meal_plan_templates(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, spoonacular_inline_response_200_39:spoonacular_inline_response_200_39(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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
-spec get_meal_plan_week(ctx:ctx(), binary(), binary(), binary()) -> {ok, spoonacular_inline_response_200_38:spoonacular_inline_response_200_38(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_meal_plan_week(Ctx, Username, StartDate, Hash) ->
    get_meal_plan_week(Ctx, Username, StartDate, Hash, #{}).

-spec get_meal_plan_week(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, spoonacular_inline_response_200_38:spoonacular_inline_response_200_38(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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

%% @doc Get Shopping List
%% Get the current shopping list for the given user.
-spec get_shopping_list(ctx:ctx(), binary(), binary()) -> {ok, spoonacular_inline_response_200_41:spoonacular_inline_response_200_41(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_shopping_list(Ctx, Username, Hash) ->
    get_shopping_list(Ctx, Username, Hash, #{}).

-spec get_shopping_list(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, spoonacular_inline_response_200_41:spoonacular_inline_response_200_41(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
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


