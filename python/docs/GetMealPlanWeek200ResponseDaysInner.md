# GetMealPlanWeek200ResponseDaysInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrition_summary** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**nutrition_summary_breakfast** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**nutrition_summary_lunch** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**nutrition_summary_dinner** | [**GetMealPlanWeek200ResponseDaysInnerNutritionSummary**](GetMealPlanWeek200ResponseDaysInnerNutritionSummary.md) |  | [optional] 
**var_date** | **float** |  | 
**day** | **str** |  | 
**items** | [**List[GetMealPlanWeek200ResponseDaysInnerItemsInner]**](GetMealPlanWeek200ResponseDaysInnerItemsInner.md) |  | [optional] 

## Example

```python
from spoonacular.models.get_meal_plan_week200_response_days_inner import GetMealPlanWeek200ResponseDaysInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetMealPlanWeek200ResponseDaysInner from a JSON string
get_meal_plan_week200_response_days_inner_instance = GetMealPlanWeek200ResponseDaysInner.from_json(json)
# print the JSON string representation of the object
print GetMealPlanWeek200ResponseDaysInner.to_json()

# convert the object into a dict
get_meal_plan_week200_response_days_inner_dict = get_meal_plan_week200_response_days_inner_instance.to_dict()
# create an instance of GetMealPlanWeek200ResponseDaysInner from a dict
get_meal_plan_week200_response_days_inner_form_dict = get_meal_plan_week200_response_days_inner.from_dict(get_meal_plan_week200_response_days_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


