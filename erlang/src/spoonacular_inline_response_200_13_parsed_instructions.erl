-module(spoonacular_inline_response_200_13_parsed_instructions).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_13_parsed_instructions/0]).

-type spoonacular_inline_response_200_13_parsed_instructions() ::
    #{ 'name' := binary(),
       'steps' => list()
     }.

encode(#{ 'name' := Name,
          'steps' := Steps
        }) ->
    #{ 'name' => Name,
       'steps' => Steps
     }.
