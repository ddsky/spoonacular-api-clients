-module(openapi_search_custom_foods_200_response).

-export([encode/1]).

-export_type([openapi_search_custom_foods_200_response/0]).

-type openapi_search_custom_foods_200_response() ::
    #{ 'customFoods' := openapi_set:openapi_set(),
       'type' := binary(),
       'offset' := integer(),
       'number' := integer()
     }.

encode(#{ 'customFoods' := CustomFoods,
          'type' := Type,
          'offset' := Offset,
          'number' := Number
        }) ->
    #{ 'customFoods' => CustomFoods,
       'type' => Type,
       'offset' => Offset,
       'number' => Number
     }.
