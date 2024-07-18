-module(spoonacular_ingredient_basics).

-export([encode/1]).

-export_type([spoonacular_ingredient_basics/0]).

-type spoonacular_ingredient_basics() ::
    #{ 'description' := binary(),
       'name' := binary(),
       'safety_level' := binary()
     }.

encode(#{ 'description' := Description,
          'name' := Name,
          'safety_level' := SafetyLevel
        }) ->
    #{ 'description' => Description,
       'name' => Name,
       'safety_level' => SafetyLevel
     }.
