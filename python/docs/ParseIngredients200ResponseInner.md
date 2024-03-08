# ParseIngredients200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**original** | **str** |  | 
**original_name** | **str** |  | 
**name** | **str** |  | 
**name_clean** | **str** |  | 
**amount** | **float** |  | 
**unit** | **str** |  | 
**unit_short** | **str** |  | 
**unit_long** | **str** |  | 
**possible_units** | **List[str]** |  | 
**estimated_cost** | [**ParseIngredients200ResponseInnerEstimatedCost**](ParseIngredients200ResponseInnerEstimatedCost.md) |  | 
**consistency** | **str** |  | 
**aisle** | **str** |  | 
**image** | **str** |  | 
**meta** | **List[str]** |  | 
**nutrition** | [**ParseIngredients200ResponseInnerNutrition**](ParseIngredients200ResponseInnerNutrition.md) |  | 

## Example

```python
from spoonacular.models.parse_ingredients200_response_inner import ParseIngredients200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of ParseIngredients200ResponseInner from a JSON string
parse_ingredients200_response_inner_instance = ParseIngredients200ResponseInner.from_json(json)
# print the JSON string representation of the object
print ParseIngredients200ResponseInner.to_json()

# convert the object into a dict
parse_ingredients200_response_inner_dict = parse_ingredients200_response_inner_instance.to_dict()
# create an instance of ParseIngredients200ResponseInner from a dict
parse_ingredients200_response_inner_form_dict = parse_ingredients200_response_inner.from_dict(parse_ingredients200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


