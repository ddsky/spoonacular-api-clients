# OpenapiClient::GetMealPlanWeek200ResponseDaysInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **nutrition_summary** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] |
| **nutrition_summary_breakfast** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] |
| **nutrition_summary_lunch** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] |
| **nutrition_summary_dinner** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] |
| **date** | **Float** |  |  |
| **day** | **String** |  |  |
| **items** | [**Array&lt;GetMealPlanWeek200ResponseDaysInnerItemsInner&gt;**](GetMealPlanWeek200ResponseDaysInnerItemsInner.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetMealPlanWeek200ResponseDaysInner.new(
  nutrition_summary: null,
  nutrition_summary_breakfast: null,
  nutrition_summary_lunch: null,
  nutrition_summary_dinner: null,
  date: null,
  day: null,
  items: null
)
```

