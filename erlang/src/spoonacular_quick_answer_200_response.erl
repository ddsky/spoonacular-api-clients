-module(spoonacular_quick_answer_200_response).

-export([encode/1]).

-export_type([spoonacular_quick_answer_200_response/0]).

-type spoonacular_quick_answer_200_response() ::
    #{ 'answer' := binary(),
       'image' := binary()
     }.

encode(#{ 'answer' := Answer,
          'image' := Image
        }) ->
    #{ 'answer' => Answer,
       'image' => Image
     }.
