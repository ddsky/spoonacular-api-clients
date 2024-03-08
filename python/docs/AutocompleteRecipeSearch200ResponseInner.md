# AutocompleteRecipeSearch200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**image_type** | **str** |  | 

## Example

```python
from spoonacular.models.autocomplete_recipe_search200_response_inner import AutocompleteRecipeSearch200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of AutocompleteRecipeSearch200ResponseInner from a JSON string
autocomplete_recipe_search200_response_inner_instance = AutocompleteRecipeSearch200ResponseInner.from_json(json)
# print the JSON string representation of the object
print AutocompleteRecipeSearch200ResponseInner.to_json()

# convert the object into a dict
autocomplete_recipe_search200_response_inner_dict = autocomplete_recipe_search200_response_inner_instance.to_dict()
# create an instance of AutocompleteRecipeSearch200ResponseInner from a dict
autocomplete_recipe_search200_response_inner_form_dict = autocomplete_recipe_search200_response_inner.from_dict(autocomplete_recipe_search200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


