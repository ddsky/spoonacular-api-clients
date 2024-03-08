-module(spoonacular_get_meal_plan_week_200_response_days_inner).

-export([encode/1]).

-export_type([spoonacular_get_meal_plan_week_200_response_days_inner/0]).

-type spoonacular_get_meal_plan_week_200_response_days_inner() ::
    #{ 'nutritionSummary' => spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary:spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary(),
       'nutritionSummaryBreakfast' => spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary:spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary(),
       'nutritionSummaryLunch' => spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary:spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary(),
       'nutritionSummaryDinner' => spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary:spoonacular_get_meal_plan_week_200_response_days_inner_nutrition_summary(),
       'date' := integer(),
       'day' := binary(),
       'items' => spoonacular_set:spoonacular_set()
     }.

encode(#{ 'nutritionSummary' := NutritionSummary,
          'nutritionSummaryBreakfast' := NutritionSummaryBreakfast,
          'nutritionSummaryLunch' := NutritionSummaryLunch,
          'nutritionSummaryDinner' := NutritionSummaryDinner,
          'date' := Date,
          'day' := Day,
          'items' := Items
        }) ->
    #{ 'nutritionSummary' => NutritionSummary,
       'nutritionSummaryBreakfast' => NutritionSummaryBreakfast,
       'nutritionSummaryLunch' => NutritionSummaryLunch,
       'nutritionSummaryDinner' => NutritionSummaryDinner,
       'date' => Date,
       'day' => Day,
       'items' => Items
     }.
