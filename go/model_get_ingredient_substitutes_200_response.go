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

// GetIngredientSubstitutes200Response 
type GetIngredientSubstitutes200Response struct {
	Ingredient string `json:"ingredient"`
	Substitutes []string `json:"substitutes"`
	Message string `json:"message"`
}

// NewGetIngredientSubstitutes200Response instantiates a new GetIngredientSubstitutes200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetIngredientSubstitutes200Response(ingredient string, substitutes []string, message string) *GetIngredientSubstitutes200Response {
	this := GetIngredientSubstitutes200Response{}
	this.Ingredient = ingredient
	this.Substitutes = substitutes
	this.Message = message
	return &this
}

// NewGetIngredientSubstitutes200ResponseWithDefaults instantiates a new GetIngredientSubstitutes200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetIngredientSubstitutes200ResponseWithDefaults() *GetIngredientSubstitutes200Response {
	this := GetIngredientSubstitutes200Response{}
	return &this
}

// GetIngredient returns the Ingredient field value
func (o *GetIngredientSubstitutes200Response) GetIngredient() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Ingredient
}

// GetIngredientOk returns a tuple with the Ingredient field value
// and a boolean to check if the value has been set.
func (o *GetIngredientSubstitutes200Response) GetIngredientOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Ingredient, true
}

// SetIngredient sets field value
func (o *GetIngredientSubstitutes200Response) SetIngredient(v string) {
	o.Ingredient = v
}

// GetSubstitutes returns the Substitutes field value
func (o *GetIngredientSubstitutes200Response) GetSubstitutes() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.Substitutes
}

// GetSubstitutesOk returns a tuple with the Substitutes field value
// and a boolean to check if the value has been set.
func (o *GetIngredientSubstitutes200Response) GetSubstitutesOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Substitutes, true
}

// SetSubstitutes sets field value
func (o *GetIngredientSubstitutes200Response) SetSubstitutes(v []string) {
	o.Substitutes = v
}

// GetMessage returns the Message field value
func (o *GetIngredientSubstitutes200Response) GetMessage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Message
}

// GetMessageOk returns a tuple with the Message field value
// and a boolean to check if the value has been set.
func (o *GetIngredientSubstitutes200Response) GetMessageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Message, true
}

// SetMessage sets field value
func (o *GetIngredientSubstitutes200Response) SetMessage(v string) {
	o.Message = v
}

func (o GetIngredientSubstitutes200Response) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["ingredient"] = o.Ingredient
	}
	if true {
		toSerialize["substitutes"] = o.Substitutes
	}
	if true {
		toSerialize["message"] = o.Message
	}
	return json.Marshal(toSerialize)
}

type NullableGetIngredientSubstitutes200Response struct {
	value *GetIngredientSubstitutes200Response
	isSet bool
}

func (v NullableGetIngredientSubstitutes200Response) Get() *GetIngredientSubstitutes200Response {
	return v.value
}

func (v *NullableGetIngredientSubstitutes200Response) Set(val *GetIngredientSubstitutes200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGetIngredientSubstitutes200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGetIngredientSubstitutes200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetIngredientSubstitutes200Response(val *GetIngredientSubstitutes200Response) *NullableGetIngredientSubstitutes200Response {
	return &NullableGetIngredientSubstitutes200Response{value: val, isSet: true}
}

func (v NullableGetIngredientSubstitutes200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetIngredientSubstitutes200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


