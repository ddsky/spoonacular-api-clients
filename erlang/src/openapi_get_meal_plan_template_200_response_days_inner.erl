-module(openapi_get_meal_plan_template_200_response_days_inner).

-export([encode/1]).

-export_type([openapi_get_meal_plan_template_200_response_days_inner/0]).

-type openapi_get_meal_plan_template_200_response_days_inner() ::
    #{ 'nutritionSummary' => openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary:openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary(),
       'nutritionSummaryBreakfast' => openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary:openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary(),
       'nutritionSummaryLunch' => openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary:openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary(),
       'nutritionSummaryDinner' => openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary:openapi_get_meal_plan_week_200_response_days_inner_nutrition_summary(),
       'day' := binary(),
       'items' => openapi_set:openapi_set()
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
