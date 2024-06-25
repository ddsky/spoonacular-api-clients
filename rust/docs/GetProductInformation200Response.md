# GetProductInformation200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** |  | 
**title** | **String** |  | 
**breadcrumbs** | **Vec<String>** |  | 
**image_type** | **String** |  | 
**badges** | **Vec<String>** |  | 
**important_badges** | **Vec<String>** |  | 
**ingredient_count** | **i32** |  | 
**generated_text** | Option<**String**> |  | [optional]
**ingredient_list** | **String** |  | 
**ingredients** | [**Vec<models::GetProductInformation200ResponseIngredientsInner>**](getProductInformation_200_response_ingredients_inner.md) |  | 
**likes** | **f64** |  | 
**aisle** | **String** |  | 
**nutrition** | [**models::SearchGroceryProductsByUpc200ResponseNutrition**](searchGroceryProductsByUPC_200_response_nutrition.md) |  | 
**price** | **f64** |  | 
**servings** | [**models::SearchGroceryProductsByUpc200ResponseServings**](searchGroceryProductsByUPC_200_response_servings.md) |  | 
**spoonacular_score** | **f64** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


