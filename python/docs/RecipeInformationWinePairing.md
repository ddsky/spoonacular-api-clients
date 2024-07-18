# RecipeInformationWinePairing


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paired_wines** | **List[str]** |  | [optional] 
**pairing_text** | **str** |  | [optional] 
**product_matches** | [**List[RecipeInformationWinePairingProductMatchesInner]**](RecipeInformationWinePairingProductMatchesInner.md) |  | [optional] 

## Example

```python
from spoonacular.models.recipe_information_wine_pairing import RecipeInformationWinePairing

# TODO update the JSON string below
json = "{}"
# create an instance of RecipeInformationWinePairing from a JSON string
recipe_information_wine_pairing_instance = RecipeInformationWinePairing.from_json(json)
# print the JSON string representation of the object
print(RecipeInformationWinePairing.to_json())

# convert the object into a dict
recipe_information_wine_pairing_dict = recipe_information_wine_pairing_instance.to_dict()
# create an instance of RecipeInformationWinePairing from a dict
recipe_information_wine_pairing_from_dict = RecipeInformationWinePairing.from_dict(recipe_information_wine_pairing_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


