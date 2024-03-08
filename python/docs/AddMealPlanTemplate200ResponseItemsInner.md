# AddMealPlanTemplate200ResponseItemsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**day** | **int** |  | 
**slot** | **int** |  | 
**position** | **int** |  | 
**type** | **str** |  | 
**value** | [**AddMealPlanTemplate200ResponseItemsInnerValue**](AddMealPlanTemplate200ResponseItemsInnerValue.md) |  | [optional] 

## Example

```python
from spoonacular.models.add_meal_plan_template200_response_items_inner import AddMealPlanTemplate200ResponseItemsInner

# TODO update the JSON string below
json = "{}"
# create an instance of AddMealPlanTemplate200ResponseItemsInner from a JSON string
add_meal_plan_template200_response_items_inner_instance = AddMealPlanTemplate200ResponseItemsInner.from_json(json)
# print the JSON string representation of the object
print AddMealPlanTemplate200ResponseItemsInner.to_json()

# convert the object into a dict
add_meal_plan_template200_response_items_inner_dict = add_meal_plan_template200_response_items_inner_instance.to_dict()
# create an instance of AddMealPlanTemplate200ResponseItemsInner from a dict
add_meal_plan_template200_response_items_inner_form_dict = add_meal_plan_template200_response_items_inner.from_dict(add_meal_plan_template200_response_items_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


