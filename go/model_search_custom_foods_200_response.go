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

// SearchCustomFoods200Response 
type SearchCustomFoods200Response struct {
	CustomFoods []SearchCustomFoods200ResponseCustomFoodsInner `json:"customFoods"`
	Type string `json:"type"`
	Offset int32 `json:"offset"`
	Number int32 `json:"number"`
}

// NewSearchCustomFoods200Response instantiates a new SearchCustomFoods200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchCustomFoods200Response(customFoods []SearchCustomFoods200ResponseCustomFoodsInner, type_ string, offset int32, number int32) *SearchCustomFoods200Response {
	this := SearchCustomFoods200Response{}
	this.CustomFoods = customFoods
	this.Type = type_
	this.Offset = offset
	this.Number = number
	return &this
}

// NewSearchCustomFoods200ResponseWithDefaults instantiates a new SearchCustomFoods200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchCustomFoods200ResponseWithDefaults() *SearchCustomFoods200Response {
	this := SearchCustomFoods200Response{}
	return &this
}

// GetCustomFoods returns the CustomFoods field value
func (o *SearchCustomFoods200Response) GetCustomFoods() []SearchCustomFoods200ResponseCustomFoodsInner {
	if o == nil {
		var ret []SearchCustomFoods200ResponseCustomFoodsInner
		return ret
	}

	return o.CustomFoods
}

// GetCustomFoodsOk returns a tuple with the CustomFoods field value
// and a boolean to check if the value has been set.
func (o *SearchCustomFoods200Response) GetCustomFoodsOk() ([]SearchCustomFoods200ResponseCustomFoodsInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.CustomFoods, true
}

// SetCustomFoods sets field value
func (o *SearchCustomFoods200Response) SetCustomFoods(v []SearchCustomFoods200ResponseCustomFoodsInner) {
	o.CustomFoods = v
}

// GetType returns the Type field value
func (o *SearchCustomFoods200Response) GetType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Type
}

// GetTypeOk returns a tuple with the Type field value
// and a boolean to check if the value has been set.
func (o *SearchCustomFoods200Response) GetTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Type, true
}

// SetType sets field value
func (o *SearchCustomFoods200Response) SetType(v string) {
	o.Type = v
}

// GetOffset returns the Offset field value
func (o *SearchCustomFoods200Response) GetOffset() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Offset
}

// GetOffsetOk returns a tuple with the Offset field value
// and a boolean to check if the value has been set.
func (o *SearchCustomFoods200Response) GetOffsetOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Offset, true
}

// SetOffset sets field value
func (o *SearchCustomFoods200Response) SetOffset(v int32) {
	o.Offset = v
}

// GetNumber returns the Number field value
func (o *SearchCustomFoods200Response) GetNumber() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Number
}

// GetNumberOk returns a tuple with the Number field value
// and a boolean to check if the value has been set.
func (o *SearchCustomFoods200Response) GetNumberOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Number, true
}

// SetNumber sets field value
func (o *SearchCustomFoods200Response) SetNumber(v int32) {
	o.Number = v
}

func (o SearchCustomFoods200Response) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["customFoods"] = o.CustomFoods
	}
	if true {
		toSerialize["type"] = o.Type
	}
	if true {
		toSerialize["offset"] = o.Offset
	}
	if true {
		toSerialize["number"] = o.Number
	}
	return json.Marshal(toSerialize)
}

type NullableSearchCustomFoods200Response struct {
	value *SearchCustomFoods200Response
	isSet bool
}

func (v NullableSearchCustomFoods200Response) Get() *SearchCustomFoods200Response {
	return v.value
}

func (v *NullableSearchCustomFoods200Response) Set(val *SearchCustomFoods200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchCustomFoods200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchCustomFoods200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchCustomFoods200Response(val *SearchCustomFoods200Response) *NullableSearchCustomFoods200Response {
	return &NullableSearchCustomFoods200Response{value: val, isSet: true}
}

func (v NullableSearchCustomFoods200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchCustomFoods200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


