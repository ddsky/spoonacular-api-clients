-module(spoonacular_classify_cuisine_200_response).

-export([encode/1]).

-export_type([spoonacular_classify_cuisine_200_response/0]).

-type spoonacular_classify_cuisine_200_response() ::
    #{ 'cuisine' := binary(),
       'cuisines' := list(),
       'confidence' := integer()
     }.

encode(#{ 'cuisine' := Cuisine,
          'cuisines' := Cuisines,
          'confidence' := Confidence
        }) ->
    #{ 'cuisine' => Cuisine,
       'cuisines' => Cuisines,
       'confidence' => Confidence
     }.
