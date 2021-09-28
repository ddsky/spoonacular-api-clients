-module(spoonacular_inline_response_200_56).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_56/0]).

-type spoonacular_inline_response_200_56() ::
    #{ 'suggests' := spoonacular_inline_response_200_56_suggests:spoonacular_inline_response_200_56_suggests(),
       'words' := list()
     }.

encode(#{ 'suggests' := Suggests,
          'words' := Words
        }) ->
    #{ 'suggests' => Suggests,
       'words' => Words
     }.
