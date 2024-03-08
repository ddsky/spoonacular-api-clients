# GetIngredientInformation200Response



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
**shopping_list_units** | **List[str]** |  | 
**aisle** | **str** |  | 
**image** | **str** |  | 
**meta** | **List[object]** |  | 
**nutrition** | [**GetIngredientInformation200ResponseNutrition**](GetIngredientInformation200ResponseNutrition.md) |  | 
**category_path** | **List[str]** |  | 

## Example

```python
from spoonacular.models.get_ingredient_information200_response import GetIngredientInformation200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetIngredientInformation200Response from a JSON string
get_ingredient_information200_response_instance = GetIngredientInformation200Response.from_json(json)
# print the JSON string representation of the object
print GetIngredientInformation200Response.to_json()

# convert the object into a dict
get_ingredient_information200_response_dict = get_ingredient_information200_response_instance.to_dict()
# create an instance of GetIngredientInformation200Response from a dict
get_ingredient_information200_response_form_dict = get_ingredient_information200_response.from_dict(get_ingredient_information200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


