# OpenapiClient::GetMenuItemInformation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **title** | **String** |  |  |
| **restaurant_chain** | **String** |  |  |
| **nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  |  |
| **badges** | **Array&lt;String&gt;** |  |  |
| **breadcrumbs** | **Array&lt;String&gt;** |  |  |
| **generated_text** | **String** |  | [optional] |
| **image_type** | **String** |  |  |
| **likes** | **Float** |  |  |
| **servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  |  |
| **price** | **Float** |  | [optional] |
| **spoonacular_score** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetMenuItemInformation200Response.new(
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

