# SearchGroceryProductsByUPC200ResponseNutrition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrients** | [**List[ParseIngredients200ResponseInnerNutritionNutrientsInner]**](ParseIngredients200ResponseInnerNutritionNutrientsInner.md) |  | 
**caloric_breakdown** | [**ParseIngredients200ResponseInnerNutritionCaloricBreakdown**](ParseIngredients200ResponseInnerNutritionCaloricBreakdown.md) |  | 

## Example

```python
from spoonacular.models.search_grocery_products_by_upc200_response_nutrition import SearchGroceryProductsByUPC200ResponseNutrition

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGroceryProductsByUPC200ResponseNutrition from a JSON string
search_grocery_products_by_upc200_response_nutrition_instance = SearchGroceryProductsByUPC200ResponseNutrition.from_json(json)
# print the JSON string representation of the object
print SearchGroceryProductsByUPC200ResponseNutrition.to_json()

# convert the object into a dict
search_grocery_products_by_upc200_response_nutrition_dict = search_grocery_products_by_upc200_response_nutrition_instance.to_dict()
# create an instance of SearchGroceryProductsByUPC200ResponseNutrition from a dict
search_grocery_products_by_upc200_response_nutrition_form_dict = search_grocery_products_by_upc200_response_nutrition.from_dict(search_grocery_products_by_upc200_response_nutrition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


