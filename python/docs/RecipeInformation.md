# RecipeInformation



## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **str** |  | 
**image** | **str** |  | 
**image_type** | **str** |  | [optional] 
**servings** | **float** |  | 
**ready_in_minutes** | **int** |  | 
**preparation_minutes** | **int** |  | [optional] 
**cooking_minutes** | **int** |  | [optional] 
**license** | **str** |  | [optional] 
**source_name** | **str** |  | 
**source_url** | **str** |  | 
**spoonacular_source_url** | **str** |  | 
**aggregate_likes** | **int** |  | 
**health_score** | **float** |  | 
**spoonacular_score** | **float** |  | 
**price_per_serving** | **float** |  | 
**analyzed_instructions** | **List[object]** |  | 
**cheap** | **bool** |  | 
**credits_text** | **str** |  | 
**cuisines** | **List[str]** |  | 
**dairy_free** | **bool** |  | 
**diets** | **List[str]** |  | 
**gaps** | **str** |  | 
**gluten_free** | **bool** |  | 
**instructions** | **str** |  | 
**low_fodmap** | **bool** |  | 
**occasions** | **List[str]** |  | 
**sustainable** | **bool** |  | 
**vegan** | **bool** |  | 
**vegetarian** | **bool** |  | 
**very_healthy** | **bool** |  | 
**very_popular** | **bool** |  | 
**weight_watcher_smart_points** | **float** |  | 
**dish_types** | **List[str]** |  | 
**extended_ingredients** | [**List[RecipeInformationExtendedIngredientsInner]**](RecipeInformationExtendedIngredientsInner.md) |  | 
**summary** | **str** |  | 
**wine_pairing** | [**RecipeInformationWinePairing**](RecipeInformationWinePairing.md) |  | [optional] 
**taste** | [**TasteInformation**](TasteInformation.md) |  | [optional] 

## Example

```python
from spoonacular.models.recipe_information import RecipeInformation

# TODO update the JSON string below
json = "{}"
# create an instance of RecipeInformation from a JSON string
recipe_information_instance = RecipeInformation.from_json(json)
# print the JSON string representation of the object
print(RecipeInformation.to_json())

# convert the object into a dict
recipe_information_dict = recipe_information_instance.to_dict()
# create an instance of RecipeInformation from a dict
recipe_information_from_dict = RecipeInformation.from_dict(recipe_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


