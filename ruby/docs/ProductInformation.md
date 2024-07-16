# OpenapiClient::ProductInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  |  |
| **title** | **String** |  |  |
| **upc** | **String** |  | [optional] |
| **usda_code** | **String** |  | [optional] |
| **breadcrumbs** | **Array&lt;String&gt;** |  |  |
| **image_type** | **String** |  |  |
| **badges** | **Array&lt;String&gt;** |  |  |
| **important_badges** | **Array&lt;String&gt;** |  |  |
| **ingredient_count** | **Integer** |  |  |
| **generated_text** | **String** |  | [optional] |
| **ingredient_list** | **String** |  |  |
| **ingredients** | [**Array&lt;IngredientBasics&gt;**](IngredientBasics.md) |  |  |
| **likes** | **Float** |  |  |
| **aisle** | **String** |  |  |
| **credits** | [**ProductInformationCredits**](ProductInformationCredits.md) |  | [optional] |
| **nutrition** | [**SearchGroceryProductsByUPC200ResponseNutrition**](SearchGroceryProductsByUPC200ResponseNutrition.md) |  |  |
| **price** | **Float** |  |  |
| **servings** | [**SearchGroceryProductsByUPC200ResponseServings**](SearchGroceryProductsByUPC200ResponseServings.md) |  |  |
| **spoonacular_score** | **Float** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ProductInformation.new(
  id: null,
  title: null,
  upc: null,
  usda_code: null,
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
  credits: null,
  nutrition: null,
  price: null,
  servings: null,
  spoonacular_score: null
)
```

