# OpenapiClient::GetProductInformation200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **title** | **String** |  |  |
| **breadcrumbs** | **Array&lt;String&gt;** |  |  |
| **image_type** | **String** |  |  |
| **badges** | **Array&lt;String&gt;** |  |  |
| **important_badges** | **Array&lt;String&gt;** |  |  |
| **ingredient_count** | **Integer** |  |  |
| **generated_text** | **Object** |  | [optional] |
| **ingredient_list** | **String** |  |  |
| **ingredients** | [**Array&lt;GetProductInformation200ResponseIngredientsInner&gt;**](GetProductInformation200ResponseIngredientsInner.md) |  |  |
| **likes** | **Float** |  |  |
| **aisle** | **String** |  |  |
| **nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  |  |
| **price** | **Float** |  |  |
| **servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  |  |
| **spoonacular_score** | **Float** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetProductInformation200Response.new(
  id: null,
  title: null,
  breadcrumbs: null,
  image_type: null,
  badges: null,
  important_badges: null,
  ingredient_count: null,
  generated_text: null,
  ingredient_list: null,
  ingredients: null,
  likes: null,
  aisle: null,
  nutrition: null,
  price: null,
  servings: null,
  spoonacular_score: null
)
```

