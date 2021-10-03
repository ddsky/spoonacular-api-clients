-module(spoonacular_inline_response_200_41_days).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_41_days/0]).

-type spoonacular_inline_response_200_41_days() ::
    #{ 'nutritionSummary' => spoonacular_inline_response_200_38_nutrition_summary:spoonacular_inline_response_200_38_nutrition_summary(),
       'nutritionSummaryBreakfast' => spoonacular_inline_response_200_38_nutrition_summary:spoonacular_inline_response_200_38_nutrition_summary(),
       'nutritionSummaryLunch' => spoonacular_inline_response_200_38_nutrition_summary:spoonacular_inline_response_200_38_nutrition_summary(),
       'nutritionSummaryDinner' => spoonacular_inline_response_200_38_nutrition_summary:spoonacular_inline_response_200_38_nutrition_summary(),
       'day' := binary(),
       'items' => list()
     }.

encode(#{ 'nutritionSummary' := NutritionSummary,
          'nutritionSummaryBreakfast' := NutritionSummaryBreakfast,
          'nutritionSummaryLunch' := NutritionSummaryLunch,
          'nutritionSummaryDinner' := NutritionSummaryDinner,
          'day' := Day,
          'items' := Items
        }) ->
    #{ 'nutritionSummary' => NutritionSummary,
       'nutritionSummaryBreakfast' => NutritionSummaryBreakfast,
       'nutritionSummaryLunch' => NutritionSummaryLunch,
       'nutritionSummaryDinner' => NutritionSummaryDinner,
       'day' => Day,
       'items' => Items
     }.
