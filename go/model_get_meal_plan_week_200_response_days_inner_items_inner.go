/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 1.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// GetMealPlanWeek200ResponseDaysInnerItemsInner struct for GetMealPlanWeek200ResponseDaysInnerItemsInner
type GetMealPlanWeek200ResponseDaysInnerItemsInner struct {
	Id int32 `json:"id"`
	Slot int32 `json:"slot"`
	Position int32 `json:"position"`
	Type string `json:"type"`
	Value *GetMealPlanWeek200ResponseDaysInnerItemsInnerValue `json:"value,omitempty"`
}

// NewGetMealPlanWeek200ResponseDaysInnerItemsInner instantiates a new GetMealPlanWeek200ResponseDaysInnerItemsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetMealPlanWeek200ResponseDaysInnerItemsInner(id int32, slot int32, position int32, type_ string) *GetMealPlanWeek200ResponseDaysInnerItemsInner {
	this := GetMealPlanWeek200ResponseDaysInnerItemsInner{}
	this.Id = id
	this.Slot = slot
	this.Position = position
	this.Type = type_
	return &this
}

// NewGetMealPlanWeek200ResponseDaysInnerItemsInnerWithDefaults instantiates a new GetMealPlanWeek200ResponseDaysInnerItemsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetMealPlanWeek200ResponseDaysInnerItemsInnerWithDefaults() *GetMealPlanWeek200ResponseDaysInnerItemsInner {
	this := GetMealPlanWeek200ResponseDaysInnerItemsInner{}
	return &this
}

// GetId returns the Id field value
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) SetId(v int32) {
	o.Id = v
}

// GetSlot returns the Slot field value
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetSlot() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Slot
}

// GetSlotOk returns a tuple with the Slot field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetSlotOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Slot, true
}

// SetSlot sets field value
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) SetSlot(v int32) {
	o.Slot = v
}

// GetPosition returns the Position field value
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetPosition() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Position
}

// GetPositionOk returns a tuple with the Position field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetPositionOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Position, true
}

// SetPosition sets field value
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) SetPosition(v int32) {
	o.Position = v
}

// GetType returns the Type field value
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Type
}

// GetTypeOk returns a tuple with the Type field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Type, true
}

// SetType sets field value
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) SetType(v string) {
	o.Type = v
}

// GetValue returns the Value field value if set, zero value otherwise.
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetValue() GetMealPlanWeek200ResponseDaysInnerItemsInnerValue {
	if o == nil || o.Value == nil {
		var ret GetMealPlanWeek200ResponseDaysInnerItemsInnerValue
		return ret
	}
	return *o.Value
}

// GetValueOk returns a tuple with the Value field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) GetValueOk() (*GetMealPlanWeek200ResponseDaysInnerItemsInnerValue, bool) {
	if o == nil || o.Value == nil {
		return nil, false
	}
	return o.Value, true
}

// HasValue returns a boolean if a field has been set.
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) HasValue() bool {
	if o != nil && o.Value != nil {
		return true
	}

	return false
}

// SetValue gets a reference to the given GetMealPlanWeek200ResponseDaysInnerItemsInnerValue and assigns it to the Value field.
func (o *GetMealPlanWeek200ResponseDaysInnerItemsInner) SetValue(v GetMealPlanWeek200ResponseDaysInnerItemsInnerValue) {
	o.Value = &v
}

func (o GetMealPlanWeek200ResponseDaysInnerItemsInner) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["id"] = o.Id
	}
	if true {
		toSerialize["slot"] = o.Slot
	}
	if true {
		toSerialize["position"] = o.Position
	}
	if true {
		toSerialize["type"] = o.Type
	}
	if o.Value != nil {
		toSerialize["value"] = o.Value
	}
	return json.Marshal(toSerialize)
}

type NullableGetMealPlanWeek200ResponseDaysInnerItemsInner struct {
	value *GetMealPlanWeek200ResponseDaysInnerItemsInner
	isSet bool
}

func (v NullableGetMealPlanWeek200ResponseDaysInnerItemsInner) Get() *GetMealPlanWeek200ResponseDaysInnerItemsInner {
	return v.value
}

func (v *NullableGetMealPlanWeek200ResponseDaysInnerItemsInner) Set(val *GetMealPlanWeek200ResponseDaysInnerItemsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableGetMealPlanWeek200ResponseDaysInnerItemsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableGetMealPlanWeek200ResponseDaysInnerItemsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetMealPlanWeek200ResponseDaysInnerItemsInner(val *GetMealPlanWeek200ResponseDaysInnerItemsInner) *NullableGetMealPlanWeek200ResponseDaysInnerItemsInner {
	return &NullableGetMealPlanWeek200ResponseDaysInnerItemsInner{value: val, isSet: true}
}

func (v NullableGetMealPlanWeek200ResponseDaysInnerItemsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetMealPlanWeek200ResponseDaysInnerItemsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


