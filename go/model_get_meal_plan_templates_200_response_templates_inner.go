/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 2.0.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package spoonacular

import (
	"encoding/json"
	"bytes"
	"fmt"
)

// checks if the GetMealPlanTemplates200ResponseTemplatesInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetMealPlanTemplates200ResponseTemplatesInner{}

// GetMealPlanTemplates200ResponseTemplatesInner struct for GetMealPlanTemplates200ResponseTemplatesInner
type GetMealPlanTemplates200ResponseTemplatesInner struct {
	Id int32 `json:"id"`
	Name string `json:"name"`
}

type _GetMealPlanTemplates200ResponseTemplatesInner GetMealPlanTemplates200ResponseTemplatesInner

// NewGetMealPlanTemplates200ResponseTemplatesInner instantiates a new GetMealPlanTemplates200ResponseTemplatesInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetMealPlanTemplates200ResponseTemplatesInner(id int32, name string) *GetMealPlanTemplates200ResponseTemplatesInner {
	this := GetMealPlanTemplates200ResponseTemplatesInner{}
	this.Id = id
	this.Name = name
	return &this
}

// NewGetMealPlanTemplates200ResponseTemplatesInnerWithDefaults instantiates a new GetMealPlanTemplates200ResponseTemplatesInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetMealPlanTemplates200ResponseTemplatesInnerWithDefaults() *GetMealPlanTemplates200ResponseTemplatesInner {
	this := GetMealPlanTemplates200ResponseTemplatesInner{}
	return &this
}

// GetId returns the Id field value
func (o *GetMealPlanTemplates200ResponseTemplatesInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanTemplates200ResponseTemplatesInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *GetMealPlanTemplates200ResponseTemplatesInner) SetId(v int32) {
	o.Id = v
}

// GetName returns the Name field value
func (o *GetMealPlanTemplates200ResponseTemplatesInner) GetName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Name
}

// GetNameOk returns a tuple with the Name field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanTemplates200ResponseTemplatesInner) GetNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Name, true
}

// SetName sets field value
func (o *GetMealPlanTemplates200ResponseTemplatesInner) SetName(v string) {
	o.Name = v
}

func (o GetMealPlanTemplates200ResponseTemplatesInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetMealPlanTemplates200ResponseTemplatesInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["name"] = o.Name
	return toSerialize, nil
}

func (o *GetMealPlanTemplates200ResponseTemplatesInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"name",
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

	varGetMealPlanTemplates200ResponseTemplatesInner := _GetMealPlanTemplates200ResponseTemplatesInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetMealPlanTemplates200ResponseTemplatesInner)

	if err != nil {
		return err
	}

	*o = GetMealPlanTemplates200ResponseTemplatesInner(varGetMealPlanTemplates200ResponseTemplatesInner)

	return err
}

type NullableGetMealPlanTemplates200ResponseTemplatesInner struct {
	value *GetMealPlanTemplates200ResponseTemplatesInner
	isSet bool
}

func (v NullableGetMealPlanTemplates200ResponseTemplatesInner) Get() *GetMealPlanTemplates200ResponseTemplatesInner {
	return v.value
}

func (v *NullableGetMealPlanTemplates200ResponseTemplatesInner) Set(val *GetMealPlanTemplates200ResponseTemplatesInner) {
	v.value = val
	v.isSet = true
}

func (v NullableGetMealPlanTemplates200ResponseTemplatesInner) IsSet() bool {
	return v.isSet
}

func (v *NullableGetMealPlanTemplates200ResponseTemplatesInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetMealPlanTemplates200ResponseTemplatesInner(val *GetMealPlanTemplates200ResponseTemplatesInner) *NullableGetMealPlanTemplates200ResponseTemplatesInner {
	return &NullableGetMealPlanTemplates200ResponseTemplatesInner{value: val, isSet: true}
}

func (v NullableGetMealPlanTemplates200ResponseTemplatesInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetMealPlanTemplates200ResponseTemplatesInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

