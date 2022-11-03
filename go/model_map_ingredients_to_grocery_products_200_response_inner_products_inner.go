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

// MapIngredientsToGroceryProducts200ResponseInnerProductsInner struct for MapIngredientsToGroceryProducts200ResponseInnerProductsInner
type MapIngredientsToGroceryProducts200ResponseInnerProductsInner struct {
	Id int32 `json:"id"`
	Title string `json:"title"`
	Upc string `json:"upc"`
}

// NewMapIngredientsToGroceryProducts200ResponseInnerProductsInner instantiates a new MapIngredientsToGroceryProducts200ResponseInnerProductsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMapIngredientsToGroceryProducts200ResponseInnerProductsInner(id int32, title string, upc string) *MapIngredientsToGroceryProducts200ResponseInnerProductsInner {
	this := MapIngredientsToGroceryProducts200ResponseInnerProductsInner{}
	this.Id = id
	this.Title = title
	this.Upc = upc
	return &this
}

// NewMapIngredientsToGroceryProducts200ResponseInnerProductsInnerWithDefaults instantiates a new MapIngredientsToGroceryProducts200ResponseInnerProductsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMapIngredientsToGroceryProducts200ResponseInnerProductsInnerWithDefaults() *MapIngredientsToGroceryProducts200ResponseInnerProductsInner {
	this := MapIngredientsToGroceryProducts200ResponseInnerProductsInner{}
	return &this
}

// GetId returns the Id field value
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) SetId(v int32) {
	o.Id = v
}

// GetTitle returns the Title field value
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) GetTitle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Title
}

// GetTitleOk returns a tuple with the Title field value
// and a boolean to check if the value has been set.
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Title, true
}

// SetTitle sets field value
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) SetTitle(v string) {
	o.Title = v
}

// GetUpc returns the Upc field value
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) GetUpc() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Upc
}

// GetUpcOk returns a tuple with the Upc field value
// and a boolean to check if the value has been set.
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) GetUpcOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Upc, true
}

// SetUpc sets field value
func (o *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) SetUpc(v string) {
	o.Upc = v
}

func (o MapIngredientsToGroceryProducts200ResponseInnerProductsInner) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["title"] = o.Title
	}
	if true {
		toSerialize["upc"] = o.Upc
	}
	return json.Marshal(toSerialize)
}

type NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner struct {
	value *MapIngredientsToGroceryProducts200ResponseInnerProductsInner
	isSet bool
}

func (v NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner) Get() *MapIngredientsToGroceryProducts200ResponseInnerProductsInner {
	return v.value
}

func (v *NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner) Set(val *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner(val *MapIngredientsToGroceryProducts200ResponseInnerProductsInner) *NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner {
	return &NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner{value: val, isSet: true}
}

func (v NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMapIngredientsToGroceryProducts200ResponseInnerProductsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


