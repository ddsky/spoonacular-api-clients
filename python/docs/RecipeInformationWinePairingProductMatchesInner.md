# RecipeInformationWinePairingProductMatchesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**description** | **str** |  | 
**price** | **str** |  | 
**image_url** | **str** |  | 
**average_rating** | **float** |  | 
**rating_count** | **int** |  | 
**score** | **float** |  | 
**link** | **str** |  | 

## Example

```python
from spoonacular.models.recipe_information_wine_pairing_product_matches_inner import RecipeInformationWinePairingProductMatchesInner

# TODO update the JSON string below
json = "{}"
# create an instance of RecipeInformationWinePairingProductMatchesInner from a JSON string
recipe_information_wine_pairing_product_matches_inner_instance = RecipeInformationWinePairingProductMatchesInner.from_json(json)
# print the JSON string representation of the object
print(RecipeInformationWinePairingProductMatchesInner.to_json())

# convert the object into a dict
recipe_information_wine_pairing_product_matches_inner_dict = recipe_information_wine_pairing_product_matches_inner_instance.to_dict()
# create an instance of RecipeInformationWinePairingProductMatchesInner from a dict
recipe_information_wine_pairing_product_matches_inner_from_dict = RecipeInformationWinePairingProductMatchesInner.from_dict(recipe_information_wine_pairing_product_matches_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


