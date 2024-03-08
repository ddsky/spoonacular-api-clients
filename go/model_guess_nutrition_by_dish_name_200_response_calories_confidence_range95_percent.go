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

// checks if the GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent{}

// GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent struct for GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent
type GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent struct {
	Max float32 `json:"max"`
	Min float32 `json:"min"`
}

type _GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent

// NewGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent instantiates a new GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent(max float32, min float32) *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent {
	this := GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent{}
	this.Max = max
	this.Min = min
	return &this
}

// NewGuessNutritionByDishName200ResponseCaloriesConfidenceRange95PercentWithDefaults instantiates a new GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGuessNutritionByDishName200ResponseCaloriesConfidenceRange95PercentWithDefaults() *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent {
	this := GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent{}
	return &this
}

// GetMax returns the Max field value
func (o *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) GetMax() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Max
}

// GetMaxOk returns a tuple with the Max field value
// and a boolean to check if the value has been set.
func (o *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) GetMaxOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Max, true
}

// SetMax sets field value
func (o *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) SetMax(v float32) {
	o.Max = v
}

// GetMin returns the Min field value
func (o *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) GetMin() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Min
}

// GetMinOk returns a tuple with the Min field value
// and a boolean to check if the value has been set.
func (o *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) GetMinOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Min, true
}

// SetMin sets field value
func (o *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) SetMin(v float32) {
	o.Min = v
}

func (o GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["max"] = o.Max
	toSerialize["min"] = o.Min
	return toSerialize, nil
}

func (o *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"max",
		"min",
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

	varGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent := _GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent)

	if err != nil {
		return err
	}

	*o = GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent(varGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent)

	return err
}

type NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent struct {
	value *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent
	isSet bool
}

func (v NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) Get() *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent {
	return v.value
}

func (v *NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) Set(val *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) {
	v.value = val
	v.isSet = true
}

func (v NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) IsSet() bool {
	return v.isSet
}

func (v *NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent(val *GuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) *NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent {
	return &NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent{value: val, isSet: true}
}

func (v NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGuessNutritionByDishName200ResponseCaloriesConfidenceRange95Percent) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


