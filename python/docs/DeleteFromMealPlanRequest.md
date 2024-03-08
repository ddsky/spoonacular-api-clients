# DeleteFromMealPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** | The username. | 
**id** | **float** | The shopping list item id. | 
**hash** | **str** | The private hash for the username. | 

## Example

```python
from spoonacular.models.delete_from_meal_plan_request import DeleteFromMealPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteFromMealPlanRequest from a JSON string
delete_from_meal_plan_request_instance = DeleteFromMealPlanRequest.from_json(json)
# print the JSON string representation of the object
print DeleteFromMealPlanRequest.to_json()

# convert the object into a dict
delete_from_meal_plan_request_dict = delete_from_meal_plan_request_instance.to_dict()
# create an instance of DeleteFromMealPlanRequest from a dict
delete_from_meal_plan_request_form_dict = delete_from_meal_plan_request.from_dict(delete_from_meal_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


