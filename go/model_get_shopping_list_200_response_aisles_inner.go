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

// GetShoppingList200ResponseAislesInner struct for GetShoppingList200ResponseAislesInner
type GetShoppingList200ResponseAislesInner struct {
	Aisle string `json:"aisle"`
	Items []GetShoppingList200ResponseAislesInnerItemsInner `json:"items,omitempty"`
}

// NewGetShoppingList200ResponseAislesInner instantiates a new GetShoppingList200ResponseAislesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetShoppingList200ResponseAislesInner(aisle string) *GetShoppingList200ResponseAislesInner {
	this := GetShoppingList200ResponseAislesInner{}
	this.Aisle = aisle
	return &this
}

// NewGetShoppingList200ResponseAislesInnerWithDefaults instantiates a new GetShoppingList200ResponseAislesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetShoppingList200ResponseAislesInnerWithDefaults() *GetShoppingList200ResponseAislesInner {
	this := GetShoppingList200ResponseAislesInner{}
	return &this
}

// GetAisle returns the Aisle field value
func (o *GetShoppingList200ResponseAislesInner) GetAisle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Aisle
}

// GetAisleOk returns a tuple with the Aisle field value
// and a boolean to check if the value has been set.
func (o *GetShoppingList200ResponseAislesInner) GetAisleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Aisle, true
}

// SetAisle sets field value
func (o *GetShoppingList200ResponseAislesInner) SetAisle(v string) {
	o.Aisle = v
}

// GetItems returns the Items field value if set, zero value otherwise.
func (o *GetShoppingList200ResponseAislesInner) GetItems() []GetShoppingList200ResponseAislesInnerItemsInner {
	if o == nil || o.Items == nil {
		var ret []GetShoppingList200ResponseAislesInnerItemsInner
		return ret
	}
	return o.Items
}

// GetItemsOk returns a tuple with the Items field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetShoppingList200ResponseAislesInner) GetItemsOk() ([]GetShoppingList200ResponseAislesInnerItemsInner, bool) {
	if o == nil || o.Items == nil {
		return nil, false
	}
	return o.Items, true
}

// HasItems returns a boolean if a field has been set.
func (o *GetShoppingList200ResponseAislesInner) HasItems() bool {
	if o != nil && o.Items != nil {
		return true
	}

	return false
}

// SetItems gets a reference to the given []GetShoppingList200ResponseAislesInnerItemsInner and assigns it to the Items field.
func (o *GetShoppingList200ResponseAislesInner) SetItems(v []GetShoppingList200ResponseAislesInnerItemsInner) {
	o.Items = v
}

func (o GetShoppingList200ResponseAislesInner) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["aisle"] = o.Aisle
	}
	if o.Items != nil {
		toSerialize["items"] = o.Items
	}
	return json.Marshal(toSerialize)
}

type NullableGetShoppingList200ResponseAislesInner struct {
	value *GetShoppingList200ResponseAislesInner
	isSet bool
}

func (v NullableGetShoppingList200ResponseAislesInner) Get() *GetShoppingList200ResponseAislesInner {
	return v.value
}

func (v *NullableGetShoppingList200ResponseAislesInner) Set(val *GetShoppingList200ResponseAislesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableGetShoppingList200ResponseAislesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableGetShoppingList200ResponseAislesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetShoppingList200ResponseAislesInner(val *GetShoppingList200ResponseAislesInner) *NullableGetShoppingList200ResponseAislesInner {
	return &NullableGetShoppingList200ResponseAislesInner{value: val, isSet: true}
}

func (v NullableGetShoppingList200ResponseAislesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetShoppingList200ResponseAislesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


