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

// checks if the ComputeGlycemicLoad200ResponseIngredientsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &ComputeGlycemicLoad200ResponseIngredientsInner{}

// ComputeGlycemicLoad200ResponseIngredientsInner struct for ComputeGlycemicLoad200ResponseIngredientsInner
type ComputeGlycemicLoad200ResponseIngredientsInner struct {
	Id int32 `json:"id"`
	Original string `json:"original"`
	GlycemicIndex float32 `json:"glycemicIndex"`
	GlycemicLoad float32 `json:"glycemicLoad"`
}

type _ComputeGlycemicLoad200ResponseIngredientsInner ComputeGlycemicLoad200ResponseIngredientsInner

// NewComputeGlycemicLoad200ResponseIngredientsInner instantiates a new ComputeGlycemicLoad200ResponseIngredientsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewComputeGlycemicLoad200ResponseIngredientsInner(id int32, original string, glycemicIndex float32, glycemicLoad float32) *ComputeGlycemicLoad200ResponseIngredientsInner {
	this := ComputeGlycemicLoad200ResponseIngredientsInner{}
	this.Id = id
	this.Original = original
	this.GlycemicIndex = glycemicIndex
	this.GlycemicLoad = glycemicLoad
	return &this
}

// NewComputeGlycemicLoad200ResponseIngredientsInnerWithDefaults instantiates a new ComputeGlycemicLoad200ResponseIngredientsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewComputeGlycemicLoad200ResponseIngredientsInnerWithDefaults() *ComputeGlycemicLoad200ResponseIngredientsInner {
	this := ComputeGlycemicLoad200ResponseIngredientsInner{}
	return &this
}

// GetId returns the Id field value
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) SetId(v int32) {
	o.Id = v
}

// GetOriginal returns the Original field value
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) GetOriginal() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Original
}

// GetOriginalOk returns a tuple with the Original field value
// and a boolean to check if the value has been set.
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) GetOriginalOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Original, true
}

// SetOriginal sets field value
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) SetOriginal(v string) {
	o.Original = v
}

// GetGlycemicIndex returns the GlycemicIndex field value
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) GetGlycemicIndex() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.GlycemicIndex
}

// GetGlycemicIndexOk returns a tuple with the GlycemicIndex field value
// and a boolean to check if the value has been set.
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) GetGlycemicIndexOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.GlycemicIndex, true
}

// SetGlycemicIndex sets field value
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) SetGlycemicIndex(v float32) {
	o.GlycemicIndex = v
}

// GetGlycemicLoad returns the GlycemicLoad field value
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) GetGlycemicLoad() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.GlycemicLoad
}

// GetGlycemicLoadOk returns a tuple with the GlycemicLoad field value
// and a boolean to check if the value has been set.
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) GetGlycemicLoadOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.GlycemicLoad, true
}

// SetGlycemicLoad sets field value
func (o *ComputeGlycemicLoad200ResponseIngredientsInner) SetGlycemicLoad(v float32) {
	o.GlycemicLoad = v
}

func (o ComputeGlycemicLoad200ResponseIngredientsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o ComputeGlycemicLoad200ResponseIngredientsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["original"] = o.Original
	toSerialize["glycemicIndex"] = o.GlycemicIndex
	toSerialize["glycemicLoad"] = o.GlycemicLoad
	return toSerialize, nil
}

func (o *ComputeGlycemicLoad200ResponseIngredientsInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"original",
		"glycemicIndex",
		"glycemicLoad",
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

	varComputeGlycemicLoad200ResponseIngredientsInner := _ComputeGlycemicLoad200ResponseIngredientsInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varComputeGlycemicLoad200ResponseIngredientsInner)

	if err != nil {
		return err
	}

	*o = ComputeGlycemicLoad200ResponseIngredientsInner(varComputeGlycemicLoad200ResponseIngredientsInner)

	return err
}

type NullableComputeGlycemicLoad200ResponseIngredientsInner struct {
	value *ComputeGlycemicLoad200ResponseIngredientsInner
	isSet bool
}

func (v NullableComputeGlycemicLoad200ResponseIngredientsInner) Get() *ComputeGlycemicLoad200ResponseIngredientsInner {
	return v.value
}

func (v *NullableComputeGlycemicLoad200ResponseIngredientsInner) Set(val *ComputeGlycemicLoad200ResponseIngredientsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableComputeGlycemicLoad200ResponseIngredientsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableComputeGlycemicLoad200ResponseIngredientsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableComputeGlycemicLoad200ResponseIngredientsInner(val *ComputeGlycemicLoad200ResponseIngredientsInner) *NullableComputeGlycemicLoad200ResponseIngredientsInner {
	return &NullableComputeGlycemicLoad200ResponseIngredientsInner{value: val, isSet: true}
}

func (v NullableComputeGlycemicLoad200ResponseIngredientsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableComputeGlycemicLoad200ResponseIngredientsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


