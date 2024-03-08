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

// checks if the IngredientSearch200ResponseResultsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &IngredientSearch200ResponseResultsInner{}

// IngredientSearch200ResponseResultsInner struct for IngredientSearch200ResponseResultsInner
type IngredientSearch200ResponseResultsInner struct {
	Id int32 `json:"id"`
	Name string `json:"name"`
	Image string `json:"image"`
}

type _IngredientSearch200ResponseResultsInner IngredientSearch200ResponseResultsInner

// NewIngredientSearch200ResponseResultsInner instantiates a new IngredientSearch200ResponseResultsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewIngredientSearch200ResponseResultsInner(id int32, name string, image string) *IngredientSearch200ResponseResultsInner {
	this := IngredientSearch200ResponseResultsInner{}
	this.Id = id
	this.Name = name
	this.Image = image
	return &this
}

// NewIngredientSearch200ResponseResultsInnerWithDefaults instantiates a new IngredientSearch200ResponseResultsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewIngredientSearch200ResponseResultsInnerWithDefaults() *IngredientSearch200ResponseResultsInner {
	this := IngredientSearch200ResponseResultsInner{}
	return &this
}

// GetId returns the Id field value
func (o *IngredientSearch200ResponseResultsInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *IngredientSearch200ResponseResultsInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *IngredientSearch200ResponseResultsInner) SetId(v int32) {
	o.Id = v
}

// GetName returns the Name field value
func (o *IngredientSearch200ResponseResultsInner) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *IngredientSearch200ResponseResultsInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *IngredientSearch200ResponseResultsInner) SetName(v string) {
	o.Name = v
}

// GetImage returns the Image field value
func (o *IngredientSearch200ResponseResultsInner) GetImage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Image
}

// GetImageOk returns a tuple with the Image field value
// and a boolean to check if the value has been set.
func (o *IngredientSearch200ResponseResultsInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Image, true
}

// SetImage sets field value
func (o *IngredientSearch200ResponseResultsInner) SetImage(v string) {
	o.Image = v
}

func (o IngredientSearch200ResponseResultsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o IngredientSearch200ResponseResultsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["name"] = o.Name
	toSerialize["image"] = o.Image
	return toSerialize, nil
}

func (o *IngredientSearch200ResponseResultsInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"name",
		"image",
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

	varIngredientSearch200ResponseResultsInner := _IngredientSearch200ResponseResultsInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varIngredientSearch200ResponseResultsInner)

	if err != nil {
		return err
	}

	*o = IngredientSearch200ResponseResultsInner(varIngredientSearch200ResponseResultsInner)

	return err
}

type NullableIngredientSearch200ResponseResultsInner struct {
	value *IngredientSearch200ResponseResultsInner
	isSet bool
}

func (v NullableIngredientSearch200ResponseResultsInner) Get() *IngredientSearch200ResponseResultsInner {
	return v.value
}

func (v *NullableIngredientSearch200ResponseResultsInner) Set(val *IngredientSearch200ResponseResultsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableIngredientSearch200ResponseResultsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableIngredientSearch200ResponseResultsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableIngredientSearch200ResponseResultsInner(val *IngredientSearch200ResponseResultsInner) *NullableIngredientSearch200ResponseResultsInner {
	return &NullableIngredientSearch200ResponseResultsInner{value: val, isSet: true}
}

func (v NullableIngredientSearch200ResponseResultsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableIngredientSearch200ResponseResultsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


