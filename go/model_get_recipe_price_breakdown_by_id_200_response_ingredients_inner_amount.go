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

// checks if the GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount{}

// GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount struct for GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount
type GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount struct {
	Metric GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric `json:"metric"`
	Us GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric `json:"us"`
}

type _GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount

// NewGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount instantiates a new GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount(metric GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric, us GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount {
	this := GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount{}
	this.Metric = metric
	this.Us = us
	return &this
}

// NewGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountWithDefaults instantiates a new GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountWithDefaults() *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount {
	this := GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount{}
	return &this
}

// GetMetric returns the Metric field value
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) GetMetric() GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
	if o == nil {
		var ret GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
		return ret
	}

	return o.Metric
}

// GetMetricOk returns a tuple with the Metric field value
// and a boolean to check if the value has been set.
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) GetMetricOk() (*GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Metric, true
}

// SetMetric sets field value
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) SetMetric(v GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) {
	o.Metric = v
}

// GetUs returns the Us field value
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) GetUs() GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric {
	if o == nil {
		var ret GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric
		return ret
	}

	return o.Us
}

// GetUsOk returns a tuple with the Us field value
// and a boolean to check if the value has been set.
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) GetUsOk() (*GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Us, true
}

// SetUs sets field value
func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) SetUs(v GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmountMetric) {
	o.Us = v
}

func (o GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["metric"] = o.Metric
	toSerialize["us"] = o.Us
	return toSerialize, nil
}

func (o *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"metric",
		"us",
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

	varGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount := _GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount)

	if err != nil {
		return err
	}

	*o = GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount(varGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount)

	return err
}

type NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount struct {
	value *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount
	isSet bool
}

func (v NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) Get() *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount {
	return v.value
}

func (v *NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) Set(val *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) {
	v.value = val
	v.isSet = true
}

func (v NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) IsSet() bool {
	return v.isSet
}

func (v *NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount(val *GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) *NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount {
	return &NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount{value: val, isSet: true}
}

func (v NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


