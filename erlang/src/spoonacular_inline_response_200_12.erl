-module(spoonacular_inline_response_200_12).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_12/0]).

-type spoonacular_inline_response_200_12() ::
    #{ 'calories' := binary(),
       'carbs' := binary(),
       'fat' := binary(),
       'protein' := binary(),
       'bad' := list(),
       'good' := list()
     }.

encode(#{ 'calories' := Calories,
          'carbs' := Carbs,
          'fat' := Fat,
          'protein' := Protein,
          'bad' := Bad,
          'good' := Good
        }) ->
    #{ 'calories' => Calories,
       'carbs' => Carbs,
       'fat' => Fat,
       'protein' => Protein,
       'bad' => Bad,
       'good' => Good
     }.
