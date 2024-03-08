# GetRecipeInformation200ResponseWinePairing


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paired_wines** | **List[str]** |  | 
**pairing_text** | **str** |  | 
**product_matches** | [**List[GetRecipeInformation200ResponseWinePairingProductMatchesInner]**](GetRecipeInformation200ResponseWinePairingProductMatchesInner.md) |  | 

## Example

```python
from spoonacular.models.get_recipe_information200_response_wine_pairing import GetRecipeInformation200ResponseWinePairing

# TODO update the JSON string below
json = "{}"
# create an instance of GetRecipeInformation200ResponseWinePairing from a JSON string
get_recipe_information200_response_wine_pairing_instance = GetRecipeInformation200ResponseWinePairing.from_json(json)
# print the JSON string representation of the object
print GetRecipeInformation200ResponseWinePairing.to_json()

# convert the object into a dict
get_recipe_information200_response_wine_pairing_dict = get_recipe_information200_response_wine_pairing_instance.to_dict()
# create an instance of GetRecipeInformation200ResponseWinePairing from a dict
get_recipe_information200_response_wine_pairing_form_dict = get_recipe_information200_response_wine_pairing.from_dict(get_recipe_information200_response_wine_pairing_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


