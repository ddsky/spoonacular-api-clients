# openapi.model.GetRandomRecipes200ResponseRecipesInner

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | 
**title** | **String** |  | 
**image** | **String** |  | 
**imageType** | **String** |  | 
**servings** | **num** |  | 
**readyInMinutes** | **int** |  | 
**license** | **String** |  | 
**sourceName** | **String** |  | 
**sourceUrl** | **String** |  | 
**spoonacularSourceUrl** | **String** |  | 
**aggregateLikes** | **num** |  | 
**healthScore** | **num** |  | 
**spoonacularScore** | **num** |  | 
**pricePerServing** | **num** |  | 
**analyzedInstructions** | [**List<Object>**](Object.md) |  | [optional] [default to const []]
**cheap** | **bool** |  | 
**creditsText** | **String** |  | 
**cuisines** | **List<String>** |  | [optional] [default to const []]
**dairyFree** | **bool** |  | 
**diets** | **List<String>** |  | [optional] [default to const []]
**gaps** | **String** |  | 
**glutenFree** | **bool** |  | 
**instructions** | **String** |  | 
**ketogenic** | **bool** |  | 
**lowFodmap** | **bool** |  | 
**occasions** | **List<String>** |  | [optional] [default to const []]
**sustainable** | **bool** |  | 
**vegan** | **bool** |  | 
**vegetarian** | **bool** |  | 
**veryHealthy** | **bool** |  | 
**veryPopular** | **bool** |  | 
**whole30** | **bool** |  | 
**weightWatcherSmartPoints** | **num** |  | 
**dishTypes** | **List<String>** |  | [optional] [default to const []]
**extendedIngredients** | [**Set<GetRecipeInformation200ResponseExtendedIngredientsInner>**](GetRecipeInformation200ResponseExtendedIngredientsInner.md) |  | [optional] [default to const {}]
**summary** | **String** |  | 
**winePairing** | [**GetRecipeInformation200ResponseWinePairing**](GetRecipeInformation200ResponseWinePairing.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


