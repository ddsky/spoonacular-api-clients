# OpenapiClient::GetRecipeInformation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **title** | **String** |  |  |
| **image** | **String** |  |  |
| **image_type** | **String** |  |  |
| **servings** | **Float** |  |  |
| **ready_in_minutes** | **Integer** |  |  |
| **license** | **String** |  |  |
| **source_name** | **String** |  |  |
| **source_url** | **String** |  |  |
| **spoonacular_source_url** | **String** |  |  |
| **aggregate_likes** | **Integer** |  |  |
| **health_score** | **Float** |  |  |
| **spoonacular_score** | **Float** |  |  |
| **price_per_serving** | **Float** |  |  |
| **analyzed_instructions** | **Array&lt;Object&gt;** |  |  |
| **cheap** | **Boolean** |  |  |
| **credits_text** | **String** |  |  |
| **cuisines** | **Array&lt;String&gt;** |  |  |
| **dairy_free** | **Boolean** |  |  |
| **diets** | **Array&lt;String&gt;** |  |  |
| **gaps** | **String** |  |  |
| **gluten_free** | **Boolean** |  |  |
| **instructions** | **String** |  |  |
| **ketogenic** | **Boolean** |  |  |
| **low_fodmap** | **Boolean** |  |  |
| **occasions** | **Array&lt;String&gt;** |  |  |
| **sustainable** | **Boolean** |  |  |
| **vegan** | **Boolean** |  |  |
| **vegetarian** | **Boolean** |  |  |
| **very_healthy** | **Boolean** |  |  |
| **very_popular** | **Boolean** |  |  |
| **whole30** | **Boolean** |  |  |
| **weight_watcher_smart_points** | **Float** |  |  |
| **dish_types** | **Array&lt;String&gt;** |  |  |
| **extended_ingredients** | [**Array&lt;GetRecipeInformation200ResponseExtendedIngredientsInner&gt;**](GetRecipeInformation200ResponseExtendedIngredientsInner.md) |  |  |
| **summary** | **String** |  |  |
| **wine_pairing** | [**GetRecipeInformation200ResponseWinePairing**](GetRecipeInformation200ResponseWinePairing.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetRecipeInformation200Response.new(
  id: null,
  title: null,
  image: null,
  image_type: null,
  servings: null,
  ready_in_minutes: null,
  license: null,
  source_name: null,
  source_url: null,
  spoonacular_source_url: null,
  aggregate_likes: null,
  health_score: null,
  spoonacular_score: null,
  price_per_serving: null,
  analyzed_instructions: null,
  cheap: null,
  credits_text: null,
  cuisines: null,
  dairy_free: null,
  diets: null,
  gaps: null,
  gluten_free: null,
  instructions: null,
  ketogenic: null,
  low_fodmap: null,
  occasions: null,
  sustainable: null,
  vegan: null,
  vegetarian: null,
  very_healthy: null,
  very_popular: null,
  whole30: null,
  weight_watcher_smart_points: null,
  dish_types: null,
  extended_ingredients: null,
  summary: null,
  wine_pairing: null
)
```

