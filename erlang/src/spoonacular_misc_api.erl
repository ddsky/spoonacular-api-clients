-module(spoonacular_misc_api).

-export([detect_food_in_text/2, detect_food_in_text/3,
         get_a_random_food_joke/1, get_a_random_food_joke/2,
         get_conversation_suggests/2, get_conversation_suggests/3,
         get_random_food_trivia/1, get_random_food_trivia/2,
         image_analysis_by_url/2, image_analysis_by_url/3,
         image_classification_by_url/2, image_classification_by_url/3,
         search_all_food/2, search_all_food/3,
         search_custom_foods/3, search_custom_foods/4,
         search_food_videos/1, search_food_videos/2,
         search_site_content/2, search_site_content/3,
         talk_to_chatbot/2, talk_to_chatbot/3]).

-define(BASE_URL, <<"">>).

%% @doc Detect Food in Text
%% Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
-spec detect_food_in_text(ctx:ctx(), binary()) -> {ok, spoonacular_detect_food_in_text_200_response:spoonacular_detect_food_in_text_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
detect_food_in_text(Ctx, Text) ->
    detect_food_in_text(Ctx, Text, #{}).

-spec detect_food_in_text(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_detect_food_in_text_200_response:spoonacular_detect_food_in_text_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
detect_food_in_text(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/food/detect"],
    QS = [],
    Headers = [],
    Body1 = {form, [{<<"text">>, Text}]++spoonacular_utils:optional_params([], _OptionalParams)},
    ContentTypeHeader = spoonacular_utils:select_header_content_type([<<"application/x-www-form-urlencoded">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Food Joke
%% Get a random joke that is related to food. Caution: this is an endpoint for adults!
-spec get_a_random_food_joke(ctx:ctx()) -> {ok, spoonacular_get_a_random_food_joke_200_response:spoonacular_get_a_random_food_joke_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_a_random_food_joke(Ctx) ->
    get_a_random_food_joke(Ctx, #{}).

-spec get_a_random_food_joke(ctx:ctx(), maps:map()) -> {ok, spoonacular_get_a_random_food_joke_200_response:spoonacular_get_a_random_food_joke_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_a_random_food_joke(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/jokes/random"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Conversation Suggests
%% This endpoint returns suggestions for things the user can say or ask the chatbot.
-spec get_conversation_suggests(ctx:ctx(), binary()) -> {ok, spoonacular_get_conversation_suggests_200_response:spoonacular_get_conversation_suggests_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_conversation_suggests(Ctx, Query) ->
    get_conversation_suggests(Ctx, Query, #{}).

-spec get_conversation_suggests(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_get_conversation_suggests_200_response:spoonacular_get_conversation_suggests_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_conversation_suggests(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/converse/suggest"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Random Food Trivia
%% Returns random food trivia.
-spec get_random_food_trivia(ctx:ctx()) -> {ok, spoonacular_get_random_food_trivia_200_response:spoonacular_get_random_food_trivia_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_random_food_trivia(Ctx) ->
    get_random_food_trivia(Ctx, #{}).

-spec get_random_food_trivia(ctx:ctx(), maps:map()) -> {ok, spoonacular_get_random_food_trivia_200_response:spoonacular_get_random_food_trivia_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
get_random_food_trivia(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/trivia/random"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Image Analysis by URL
%% Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
-spec image_analysis_by_url(ctx:ctx(), binary()) -> {ok, spoonacular_image_analysis_by_url_200_response:spoonacular_image_analysis_by_url_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
image_analysis_by_url(Ctx, ImageUrl) ->
    image_analysis_by_url(Ctx, ImageUrl, #{}).

-spec image_analysis_by_url(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_image_analysis_by_url_200_response:spoonacular_image_analysis_by_url_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
image_analysis_by_url(Ctx, ImageUrl, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/images/analyze"],
    QS = lists:flatten([{<<"imageUrl">>, ImageUrl}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Image Classification by URL
%% Classify a food image.
-spec image_classification_by_url(ctx:ctx(), binary()) -> {ok, spoonacular_image_classification_by_url_200_response:spoonacular_image_classification_by_url_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
image_classification_by_url(Ctx, ImageUrl) ->
    image_classification_by_url(Ctx, ImageUrl, #{}).

-spec image_classification_by_url(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_image_classification_by_url_200_response:spoonacular_image_classification_by_url_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
image_classification_by_url(Ctx, ImageUrl, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/images/classify"],
    QS = lists:flatten([{<<"imageUrl">>, ImageUrl}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search All Food
%% Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
-spec search_all_food(ctx:ctx(), binary()) -> {ok, spoonacular_search_all_food_200_response:spoonacular_search_all_food_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_all_food(Ctx, Query) ->
    search_all_food(Ctx, Query, #{}).

-spec search_all_food(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_search_all_food_200_response:spoonacular_search_all_food_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_all_food(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/search"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params(['offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Custom Foods
%% Search custom foods in a user's account.
-spec search_custom_foods(ctx:ctx(), binary(), binary()) -> {ok, spoonacular_search_custom_foods_200_response:spoonacular_search_custom_foods_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_custom_foods(Ctx, Username, Hash) ->
    search_custom_foods(Ctx, Username, Hash, #{}).

-spec search_custom_foods(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, spoonacular_search_custom_foods_200_response:spoonacular_search_custom_foods_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_custom_foods(Ctx, Username, Hash, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/customFoods/search"],
    QS = lists:flatten([{<<"username">>, Username}, {<<"hash">>, Hash}])++spoonacular_utils:optional_params(['query', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Food Videos
%% Find recipe and other food related videos.
-spec search_food_videos(ctx:ctx()) -> {ok, spoonacular_search_food_videos_200_response:spoonacular_search_food_videos_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_food_videos(Ctx) ->
    search_food_videos(Ctx, #{}).

-spec search_food_videos(ctx:ctx(), maps:map()) -> {ok, spoonacular_search_food_videos_200_response:spoonacular_search_food_videos_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_food_videos(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/videos/search"],
    QS = lists:flatten([])++spoonacular_utils:optional_params(['query', 'type', 'cuisine', 'diet', 'includeIngredients', 'excludeIngredients', 'minLength', 'maxLength', 'offset', 'number'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search Site Content
%% Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
-spec search_site_content(ctx:ctx(), binary()) -> {ok, spoonacular_search_site_content_200_response:spoonacular_search_site_content_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_site_content(Ctx, Query) ->
    search_site_content(Ctx, Query, #{}).

-spec search_site_content(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_search_site_content_200_response:spoonacular_search_site_content_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
search_site_content(Ctx, Query, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/site/search"],
    QS = lists:flatten([{<<"query">>, Query}])++spoonacular_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Talk to Chatbot
%% This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
-spec talk_to_chatbot(ctx:ctx(), binary()) -> {ok, spoonacular_talk_to_chatbot_200_response:spoonacular_talk_to_chatbot_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
talk_to_chatbot(Ctx, Text) ->
    talk_to_chatbot(Ctx, Text, #{}).

-spec talk_to_chatbot(ctx:ctx(), binary(), maps:map()) -> {ok, spoonacular_talk_to_chatbot_200_response:spoonacular_talk_to_chatbot_200_response(), spoonacular_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), spoonacular_utils:response_info()}.
talk_to_chatbot(Ctx, Text, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(spoonacular_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/food/converse"],
    QS = lists:flatten([{<<"text">>, Text}])++spoonacular_utils:optional_params(['contextId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = spoonacular_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    spoonacular_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


