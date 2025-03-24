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

// checks if the GetMealPlanWeek200Response type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetMealPlanWeek200Response{}

// GetMealPlanWeek200Response 
type GetMealPlanWeek200Response struct {
	Days []GetMealPlanWeek200ResponseDaysInner `json:"days"`
}

type _GetMealPlanWeek200Response GetMealPlanWeek200Response

// NewGetMealPlanWeek200Response instantiates a new GetMealPlanWeek200Response object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetMealPlanWeek200Response(days []GetMealPlanWeek200ResponseDaysInner) *GetMealPlanWeek200Response {
	this := GetMealPlanWeek200Response{}
	this.Days = days
	return &this
}

// NewGetMealPlanWeek200ResponseWithDefaults instantiates a new GetMealPlanWeek200Response object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetMealPlanWeek200ResponseWithDefaults() *GetMealPlanWeek200Response {
	this := GetMealPlanWeek200Response{}
	return &this
}

// GetDays returns the Days field value
func (o *GetMealPlanWeek200Response) GetDays() []GetMealPlanWeek200ResponseDaysInner {
	if o == nil {
		var ret []GetMealPlanWeek200ResponseDaysInner
		return ret
	}

	return o.Days
}

// GetDaysOk returns a tuple with the Days field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200Response) GetDaysOk() ([]GetMealPlanWeek200ResponseDaysInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Days, true
}

// SetDays sets field value
func (o *GetMealPlanWeek200Response) SetDays(v []GetMealPlanWeek200ResponseDaysInner) {
	o.Days = v
}

func (o GetMealPlanWeek200Response) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetMealPlanWeek200Response) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["days"] = o.Days
	return toSerialize, nil
}

func (o *GetMealPlanWeek200Response) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"days",
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

	varGetMealPlanWeek200Response := _GetMealPlanWeek200Response{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetMealPlanWeek200Response)

	if err != nil {
		return err
	}

	*o = GetMealPlanWeek200Response(varGetMealPlanWeek200Response)

	return err
}

type NullableGetMealPlanWeek200Response struct {
	value *GetMealPlanWeek200Response
	isSet bool
}

func (v NullableGetMealPlanWeek200Response) Get() *GetMealPlanWeek200Response {
	return v.value
}

func (v *NullableGetMealPlanWeek200Response) Set(val *GetMealPlanWeek200Response) {
	v.value = val
	v.isSet = true
}

func (v NullableGetMealPlanWeek200Response) IsSet() bool {
	return v.isSet
}

func (v *NullableGetMealPlanWeek200Response) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetMealPlanWeek200Response(val *GetMealPlanWeek200Response) *NullableGetMealPlanWeek200Response {
	return &NullableGetMealPlanWeek200Response{value: val, isSet: true}
}

func (v NullableGetMealPlanWeek200Response) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetMealPlanWeek200Response) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


