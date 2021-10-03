-module(spoonacular_inline_response_200_57).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_57/0]).

-type spoonacular_inline_response_200_57() ::
    #{ 'suggests' := spoonacular_inline_response_200_57_suggests:spoonacular_inline_response_200_57_suggests(),
       'words' := list()
     }.

encode(#{ 'suggests' := Suggests,
          'words' := Words
        }) ->
    #{ 'suggests' => Suggests,
       'words' => Words
     }.
