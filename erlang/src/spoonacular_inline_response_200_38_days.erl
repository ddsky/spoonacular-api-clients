-module(spoonacular_inline_response_200_38_days).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_38_days/0]).

-type spoonacular_inline_response_200_38_days() ::
    #{ 'nutritionSummary' => spoonacular_inline_response_200_38_nutrition_summary:spoonacular_inline_response_200_38_nutrition_summary(),
       'nutritionSummaryBreakfast' => spoonacular_inline_response_200_38_nutrition_summary:spoonacular_inline_response_200_38_nutrition_summary(),
       'nutritionSummaryLunch' => spoonacular_inline_response_200_38_nutrition_summary:spoonacular_inline_response_200_38_nutrition_summary(),
       'nutritionSummaryDinner' => spoonacular_inline_response_200_38_nutrition_summary:spoonacular_inline_response_200_38_nutrition_summary(),
       'date' := integer(),
       'day' := binary(),
       'items' => list()
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
