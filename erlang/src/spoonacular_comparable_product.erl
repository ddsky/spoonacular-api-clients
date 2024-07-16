-module(spoonacular_comparable_product).

-export([encode/1]).

-export_type([spoonacular_comparable_product/0]).

-type spoonacular_comparable_product() ::
    #{ 'difference' := integer(),
       'id' := integer(),
       'image' := binary(),
       'title' := binary()
     }.

encode(#{ 'difference' := Difference,
          'id' := Id,
          'image' := Image,
          'title' := Title
        }) ->
    #{ 'difference' => Difference,
       'id' => Id,
       'image' => Image,
       'title' => Title
     }.
