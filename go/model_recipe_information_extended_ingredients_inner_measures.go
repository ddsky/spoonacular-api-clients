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

// checks if the RecipeInformationExtendedIngredientsInnerMeasures type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &RecipeInformationExtendedIngredientsInnerMeasures{}

// RecipeInformationExtendedIngredientsInnerMeasures struct for RecipeInformationExtendedIngredientsInnerMeasures
type RecipeInformationExtendedIngredientsInnerMeasures struct {
	Metric RecipeInformationExtendedIngredientsInnerMeasuresMetric `json:"metric"`
	Us RecipeInformationExtendedIngredientsInnerMeasuresMetric `json:"us"`
}

type _RecipeInformationExtendedIngredientsInnerMeasures RecipeInformationExtendedIngredientsInnerMeasures

// NewRecipeInformationExtendedIngredientsInnerMeasures instantiates a new RecipeInformationExtendedIngredientsInnerMeasures object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewRecipeInformationExtendedIngredientsInnerMeasures(metric RecipeInformationExtendedIngredientsInnerMeasuresMetric, us RecipeInformationExtendedIngredientsInnerMeasuresMetric) *RecipeInformationExtendedIngredientsInnerMeasures {
	this := RecipeInformationExtendedIngredientsInnerMeasures{}
	this.Metric = metric
	this.Us = us
	return &this
}

// NewRecipeInformationExtendedIngredientsInnerMeasuresWithDefaults instantiates a new RecipeInformationExtendedIngredientsInnerMeasures object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewRecipeInformationExtendedIngredientsInnerMeasuresWithDefaults() *RecipeInformationExtendedIngredientsInnerMeasures {
	this := RecipeInformationExtendedIngredientsInnerMeasures{}
	return &this
}

// GetMetric returns the Metric field value
func (o *RecipeInformationExtendedIngredientsInnerMeasures) GetMetric() RecipeInformationExtendedIngredientsInnerMeasuresMetric {
	if o == nil {
		var ret RecipeInformationExtendedIngredientsInnerMeasuresMetric
		return ret
	}

	return o.Metric
}

// GetMetricOk returns a tuple with the Metric field value
// and a boolean to check if the value has been set.
func (o *RecipeInformationExtendedIngredientsInnerMeasures) GetMetricOk() (*RecipeInformationExtendedIngredientsInnerMeasuresMetric, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Metric, true
}

// SetMetric sets field value
func (o *RecipeInformationExtendedIngredientsInnerMeasures) SetMetric(v RecipeInformationExtendedIngredientsInnerMeasuresMetric) {
	o.Metric = v
}

// GetUs returns the Us field value
func (o *RecipeInformationExtendedIngredientsInnerMeasures) GetUs() RecipeInformationExtendedIngredientsInnerMeasuresMetric {
	if o == nil {
		var ret RecipeInformationExtendedIngredientsInnerMeasuresMetric
		return ret
	}

	return o.Us
}

// GetUsOk returns a tuple with the Us field value
// and a boolean to check if the value has been set.
func (o *RecipeInformationExtendedIngredientsInnerMeasures) GetUsOk() (*RecipeInformationExtendedIngredientsInnerMeasuresMetric, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Us, true
}

// SetUs sets field value
func (o *RecipeInformationExtendedIngredientsInnerMeasures) SetUs(v RecipeInformationExtendedIngredientsInnerMeasuresMetric) {
	o.Us = v
}

func (o RecipeInformationExtendedIngredientsInnerMeasures) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o RecipeInformationExtendedIngredientsInnerMeasures) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["metric"] = o.Metric
	toSerialize["us"] = o.Us
	return toSerialize, nil
}

func (o *RecipeInformationExtendedIngredientsInnerMeasures) UnmarshalJSON(data []byte) (err error) {
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

	varRecipeInformationExtendedIngredientsInnerMeasures := _RecipeInformationExtendedIngredientsInnerMeasures{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varRecipeInformationExtendedIngredientsInnerMeasures)

	if err != nil {
		return err
	}

	*o = RecipeInformationExtendedIngredientsInnerMeasures(varRecipeInformationExtendedIngredientsInnerMeasures)

	return err
}

type NullableRecipeInformationExtendedIngredientsInnerMeasures struct {
	value *RecipeInformationExtendedIngredientsInnerMeasures
	isSet bool
}

func (v NullableRecipeInformationExtendedIngredientsInnerMeasures) Get() *RecipeInformationExtendedIngredientsInnerMeasures {
	return v.value
}

func (v *NullableRecipeInformationExtendedIngredientsInnerMeasures) Set(val *RecipeInformationExtendedIngredientsInnerMeasures) {
	v.value = val
	v.isSet = true
}

func (v NullableRecipeInformationExtendedIngredientsInnerMeasures) IsSet() bool {
	return v.isSet
}

func (v *NullableRecipeInformationExtendedIngredientsInnerMeasures) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableRecipeInformationExtendedIngredientsInnerMeasures(val *RecipeInformationExtendedIngredientsInnerMeasures) *NullableRecipeInformationExtendedIngredientsInnerMeasures {
	return &NullableRecipeInformationExtendedIngredientsInnerMeasures{value: val, isSet: true}
}

func (v NullableRecipeInformationExtendedIngredientsInnerMeasures) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableRecipeInformationExtendedIngredientsInnerMeasures) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


