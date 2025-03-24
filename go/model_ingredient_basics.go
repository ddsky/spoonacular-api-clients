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

// checks if the IngredientBasics type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &IngredientBasics{}

// IngredientBasics struct for IngredientBasics
type IngredientBasics struct {
	Description NullableString `json:"description"`
	Name string `json:"name"`
	SafetyLevel NullableString `json:"safety_level"`
}

type _IngredientBasics IngredientBasics

// NewIngredientBasics instantiates a new IngredientBasics object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewIngredientBasics(description NullableString, name string, safetyLevel NullableString) *IngredientBasics {
	this := IngredientBasics{}
	this.Description = description
	this.Name = name
	this.SafetyLevel = safetyLevel
	return &this
}

// NewIngredientBasicsWithDefaults instantiates a new IngredientBasics object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewIngredientBasicsWithDefaults() *IngredientBasics {
	this := IngredientBasics{}
	return &this
}

// GetDescription returns the Description field value
// If the value is explicit nil, the zero value for string will be returned
func (o *IngredientBasics) GetDescription() string {
	if o == nil || o.Description.Get() == nil {
		var ret string
		return ret
	}

	return *o.Description.Get()
}

// GetDescriptionOk returns a tuple with the Description field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *IngredientBasics) GetDescriptionOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Description.Get(), o.Description.IsSet()
}

// SetDescription sets field value
func (o *IngredientBasics) SetDescription(v string) {
	o.Description.Set(&v)
}

// GetName returns the Name field value
func (o *IngredientBasics) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *IngredientBasics) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *IngredientBasics) SetName(v string) {
	o.Name = v
}

// GetSafetyLevel returns the SafetyLevel field value
// If the value is explicit nil, the zero value for string will be returned
func (o *IngredientBasics) GetSafetyLevel() string {
	if o == nil || o.SafetyLevel.Get() == nil {
		var ret string
		return ret
	}

	return *o.SafetyLevel.Get()
}

// GetSafetyLevelOk returns a tuple with the SafetyLevel field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *IngredientBasics) GetSafetyLevelOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.SafetyLevel.Get(), o.SafetyLevel.IsSet()
}

// SetSafetyLevel sets field value
func (o *IngredientBasics) SetSafetyLevel(v string) {
	o.SafetyLevel.Set(&v)
}

func (o IngredientBasics) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o IngredientBasics) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["description"] = o.Description.Get()
	toSerialize["name"] = o.Name
	toSerialize["safety_level"] = o.SafetyLevel.Get()
	return toSerialize, nil
}

func (o *IngredientBasics) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"description",
		"name",
		"safety_level",
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

	varIngredientBasics := _IngredientBasics{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varIngredientBasics)

	if err != nil {
		return err
	}

	*o = IngredientBasics(varIngredientBasics)

	return err
}

type NullableIngredientBasics struct {
	value *IngredientBasics
	isSet bool
}

func (v NullableIngredientBasics) Get() *IngredientBasics {
	return v.value
}

func (v *NullableIngredientBasics) Set(val *IngredientBasics) {
	v.value = val
	v.isSet = true
}

func (v NullableIngredientBasics) IsSet() bool {
	return v.isSet
}

func (v *NullableIngredientBasics) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableIngredientBasics(val *IngredientBasics) *NullableIngredientBasics {
	return &NullableIngredientBasics{value: val, isSet: true}
}

func (v NullableIngredientBasics) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableIngredientBasics) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


