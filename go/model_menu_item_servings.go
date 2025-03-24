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

// checks if the MenuItemServings type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &MenuItemServings{}

// MenuItemServings struct for MenuItemServings
type MenuItemServings struct {
	Number float32 `json:"number"`
	Size NullableFloat32 `json:"size"`
	Unit NullableString `json:"unit"`
}

type _MenuItemServings MenuItemServings

// NewMenuItemServings instantiates a new MenuItemServings object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMenuItemServings(number float32, size NullableFloat32, unit NullableString) *MenuItemServings {
	this := MenuItemServings{}
	this.Number = number
	this.Size = size
	this.Unit = unit
	return &this
}

// NewMenuItemServingsWithDefaults instantiates a new MenuItemServings object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMenuItemServingsWithDefaults() *MenuItemServings {
	this := MenuItemServings{}
	return &this
}

// GetNumber returns the Number field value
func (o *MenuItemServings) GetNumber() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Number
}

// GetNumberOk returns a tuple with the Number field value
// and a boolean to check if the value has been set.
func (o *MenuItemServings) GetNumberOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Number, true
}

// SetNumber sets field value
func (o *MenuItemServings) SetNumber(v float32) {
	o.Number = v
}

// GetSize returns the Size field value
// If the value is explicit nil, the zero value for float32 will be returned
func (o *MenuItemServings) GetSize() float32 {
	if o == nil || o.Size.Get() == nil {
		var ret float32
		return ret
	}

	return *o.Size.Get()
}

// GetSizeOk returns a tuple with the Size field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *MenuItemServings) GetSizeOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return o.Size.Get(), o.Size.IsSet()
}

// SetSize sets field value
func (o *MenuItemServings) SetSize(v float32) {
	o.Size.Set(&v)
}

// GetUnit returns the Unit field value
// If the value is explicit nil, the zero value for string will be returned
func (o *MenuItemServings) GetUnit() string {
	if o == nil || o.Unit.Get() == nil {
		var ret string
		return ret
	}

	return *o.Unit.Get()
}

// GetUnitOk returns a tuple with the Unit field value
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *MenuItemServings) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Unit.Get(), o.Unit.IsSet()
}

// SetUnit sets field value
func (o *MenuItemServings) SetUnit(v string) {
	o.Unit.Set(&v)
}

func (o MenuItemServings) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o MenuItemServings) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["number"] = o.Number
	toSerialize["size"] = o.Size.Get()
	toSerialize["unit"] = o.Unit.Get()
	return toSerialize, nil
}

func (o *MenuItemServings) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"number",
		"size",
		"unit",
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

	varMenuItemServings := _MenuItemServings{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varMenuItemServings)

	if err != nil {
		return err
	}

	*o = MenuItemServings(varMenuItemServings)

	return err
}

type NullableMenuItemServings struct {
	value *MenuItemServings
	isSet bool
}

func (v NullableMenuItemServings) Get() *MenuItemServings {
	return v.value
}

func (v *NullableMenuItemServings) Set(val *MenuItemServings) {
	v.value = val
	v.isSet = true
}

func (v NullableMenuItemServings) IsSet() bool {
	return v.isSet
}

func (v *NullableMenuItemServings) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMenuItemServings(val *MenuItemServings) *NullableMenuItemServings {
	return &NullableMenuItemServings{value: val, isSet: true}
}

func (v NullableMenuItemServings) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMenuItemServings) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


