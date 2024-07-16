-module(spoonacular_search_grocery_products_by_upc_200_response_nutrition_caloric_breakdown).

-export([encode/1]).

-export_type([spoonacular_search_grocery_products_by_upc_200_response_nutrition_caloric_breakdown/0]).

-type spoonacular_search_grocery_products_by_upc_200_response_nutrition_caloric_breakdown() ::
    #{ 'percentProtein' := integer(),
       'percentFat' := integer(),
       'percentCarbs' := integer()
     }.

encode(#{ 'percentProtein' := PercentProtein,
          'percentFat' := PercentFat,
          'percentCarbs' := PercentCarbs
        }) ->
    #{ 'percentProtein' => PercentProtein,
       'percentFat' => PercentFat,
       'percentCarbs' => PercentCarbs
     }.
