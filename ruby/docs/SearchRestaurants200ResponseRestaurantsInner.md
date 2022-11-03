# OpenapiClient::SearchRestaurants200ResponseRestaurantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **phone_number** | **Integer** |  | [optional] |
| **address** | [**SearchRestaurants200ResponseRestaurantsInnerAddress**](SearchRestaurants200ResponseRestaurantsInnerAddress.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **local_hours** | [**SearchRestaurants200ResponseRestaurantsInnerLocalHours**](SearchRestaurants200ResponseRestaurantsInnerLocalHours.md) |  | [optional] |
| **cuisines** | **Array&lt;String&gt;** |  | [optional] |
| **food_photos** | **Array&lt;String&gt;** |  | [optional] |
| **logo_photos** | **Array&lt;String&gt;** |  | [optional] |
| **store_photos** | **Array&lt;Object&gt;** |  | [optional] |
| **dollar_signs** | **Integer** |  | [optional] |
| **pickup_enabled** | **Boolean** |  | [optional] |
| **delivery_enabled** | **Boolean** |  | [optional] |
| **is_open** | **Boolean** |  | [optional] |
| **offers_first_party_delivery** | **Boolean** |  | [optional] |
| **offers_third_party_delivery** | **Boolean** |  | [optional] |
| **miles** | **Float** |  | [optional] |
| **weighted_rating_value** | **Float** |  | [optional] |
| **aggregated_rating_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchRestaurants200ResponseRestaurantsInner.new(
  _id: null,
  name: null,
  phone_number: null,
  address: null,
  type: null,
  description: null,
  local_hours: null,
  cuisines: null,
  food_photos: null,
  logo_photos: null,
  store_photos: null,
  dollar_signs: null,
  pickup_enabled: null,
  delivery_enabled: null,
  is_open: null,
  offers_first_party_delivery: null,
  offers_third_party_delivery: null,
  miles: null,
  weighted_rating_value: null,
  aggregated_rating_count: null
)
```

