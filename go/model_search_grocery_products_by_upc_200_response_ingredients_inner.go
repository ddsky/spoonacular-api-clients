/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 1.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the SearchGroceryProductsByUPC200ResponseIngredientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchGroceryProductsByUPC200ResponseIngredientsInner{}

// SearchGroceryProductsByUPC200ResponseIngredientsInner struct for SearchGroceryProductsByUPC200ResponseIngredientsInner
type SearchGroceryProductsByUPC200ResponseIngredientsInner struct {
	Description interface{} `json:"description,omitempty"`
	Name string `json:"name"`
	SafetyLevel interface{} `json:"safety_level,omitempty"`
}

type _SearchGroceryProductsByUPC200ResponseIngredientsInner SearchGroceryProductsByUPC200ResponseIngredientsInner

// NewSearchGroceryProductsByUPC200ResponseIngredientsInner instantiates a new SearchGroceryProductsByUPC200ResponseIngredientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchGroceryProductsByUPC200ResponseIngredientsInner(name string) *SearchGroceryProductsByUPC200ResponseIngredientsInner {
	this := SearchGroceryProductsByUPC200ResponseIngredientsInner{}
	this.Name = name
	return &this
}

// NewSearchGroceryProductsByUPC200ResponseIngredientsInnerWithDefaults instantiates a new SearchGroceryProductsByUPC200ResponseIngredientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchGroceryProductsByUPC200ResponseIngredientsInnerWithDefaults() *SearchGroceryProductsByUPC200ResponseIngredientsInner {
	this := SearchGroceryProductsByUPC200ResponseIngredientsInner{}
	return &this
}

// GetDescription returns the Description field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) GetDescription() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.Description
}

// GetDescriptionOk returns a tuple with the Description field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) GetDescriptionOk() (*interface{}, bool) {
	if o == nil || IsNil(o.Description) {
		return nil, false
	}
	return &o.Description, true
}

// HasDescription returns a boolean if a field has been set.
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) HasDescription() bool {
	if o != nil && IsNil(o.Description) {
		return true
	}

	return false
}

// SetDescription gets a reference to the given interface{} and assigns it to the Description field.
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) SetDescription(v interface{}) {
	o.Description = v
}

// GetName returns the Name field value
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) SetName(v string) {
	o.Name = v
}

// GetSafetyLevel returns the SafetyLevel field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) GetSafetyLevel() interface{} {
	if o == nil {
		var ret interface{}
		return ret
	}
	return o.SafetyLevel
}

// GetSafetyLevelOk returns a tuple with the SafetyLevel field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) GetSafetyLevelOk() (*interface{}, bool) {
	if o == nil || IsNil(o.SafetyLevel) {
		return nil, false
	}
	return &o.SafetyLevel, true
}

// HasSafetyLevel returns a boolean if a field has been set.
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) HasSafetyLevel() bool {
	if o != nil && IsNil(o.SafetyLevel) {
		return true
	}

	return false
}

// SetSafetyLevel gets a reference to the given interface{} and assigns it to the SafetyLevel field.
func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) SetSafetyLevel(v interface{}) {
	o.SafetyLevel = v
}

func (o SearchGroceryProductsByUPC200ResponseIngredientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchGroceryProductsByUPC200ResponseIngredientsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Description != nil {
		toSerialize["description"] = o.Description
	}
	toSerialize["name"] = o.Name
	if o.SafetyLevel != nil {
		toSerialize["safety_level"] = o.SafetyLevel
	}
	return toSerialize, nil
}

func (o *SearchGroceryProductsByUPC200ResponseIngredientsInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"name",
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

	varSearchGroceryProductsByUPC200ResponseIngredientsInner := _SearchGroceryProductsByUPC200ResponseIngredientsInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varSearchGroceryProductsByUPC200ResponseIngredientsInner)

	if err != nil {
		return err
	}

	*o = SearchGroceryProductsByUPC200ResponseIngredientsInner(varSearchGroceryProductsByUPC200ResponseIngredientsInner)

	return err
}

type NullableSearchGroceryProductsByUPC200ResponseIngredientsInner struct {
	value *SearchGroceryProductsByUPC200ResponseIngredientsInner
	isSet bool
}

func (v NullableSearchGroceryProductsByUPC200ResponseIngredientsInner) Get() *SearchGroceryProductsByUPC200ResponseIngredientsInner {
	return v.value
}

func (v *NullableSearchGroceryProductsByUPC200ResponseIngredientsInner) Set(val *SearchGroceryProductsByUPC200ResponseIngredientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchGroceryProductsByUPC200ResponseIngredientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchGroceryProductsByUPC200ResponseIngredientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchGroceryProductsByUPC200ResponseIngredientsInner(val *SearchGroceryProductsByUPC200ResponseIngredientsInner) *NullableSearchGroceryProductsByUPC200ResponseIngredientsInner {
	return &NullableSearchGroceryProductsByUPC200ResponseIngredientsInner{value: val, isSet: true}
}

func (v NullableSearchGroceryProductsByUPC200ResponseIngredientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchGroceryProductsByUPC200ResponseIngredientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


