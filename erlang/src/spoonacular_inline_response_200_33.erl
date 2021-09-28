-module(spoonacular_inline_response_200_33).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_33/0]).

-type spoonacular_inline_response_200_33() ::
    #{ 'cleanTitle' := binary(),
       'image' := binary(),
       'category' := binary(),
       'breadcrumbs' := list(),
       'usdaCode' := integer()
     }.

encode(#{ 'cleanTitle' := CleanTitle,
          'image' := Image,
          'category' := Category,
          'breadcrumbs' := Breadcrumbs,
          'usdaCode' := UsdaCode
        }) ->
    #{ 'cleanTitle' => CleanTitle,
       'image' => Image,
       'category' => Category,
       'breadcrumbs' => Breadcrumbs,
       'usdaCode' => UsdaCode
     }.
