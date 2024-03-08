-module(spoonacular_search_grocery_products_by_upc_200_response_nutrition).

-export([encode/1]).

-export_type([spoonacular_search_grocery_products_by_upc_200_response_nutrition/0]).

-type spoonacular_search_grocery_products_by_upc_200_response_nutrition() ::
    #{ 'nutrients' := spoonacular_set:spoonacular_set(),
       'caloricBreakdown' := spoonacular_parse_ingredients_200_response_inner_nutrition_caloric_breakdown:spoonacular_parse_ingredients_200_response_inner_nutrition_caloric_breakdown()
     }.

encode(#{ 'nutrients' := Nutrients,
          'caloricBreakdown' := CaloricBreakdown
        }) ->
    #{ 'nutrients' => Nutrients,
       'caloricBreakdown' => CaloricBreakdown
     }.
