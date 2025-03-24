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

// checks if the ClassifyCuisine200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ClassifyCuisine200Response{}

// ClassifyCuisine200Response 
type ClassifyCuisine200Response struct {
	Cuisine string `json:"cuisine"`
	Cuisines []string `json:"cuisines"`
	Confidence float32 `json:"confidence"`
}

type _ClassifyCuisine200Response ClassifyCuisine200Response

// NewClassifyCuisine200Response instantiates a new ClassifyCuisine200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewClassifyCuisine200Response(cuisine string, cuisines []string, confidence float32) *ClassifyCuisine200Response {
	this := ClassifyCuisine200Response{}
	this.Cuisine = cuisine
	this.Cuisines = cuisines
	this.Confidence = confidence
	return &this
}

// NewClassifyCuisine200ResponseWithDefaults instantiates a new ClassifyCuisine200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewClassifyCuisine200ResponseWithDefaults() *ClassifyCuisine200Response {
	this := ClassifyCuisine200Response{}
	return &this
}

// GetCuisine returns the Cuisine field value
func (o *ClassifyCuisine200Response) GetCuisine() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Cuisine
}

// GetCuisineOk returns a tuple with the Cuisine field value
// and a boolean to check if the value has been set.
func (o *ClassifyCuisine200Response) GetCuisineOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Cuisine, true
}

// SetCuisine sets field value
func (o *ClassifyCuisine200Response) SetCuisine(v string) {
	o.Cuisine = v
}

// GetCuisines returns the Cuisines field value
func (o *ClassifyCuisine200Response) GetCuisines() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.Cuisines
}

// GetCuisinesOk returns a tuple with the Cuisines field value
// and a boolean to check if the value has been set.
func (o *ClassifyCuisine200Response) GetCuisinesOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Cuisines, true
}

// SetCuisines sets field value
func (o *ClassifyCuisine200Response) SetCuisines(v []string) {
	o.Cuisines = v
}

// GetConfidence returns the Confidence field value
func (o *ClassifyCuisine200Response) GetConfidence() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Confidence
}

// GetConfidenceOk returns a tuple with the Confidence field value
// and a boolean to check if the value has been set.
func (o *ClassifyCuisine200Response) GetConfidenceOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Confidence, true
}

// SetConfidence sets field value
func (o *ClassifyCuisine200Response) SetConfidence(v float32) {
	o.Confidence = v
}

func (o ClassifyCuisine200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ClassifyCuisine200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["cuisine"] = o.Cuisine
	toSerialize["cuisines"] = o.Cuisines
	toSerialize["confidence"] = o.Confidence
	return toSerialize, nil
}

func (o *ClassifyCuisine200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"cuisine",
		"cuisines",
		"confidence",
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

	varClassifyCuisine200Response := _ClassifyCuisine200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varClassifyCuisine200Response)

	if err != nil {
		return err
	}

	*o = ClassifyCuisine200Response(varClassifyCuisine200Response)

	return err
}

type NullableClassifyCuisine200Response struct {
	value *ClassifyCuisine200Response
	isSet bool
}

func (v NullableClassifyCuisine200Response) Get() *ClassifyCuisine200Response {
	return v.value
}

func (v *NullableClassifyCuisine200Response) Set(val *ClassifyCuisine200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableClassifyCuisine200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableClassifyCuisine200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableClassifyCuisine200Response(val *ClassifyCuisine200Response) *NullableClassifyCuisine200Response {
	return &NullableClassifyCuisine200Response{value: val, isSet: true}
}

func (v NullableClassifyCuisine200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableClassifyCuisine200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


