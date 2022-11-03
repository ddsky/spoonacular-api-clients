/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 1.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// SearchRestaurants200ResponseRestaurantsInnerLocalHours struct for SearchRestaurants200ResponseRestaurantsInnerLocalHours
type SearchRestaurants200ResponseRestaurantsInnerLocalHours struct {
	Operational *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational `json:"operational,omitempty"`
	Delivery *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational `json:"delivery,omitempty"`
	Pickup *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational `json:"pickup,omitempty"`
	DineIn *SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational `json:"dine_in,omitempty"`
}

// NewSearchRestaurants200ResponseRestaurantsInnerLocalHours instantiates a new SearchRestaurants200ResponseRestaurantsInnerLocalHours object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRestaurants200ResponseRestaurantsInnerLocalHours() *SearchRestaurants200ResponseRestaurantsInnerLocalHours {
	this := SearchRestaurants200ResponseRestaurantsInnerLocalHours{}
	return &this
}

// NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursWithDefaults instantiates a new SearchRestaurants200ResponseRestaurantsInnerLocalHours object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRestaurants200ResponseRestaurantsInnerLocalHoursWithDefaults() *SearchRestaurants200ResponseRestaurantsInnerLocalHours {
	this := SearchRestaurants200ResponseRestaurantsInnerLocalHours{}
	return &this
}

// GetOperational returns the Operational field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetOperational() SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	if o == nil || o.Operational == nil {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
		return ret
	}
	return *o.Operational
}

// GetOperationalOk returns a tuple with the Operational field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetOperationalOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational, bool) {
	if o == nil || o.Operational == nil {
		return nil, false
	}
	return o.Operational, true
}

// HasOperational returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) HasOperational() bool {
	if o != nil && o.Operational != nil {
		return true
	}

	return false
}

// SetOperational gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational and assigns it to the Operational field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) SetOperational(v SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	o.Operational = &v
}

// GetDelivery returns the Delivery field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetDelivery() SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	if o == nil || o.Delivery == nil {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
		return ret
	}
	return *o.Delivery
}

// GetDeliveryOk returns a tuple with the Delivery field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetDeliveryOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational, bool) {
	if o == nil || o.Delivery == nil {
		return nil, false
	}
	return o.Delivery, true
}

// HasDelivery returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) HasDelivery() bool {
	if o != nil && o.Delivery != nil {
		return true
	}

	return false
}

// SetDelivery gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational and assigns it to the Delivery field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) SetDelivery(v SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	o.Delivery = &v
}

// GetPickup returns the Pickup field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetPickup() SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	if o == nil || o.Pickup == nil {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
		return ret
	}
	return *o.Pickup
}

// GetPickupOk returns a tuple with the Pickup field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetPickupOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational, bool) {
	if o == nil || o.Pickup == nil {
		return nil, false
	}
	return o.Pickup, true
}

// HasPickup returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) HasPickup() bool {
	if o != nil && o.Pickup != nil {
		return true
	}

	return false
}

// SetPickup gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational and assigns it to the Pickup field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) SetPickup(v SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	o.Pickup = &v
}

// GetDineIn returns the DineIn field value if set, zero value otherwise.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetDineIn() SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {
	if o == nil || o.DineIn == nil {
		var ret SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
		return ret
	}
	return *o.DineIn
}

// GetDineInOk returns a tuple with the DineIn field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) GetDineInOk() (*SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational, bool) {
	if o == nil || o.DineIn == nil {
		return nil, false
	}
	return o.DineIn, true
}

// HasDineIn returns a boolean if a field has been set.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) HasDineIn() bool {
	if o != nil && o.DineIn != nil {
		return true
	}

	return false
}

// SetDineIn gets a reference to the given SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational and assigns it to the DineIn field.
func (o *SearchRestaurants200ResponseRestaurantsInnerLocalHours) SetDineIn(v SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational) {
	o.DineIn = &v
}

func (o SearchRestaurants200ResponseRestaurantsInnerLocalHours) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Operational != nil {
		toSerialize["operational"] = o.Operational
	}
	if o.Delivery != nil {
		toSerialize["delivery"] = o.Delivery
	}
	if o.Pickup != nil {
		toSerialize["pickup"] = o.Pickup
	}
	if o.DineIn != nil {
		toSerialize["dine_in"] = o.DineIn
	}
	return json.Marshal(toSerialize)
}

type NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours struct {
	value *SearchRestaurants200ResponseRestaurantsInnerLocalHours
	isSet bool
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) Get() *SearchRestaurants200ResponseRestaurantsInnerLocalHours {
	return v.value
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) Set(val *SearchRestaurants200ResponseRestaurantsInnerLocalHours) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRestaurants200ResponseRestaurantsInnerLocalHours(val *SearchRestaurants200ResponseRestaurantsInnerLocalHours) *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours {
	return &NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours{value: val, isSet: true}
}

func (v NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRestaurants200ResponseRestaurantsInnerLocalHours) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


