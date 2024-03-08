-module(spoonacular_classify_grocery_product_bulk_200_response_inner).

-export([encode/1]).

-export_type([spoonacular_classify_grocery_product_bulk_200_response_inner/0]).

-type spoonacular_classify_grocery_product_bulk_200_response_inner() ::
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
