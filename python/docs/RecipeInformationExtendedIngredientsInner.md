# RecipeInformationExtendedIngredientsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**aisle** | **str** |  | 
**amount** | **float** |  | 
**consistency** | **str** |  | 
**id** | **int** |  | 
**image** | **str** |  | 
**measures** | [**RecipeInformationExtendedIngredientsInnerMeasures**](RecipeInformationExtendedIngredientsInnerMeasures.md) |  | [optional] 
**meta** | **List[str]** |  | [optional] 
**name** | **str** |  | 
**original** | **str** |  | 
**original_name** | **str** |  | 
**unit** | **str** |  | 

## Example

```python
from spoonacular.models.recipe_information_extended_ingredients_inner import RecipeInformationExtendedIngredientsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RecipeInformationExtendedIngredientsInner from a JSON string
recipe_information_extended_ingredients_inner_instance = RecipeInformationExtendedIngredientsInner.from_json(json)
# print the JSON string representation of the object
print(RecipeInformationExtendedIngredientsInner.to_json())

# convert the object into a dict
recipe_information_extended_ingredients_inner_dict = recipe_information_extended_ingredients_inner_instance.to_dict()
# create an instance of RecipeInformationExtendedIngredientsInner from a dict
recipe_information_extended_ingredients_inner_from_dict = RecipeInformationExtendedIngredientsInner.from_dict(recipe_information_extended_ingredients_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


