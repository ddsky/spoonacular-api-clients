# GetIngredientInformation200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **i32** |  | 
**original** | **String** |  | 
**original_name** | **String** |  | 
**name** | **String** |  | 
**name_clean** | **String** |  | 
**amount** | **f64** |  | 
**unit** | **String** |  | 
**unit_short** | **String** |  | 
**unit_long** | **String** |  | 
**possible_units** | **Vec<String>** |  | 
**estimated_cost** | [**models::ParseIngredients200ResponseInnerEstimatedCost**](parseIngredients_200_response_inner_estimatedCost.md) |  | 
**consistency** | **String** |  | 
**shopping_list_units** | **Vec<String>** |  | 
**aisle** | **String** |  | 
**image** | **String** |  | 
**meta** | [**Vec<serde_json::Value>**](serde_json::Value.md) |  | 
**nutrition** | [**models::GetIngredientInformation200ResponseNutrition**](getIngredientInformation_200_response_nutrition.md) |  | 
**category_path** | **Vec<String>** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


