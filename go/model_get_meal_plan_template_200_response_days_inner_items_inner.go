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

// checks if the GetMealPlanTemplate200ResponseDaysInnerItemsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetMealPlanTemplate200ResponseDaysInnerItemsInner{}

// GetMealPlanTemplate200ResponseDaysInnerItemsInner struct for GetMealPlanTemplate200ResponseDaysInnerItemsInner
type GetMealPlanTemplate200ResponseDaysInnerItemsInner struct {
	Id int32 `json:"id"`
	Slot int32 `json:"slot"`
	Position int32 `json:"position"`
	Type string `json:"type"`
	Value *GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue `json:"value,omitempty"`
}

type _GetMealPlanTemplate200ResponseDaysInnerItemsInner GetMealPlanTemplate200ResponseDaysInnerItemsInner

// NewGetMealPlanTemplate200ResponseDaysInnerItemsInner instantiates a new GetMealPlanTemplate200ResponseDaysInnerItemsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetMealPlanTemplate200ResponseDaysInnerItemsInner(id int32, slot int32, position int32, type_ string) *GetMealPlanTemplate200ResponseDaysInnerItemsInner {
	this := GetMealPlanTemplate200ResponseDaysInnerItemsInner{}
	this.Id = id
	this.Slot = slot
	this.Position = position
	this.Type = type_
	return &this
}

// NewGetMealPlanTemplate200ResponseDaysInnerItemsInnerWithDefaults instantiates a new GetMealPlanTemplate200ResponseDaysInnerItemsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetMealPlanTemplate200ResponseDaysInnerItemsInnerWithDefaults() *GetMealPlanTemplate200ResponseDaysInnerItemsInner {
	this := GetMealPlanTemplate200ResponseDaysInnerItemsInner{}
	return &this
}

// GetId returns the Id field value
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) SetId(v int32) {
	o.Id = v
}

// GetSlot returns the Slot field value
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetSlot() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Slot
}

// GetSlotOk returns a tuple with the Slot field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetSlotOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Slot, true
}

// SetSlot sets field value
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) SetSlot(v int32) {
	o.Slot = v
}

// GetPosition returns the Position field value
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetPosition() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Position
}

// GetPositionOk returns a tuple with the Position field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetPositionOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Position, true
}

// SetPosition sets field value
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) SetPosition(v int32) {
	o.Position = v
}

// GetType returns the Type field value
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Type
}

// GetTypeOk returns a tuple with the Type field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Type, true
}

// SetType sets field value
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) SetType(v string) {
	o.Type = v
}

// GetValue returns the Value field value if set, zero value otherwise.
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetValue() GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue {
	if o == nil || IsNil(o.Value) {
		var ret GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue
		return ret
	}
	return *o.Value
}

// GetValueOk returns a tuple with the Value field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) GetValueOk() (*GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue, bool) {
	if o == nil || IsNil(o.Value) {
		return nil, false
	}
	return o.Value, true
}

// HasValue returns a boolean if a field has been set.
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) HasValue() bool {
	if o != nil && !IsNil(o.Value) {
		return true
	}

	return false
}

// SetValue gets a reference to the given GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue and assigns it to the Value field.
func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) SetValue(v GetMealPlanTemplate200ResponseDaysInnerItemsInnerValue) {
	o.Value = &v
}

func (o GetMealPlanTemplate200ResponseDaysInnerItemsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetMealPlanTemplate200ResponseDaysInnerItemsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["slot"] = o.Slot
	toSerialize["position"] = o.Position
	toSerialize["type"] = o.Type
	if !IsNil(o.Value) {
		toSerialize["value"] = o.Value
	}
	return toSerialize, nil
}

func (o *GetMealPlanTemplate200ResponseDaysInnerItemsInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"slot",
		"position",
		"type",
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

	varGetMealPlanTemplate200ResponseDaysInnerItemsInner := _GetMealPlanTemplate200ResponseDaysInnerItemsInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetMealPlanTemplate200ResponseDaysInnerItemsInner)

	if err != nil {
		return err
	}

	*o = GetMealPlanTemplate200ResponseDaysInnerItemsInner(varGetMealPlanTemplate200ResponseDaysInnerItemsInner)

	return err
}

type NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner struct {
	value *GetMealPlanTemplate200ResponseDaysInnerItemsInner
	isSet bool
}

func (v NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner) Get() *GetMealPlanTemplate200ResponseDaysInnerItemsInner {
	return v.value
}

func (v *NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner) Set(val *GetMealPlanTemplate200ResponseDaysInnerItemsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetMealPlanTemplate200ResponseDaysInnerItemsInner(val *GetMealPlanTemplate200ResponseDaysInnerItemsInner) *NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner {
	return &NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner{value: val, isSet: true}
}

func (v NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetMealPlanTemplate200ResponseDaysInnerItemsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


