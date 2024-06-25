# AddToMealPlanRequestValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ingredients** | [**List[AddToMealPlanRequestValueIngredientsInner]**](AddToMealPlanRequestValueIngredientsInner.md) |  | 

## Example

```python
from spoonacular.models.add_to_meal_plan_request_value import AddToMealPlanRequestValue

# TODO update the JSON string below
json = "{}"
# create an instance of AddToMealPlanRequestValue from a JSON string
add_to_meal_plan_request_value_instance = AddToMealPlanRequestValue.from_json(json)
# print the JSON string representation of the object
print(AddToMealPlanRequestValue.to_json())

# convert the object into a dict
add_to_meal_plan_request_value_dict = add_to_meal_plan_request_value_instance.to_dict()
# create an instance of AddToMealPlanRequestValue from a dict
add_to_meal_plan_request_value_from_dict = AddToMealPlanRequestValue.from_dict(add_to_meal_plan_request_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


