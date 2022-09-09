# OpenapiClient::SearchGroceryProductsByUPC200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **title** | **String** |  |  |
| **badges** | **Array&lt;String&gt;** |  |  |
| **important_badges** | **Array&lt;String&gt;** |  |  |
| **breadcrumbs** | **Array&lt;String&gt;** |  |  |
| **generated_text** | **String** |  |  |
| **image_type** | **String** |  |  |
| **ingredient_count** | **Integer** |  | [optional] |
| **ingredient_list** | **String** |  |  |
| **ingredients** | [**Array&lt;SearchGroceryProductsByUPC200ResponseIngredientsInner&gt;**](SearchGroceryProductsByUPC200ResponseIngredientsInner.md) |  |  |
| **likes** | **Float** |  |  |
| **nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  |  |
| **price** | **Float** |  |  |
| **servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  |  |
| **spoonacular_score** | **Float** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchGroceryProductsByUPC200Response.new(
  id: null,
  title: null,
  badges: null,
  important_badges: null,
  breadcrumbs: null,
  generated_text: null,
  image_type: null,
  ingredient_count: null,
  ingredient_list: null,
  ingredients: null,
  likes: null,
  nutrition: null,
  price: null,
  servings: null,
  spoonacular_score: null
)
```

