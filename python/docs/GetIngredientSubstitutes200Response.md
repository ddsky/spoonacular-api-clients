# GetIngredientSubstitutes200Response



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ingredient** | **str** |  | 
**substitutes** | **List[str]** |  | 
**message** | **str** |  | 

## Example

```python
from spoonacular.models.get_ingredient_substitutes200_response import GetIngredientSubstitutes200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetIngredientSubstitutes200Response from a JSON string
get_ingredient_substitutes200_response_instance = GetIngredientSubstitutes200Response.from_json(json)
# print the JSON string representation of the object
print GetIngredientSubstitutes200Response.to_json()

# convert the object into a dict
get_ingredient_substitutes200_response_dict = get_ingredient_substitutes200_response_instance.to_dict()
# create an instance of GetIngredientSubstitutes200Response from a dict
get_ingredient_substitutes200_response_form_dict = get_ingredient_substitutes200_response.from_dict(get_ingredient_substitutes200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


