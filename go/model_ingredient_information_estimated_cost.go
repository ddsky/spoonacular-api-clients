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

// checks if the IngredientInformationEstimatedCost type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &IngredientInformationEstimatedCost{}

// IngredientInformationEstimatedCost struct for IngredientInformationEstimatedCost
type IngredientInformationEstimatedCost struct {
	Value float32 `json:"value"`
	Unit string `json:"unit"`
}

type _IngredientInformationEstimatedCost IngredientInformationEstimatedCost

// NewIngredientInformationEstimatedCost instantiates a new IngredientInformationEstimatedCost object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewIngredientInformationEstimatedCost(value float32, unit string) *IngredientInformationEstimatedCost {
	this := IngredientInformationEstimatedCost{}
	this.Value = value
	this.Unit = unit
	return &this
}

// NewIngredientInformationEstimatedCostWithDefaults instantiates a new IngredientInformationEstimatedCost object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewIngredientInformationEstimatedCostWithDefaults() *IngredientInformationEstimatedCost {
	this := IngredientInformationEstimatedCost{}
	return &this
}

// GetValue returns the Value field value
func (o *IngredientInformationEstimatedCost) GetValue() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Value
}

// GetValueOk returns a tuple with the Value field value
// and a boolean to check if the value has been set.
func (o *IngredientInformationEstimatedCost) GetValueOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Value, true
}

// SetValue sets field value
func (o *IngredientInformationEstimatedCost) SetValue(v float32) {
	o.Value = v
}

// GetUnit returns the Unit field value
func (o *IngredientInformationEstimatedCost) GetUnit() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Unit
}

// GetUnitOk returns a tuple with the Unit field value
// and a boolean to check if the value has been set.
func (o *IngredientInformationEstimatedCost) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Unit, true
}

// SetUnit sets field value
func (o *IngredientInformationEstimatedCost) SetUnit(v string) {
	o.Unit = v
}

func (o IngredientInformationEstimatedCost) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o IngredientInformationEstimatedCost) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["value"] = o.Value
	toSerialize["unit"] = o.Unit
	return toSerialize, nil
}

func (o *IngredientInformationEstimatedCost) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"value",
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

	varIngredientInformationEstimatedCost := _IngredientInformationEstimatedCost{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varIngredientInformationEstimatedCost)

	if err != nil {
		return err
	}

	*o = IngredientInformationEstimatedCost(varIngredientInformationEstimatedCost)

	return err
}

type NullableIngredientInformationEstimatedCost struct {
	value *IngredientInformationEstimatedCost
	isSet bool
}

func (v NullableIngredientInformationEstimatedCost) Get() *IngredientInformationEstimatedCost {
	return v.value
}

func (v *NullableIngredientInformationEstimatedCost) Set(val *IngredientInformationEstimatedCost) {
	v.value = val
	v.isSet = true
}

func (v NullableIngredientInformationEstimatedCost) IsSet() bool {
	return v.isSet
}

func (v *NullableIngredientInformationEstimatedCost) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableIngredientInformationEstimatedCost(val *IngredientInformationEstimatedCost) *NullableIngredientInformationEstimatedCost {
	return &NullableIngredientInformationEstimatedCost{value: val, isSet: true}
}

func (v NullableIngredientInformationEstimatedCost) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableIngredientInformationEstimatedCost) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


