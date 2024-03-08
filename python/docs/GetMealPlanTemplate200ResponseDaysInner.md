# GetMealPlanTemplate200ResponseDaysInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrition_summary** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**nutrition_summary_breakfast** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**nutrition_summary_lunch** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**nutrition_summary_dinner** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**day** | **str** |  | 
**items** | [**List[GetMealPlanTemplate200ResponseDaysInnerItemsInner]**](GetMealPlanTemplate200ResponseDaysInnerItemsInner.md) |  | [optional] 

## Example

```python
from spoonacular.models.get_meal_plan_template200_response_days_inner import GetMealPlanTemplate200ResponseDaysInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetMealPlanTemplate200ResponseDaysInner from a JSON string
get_meal_plan_template200_response_days_inner_instance = GetMealPlanTemplate200ResponseDaysInner.from_json(json)
# print the JSON string representation of the object
print GetMealPlanTemplate200ResponseDaysInner.to_json()

# convert the object into a dict
get_meal_plan_template200_response_days_inner_dict = get_meal_plan_template200_response_days_inner_instance.to_dict()
# create an instance of GetMealPlanTemplate200ResponseDaysInner from a dict
get_meal_plan_template200_response_days_inner_form_dict = get_meal_plan_template200_response_days_inner.from_dict(get_meal_plan_template200_response_days_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


