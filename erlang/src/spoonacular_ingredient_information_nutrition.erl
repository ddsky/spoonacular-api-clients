-module(spoonacular_ingredient_information_nutrition).

-export([encode/1]).

-export_type([spoonacular_ingredient_information_nutrition/0]).

-type spoonacular_ingredient_information_nutrition() ::
    #{ 'nutrients' := spoonacular_set:spoonacular_set(),
       'properties' := spoonacular_set:spoonacular_set(),
       'caloricBreakdown' := spoonacular_search_grocery_products_by_upc_200_response_nutrition_caloric_breakdown:spoonacular_search_grocery_products_by_upc_200_response_nutrition_caloric_breakdown(),
       'weightPerServing' := spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original:spoonacular_get_shopping_list_200_response_aisles_inner_items_inner_measures_original()
     }.

encode(#{ 'nutrients' := Nutrients,
          'properties' := Properties,
          'caloricBreakdown' := CaloricBreakdown,
          'weightPerServing' := WeightPerServing
        }) ->
    #{ 'nutrients' => Nutrients,
       'properties' => Properties,
       'caloricBreakdown' => CaloricBreakdown,
       'weightPerServing' => WeightPerServing
     }.
