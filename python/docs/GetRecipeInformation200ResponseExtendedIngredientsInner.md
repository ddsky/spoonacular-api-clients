# GetRecipeInformation200ResponseExtendedIngredientsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aisle** | **str** |  | 
**amount** | **float** |  | 
**consitency** | **str** |  | 
**id** | **int** |  | 
**image** | **str** |  | 
**measures** | [**GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures**](GetRecipeInformation200ResponseExtendedIngredientsInnerMeasures.md) |  | [optional] 
**meta** | **List[str]** |  | [optional] 
**name** | **str** |  | 
**original** | **str** |  | 
**original_name** | **str** |  | 
**unit** | **str** |  | 

## Example

```python
from spoonacular.models.get_recipe_information200_response_extended_ingredients_inner import GetRecipeInformation200ResponseExtendedIngredientsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetRecipeInformation200ResponseExtendedIngredientsInner from a JSON string
get_recipe_information200_response_extended_ingredients_inner_instance = GetRecipeInformation200ResponseExtendedIngredientsInner.from_json(json)
# print the JSON string representation of the object
print GetRecipeInformation200ResponseExtendedIngredientsInner.to_json()

# convert the object into a dict
get_recipe_information200_response_extended_ingredients_inner_dict = get_recipe_information200_response_extended_ingredients_inner_instance.to_dict()
# create an instance of GetRecipeInformation200ResponseExtendedIngredientsInner from a dict
get_recipe_information200_response_extended_ingredients_inner_form_dict = get_recipe_information200_response_extended_ingredients_inner.from_dict(get_recipe_information200_response_extended_ingredients_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


