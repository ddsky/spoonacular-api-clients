/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 2.0.2
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the AddToShoppingListRequest type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &AddToShoppingListRequest{}

// AddToShoppingListRequest 
type AddToShoppingListRequest struct {
	Item string `json:"item"`
	Aisle string `json:"aisle"`
	Parse bool `json:"parse"`
}

type _AddToShoppingListRequest AddToShoppingListRequest

// NewAddToShoppingListRequest instantiates a new AddToShoppingListRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAddToShoppingListRequest(item string, aisle string, parse bool) *AddToShoppingListRequest {
	this := AddToShoppingListRequest{}
	this.Item = item
	this.Aisle = aisle
	this.Parse = parse
	return &this
}

// NewAddToShoppingListRequestWithDefaults instantiates a new AddToShoppingListRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAddToShoppingListRequestWithDefaults() *AddToShoppingListRequest {
	this := AddToShoppingListRequest{}
	return &this
}

// GetItem returns the Item field value
func (o *AddToShoppingListRequest) GetItem() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Item
}

// GetItemOk returns a tuple with the Item field value
// and a boolean to check if the value has been set.
func (o *AddToShoppingListRequest) GetItemOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Item, true
}

// SetItem sets field value
func (o *AddToShoppingListRequest) SetItem(v string) {
	o.Item = v
}

// GetAisle returns the Aisle field value
func (o *AddToShoppingListRequest) GetAisle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Aisle
}

// GetAisleOk returns a tuple with the Aisle field value
// and a boolean to check if the value has been set.
func (o *AddToShoppingListRequest) GetAisleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Aisle, true
}

// SetAisle sets field value
func (o *AddToShoppingListRequest) SetAisle(v string) {
	o.Aisle = v
}

// GetParse returns the Parse field value
func (o *AddToShoppingListRequest) GetParse() bool {
	if o == nil {
		var ret bool
		return ret
	}

	return o.Parse
}

// GetParseOk returns a tuple with the Parse field value
// and a boolean to check if the value has been set.
func (o *AddToShoppingListRequest) GetParseOk() (*bool, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Parse, true
}

// SetParse sets field value
func (o *AddToShoppingListRequest) SetParse(v bool) {
	o.Parse = v
}

func (o AddToShoppingListRequest) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o AddToShoppingListRequest) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["item"] = o.Item
	toSerialize["aisle"] = o.Aisle
	toSerialize["parse"] = o.Parse
	return toSerialize, nil
}

func (o *AddToShoppingListRequest) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"item",
		"aisle",
		"parse",
	}

	allProperties := make(map[string]interface{})

	err = json.Unmarshal(data, &allProperties)

	if err != nil {
		return err;
	}

	for _, requiredProperty := range(requiredProperties) {
		if _, exists := allProperties[requiredProperty]; !exists {
			return fmt.Errorf("no value given for required property %v", requiredProperty)
		}
	}

	varAddToShoppingListRequest := _AddToShoppingListRequest{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varAddToShoppingListRequest)

	if err != nil {
		return err
	}

	*o = AddToShoppingListRequest(varAddToShoppingListRequest)

	return err
}

type NullableAddToShoppingListRequest struct {
	value *AddToShoppingListRequest
	isSet bool
}

func (v NullableAddToShoppingListRequest) Get() *AddToShoppingListRequest {
	return v.value
}

func (v *NullableAddToShoppingListRequest) Set(val *AddToShoppingListRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableAddToShoppingListRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableAddToShoppingListRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAddToShoppingListRequest(val *AddToShoppingListRequest) *NullableAddToShoppingListRequest {
	return &NullableAddToShoppingListRequest{value: val, isSet: true}
}

func (v NullableAddToShoppingListRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAddToShoppingListRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


