-module(openapi_classify_grocery_product_200_response).

-export([encode/1]).

-export_type([openapi_classify_grocery_product_200_response/0]).

-type openapi_classify_grocery_product_200_response() ::
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
