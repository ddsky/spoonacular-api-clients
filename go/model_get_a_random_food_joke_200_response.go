/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 1.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// GetARandomFoodJoke200Response 
type GetARandomFoodJoke200Response struct {
	Text string `json:"text"`
}

// NewGetARandomFoodJoke200Response instantiates a new GetARandomFoodJoke200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetARandomFoodJoke200Response(text string) *GetARandomFoodJoke200Response {
	this := GetARandomFoodJoke200Response{}
	this.Text = text
	return &this
}

// NewGetARandomFoodJoke200ResponseWithDefaults instantiates a new GetARandomFoodJoke200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetARandomFoodJoke200ResponseWithDefaults() *GetARandomFoodJoke200Response {
	this := GetARandomFoodJoke200Response{}
	return &this
}

// GetText returns the Text field value
func (o *GetARandomFoodJoke200Response) GetText() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Text
}

// GetTextOk returns a tuple with the Text field value
// and a boolean to check if the value has been set.
func (o *GetARandomFoodJoke200Response) GetTextOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Text, true
}

// SetText sets field value
func (o *GetARandomFoodJoke200Response) SetText(v string) {
	o.Text = v
}

func (o GetARandomFoodJoke200Response) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["text"] = o.Text
	}
	return json.Marshal(toSerialize)
}

type NullableGetARandomFoodJoke200Response struct {
	value *GetARandomFoodJoke200Response
	isSet bool
}

func (v NullableGetARandomFoodJoke200Response) Get() *GetARandomFoodJoke200Response {
	return v.value
}

func (v *NullableGetARandomFoodJoke200Response) Set(val *GetARandomFoodJoke200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGetARandomFoodJoke200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGetARandomFoodJoke200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetARandomFoodJoke200Response(val *GetARandomFoodJoke200Response) *NullableGetARandomFoodJoke200Response {
	return &NullableGetARandomFoodJoke200Response{value: val, isSet: true}
}

func (v NullableGetARandomFoodJoke200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetARandomFoodJoke200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


