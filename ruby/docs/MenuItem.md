# OpenapiClient::MenuItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **title** | **String** |  |  |
| **restaurant_chain** | **String** |  |  |
| **nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  | [optional] |
| **badges** | **Array&lt;String&gt;** |  | [optional] |
| **breadcrumbs** | **Array&lt;String&gt;** |  | [optional] |
| **generated_text** | **String** |  | [optional] |
| **image_type** | **String** |  | [optional] |
| **likes** | **Integer** |  | [optional] |
| **servings** | [**MenuItemServings**](MenuItemServings.md) |  | [optional] |
| **price** | **Float** |  |  |
| **spoonacular_score** | **Float** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MenuItem.new(
  id: null,
  title: null,
  restaurant_chain: null,
  nutrition: null,
  badges: null,
  breadcrumbs: null,
  generated_text: null,
  image_type: null,
  likes: null,
  servings: null,
  price: null,
  spoonacular_score: null
)
```

