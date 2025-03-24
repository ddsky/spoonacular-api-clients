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

// checks if the GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric{}

// GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric struct for GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
type GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric struct {
	Unit string `json:"unit"`
	Value float32 `json:"value"`
}

type _GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric

// NewGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric instantiates a new GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric(unit string, value float32) *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
	this := GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric{}
	this.Unit = unit
	this.Value = value
	return &this
}

// NewGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetricWithDefaults instantiates a new GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetricWithDefaults() *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
	this := GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric{}
	return &this
}

// GetUnit returns the Unit field value
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) GetUnit() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Unit
}

// GetUnitOk returns a tuple with the Unit field value
// and a boolean to check if the value has been set.
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) GetUnitOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Unit, true
}

// SetUnit sets field value
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) SetUnit(v string) {
	o.Unit = v
}

// GetValue returns the Value field value
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) GetValue() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Value
}

// GetValueOk returns a tuple with the Value field value
// and a boolean to check if the value has been set.
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) GetValueOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Value, true
}

// SetValue sets field value
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) SetValue(v float32) {
	o.Value = v
}

func (o GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["unit"] = o.Unit
	toSerialize["value"] = o.Value
	return toSerialize, nil
}

func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"unit",
		"value",
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

	varGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric := _GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric)

	if err != nil {
		return err
	}

	*o = GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric(varGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric)

	return err
}

type NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric struct {
	value *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
	isSet bool
}

func (v NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) Get() *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
	return v.value
}

func (v *NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) Set(val *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) {
	v.value = val
	v.isSet = true
}

func (v NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) IsSet() bool {
	return v.isSet
}

func (v *NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric(val *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) *NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
	return &NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric{value: val, isSet: true}
}

func (v NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


