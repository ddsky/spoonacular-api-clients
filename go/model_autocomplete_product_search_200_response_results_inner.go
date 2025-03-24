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

// checks if the AutocompleteProductSearch200ResponseResultsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &AutocompleteProductSearch200ResponseResultsInner{}

// AutocompleteProductSearch200ResponseResultsInner struct for AutocompleteProductSearch200ResponseResultsInner
type AutocompleteProductSearch200ResponseResultsInner struct {
	Id int32 `json:"id"`
	Title string `json:"title"`
}

type _AutocompleteProductSearch200ResponseResultsInner AutocompleteProductSearch200ResponseResultsInner

// NewAutocompleteProductSearch200ResponseResultsInner instantiates a new AutocompleteProductSearch200ResponseResultsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAutocompleteProductSearch200ResponseResultsInner(id int32, title string) *AutocompleteProductSearch200ResponseResultsInner {
	this := AutocompleteProductSearch200ResponseResultsInner{}
	this.Id = id
	this.Title = title
	return &this
}

// NewAutocompleteProductSearch200ResponseResultsInnerWithDefaults instantiates a new AutocompleteProductSearch200ResponseResultsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAutocompleteProductSearch200ResponseResultsInnerWithDefaults() *AutocompleteProductSearch200ResponseResultsInner {
	this := AutocompleteProductSearch200ResponseResultsInner{}
	return &this
}

// GetId returns the Id field value
func (o *AutocompleteProductSearch200ResponseResultsInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *AutocompleteProductSearch200ResponseResultsInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *AutocompleteProductSearch200ResponseResultsInner) SetId(v int32) {
	o.Id = v
}

// GetTitle returns the Title field value
func (o *AutocompleteProductSearch200ResponseResultsInner) GetTitle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Title
}

// GetTitleOk returns a tuple with the Title field value
// and a boolean to check if the value has been set.
func (o *AutocompleteProductSearch200ResponseResultsInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Title, true
}

// SetTitle sets field value
func (o *AutocompleteProductSearch200ResponseResultsInner) SetTitle(v string) {
	o.Title = v
}

func (o AutocompleteProductSearch200ResponseResultsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o AutocompleteProductSearch200ResponseResultsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["title"] = o.Title
	return toSerialize, nil
}

func (o *AutocompleteProductSearch200ResponseResultsInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"title",
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

	varAutocompleteProductSearch200ResponseResultsInner := _AutocompleteProductSearch200ResponseResultsInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varAutocompleteProductSearch200ResponseResultsInner)

	if err != nil {
		return err
	}

	*o = AutocompleteProductSearch200ResponseResultsInner(varAutocompleteProductSearch200ResponseResultsInner)

	return err
}

type NullableAutocompleteProductSearch200ResponseResultsInner struct {
	value *AutocompleteProductSearch200ResponseResultsInner
	isSet bool
}

func (v NullableAutocompleteProductSearch200ResponseResultsInner) Get() *AutocompleteProductSearch200ResponseResultsInner {
	return v.value
}

func (v *NullableAutocompleteProductSearch200ResponseResultsInner) Set(val *AutocompleteProductSearch200ResponseResultsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableAutocompleteProductSearch200ResponseResultsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableAutocompleteProductSearch200ResponseResultsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAutocompleteProductSearch200ResponseResultsInner(val *AutocompleteProductSearch200ResponseResultsInner) *NullableAutocompleteProductSearch200ResponseResultsInner {
	return &NullableAutocompleteProductSearch200ResponseResultsInner{value: val, isSet: true}
}

func (v NullableAutocompleteProductSearch200ResponseResultsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAutocompleteProductSearch200ResponseResultsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


