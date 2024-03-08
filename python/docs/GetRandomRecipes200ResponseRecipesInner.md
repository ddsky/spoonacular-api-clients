# GetRandomRecipes200ResponseRecipesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**image** | **str** |  | 
**image_type** | **str** |  | 
**servings** | **float** |  | 
**ready_in_minutes** | **int** |  | 
**license** | **str** |  | 
**source_name** | **str** |  | 
**source_url** | **str** |  | 
**spoonacular_source_url** | **str** |  | 
**aggregate_likes** | **float** |  | 
**health_score** | **float** |  | 
**spoonacular_score** | **float** |  | 
**price_per_serving** | **float** |  | 
**analyzed_instructions** | **List[object]** |  | [optional] 
**cheap** | **bool** |  | 
**credits_text** | **str** |  | 
**cuisines** | **List[str]** |  | [optional] 
**dairy_free** | **bool** |  | 
**diets** | **List[str]** |  | [optional] 
**gaps** | **str** |  | 
**gluten_free** | **bool** |  | 
**instructions** | **str** |  | 
**ketogenic** | **bool** |  | 
**low_fodmap** | **bool** |  | 
**occasions** | **List[str]** |  | [optional] 
**sustainable** | **bool** |  | 
**vegan** | **bool** |  | 
**vegetarian** | **bool** |  | 
**very_healthy** | **bool** |  | 
**very_popular** | **bool** |  | 
**whole30** | **bool** |  | 
**weight_watcher_smart_points** | **float** |  | 
**dish_types** | **List[str]** |  | [optional] 
**extended_ingredients** | [**List[GetRecipeInformation200ResponseExtendedIngredientsInner]**](GetRecipeInformation200ResponseExtendedIngredientsInner.md) |  | [optional] 
**summary** | **str** |  | 
**wine_pairing** | [**GetRecipeInformation200ResponseWinePairing**](GetRecipeInformation200ResponseWinePairing.md) |  | [optional] 

## Example

```python
from spoonacular.models.get_random_recipes200_response_recipes_inner import GetRandomRecipes200ResponseRecipesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetRandomRecipes200ResponseRecipesInner from a JSON string
get_random_recipes200_response_recipes_inner_instance = GetRandomRecipes200ResponseRecipesInner.from_json(json)
# print the JSON string representation of the object
print GetRandomRecipes200ResponseRecipesInner.to_json()

# convert the object into a dict
get_random_recipes200_response_recipes_inner_dict = get_random_recipes200_response_recipes_inner_instance.to_dict()
# create an instance of GetRandomRecipes200ResponseRecipesInner from a dict
get_random_recipes200_response_recipes_inner_form_dict = get_random_recipes200_response_recipes_inner.from_dict(get_random_recipes200_response_recipes_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


