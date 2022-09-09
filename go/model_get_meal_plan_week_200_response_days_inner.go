/*
spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

API version: 1.1
Contact: mail@spoonacular.com
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// GetMealPlanWeek200ResponseDaysInner struct for GetMealPlanWeek200ResponseDaysInner
type GetMealPlanWeek200ResponseDaysInner struct {
	NutritionSummary *GetMealPlanWeek200ResponseDaysInnerNutritionSummary `json:"nutritionSummary,omitempty"`
	NutritionSummaryBreakfast *GetMealPlanWeek200ResponseDaysInnerNutritionSummary `json:"nutritionSummaryBreakfast,omitempty"`
	NutritionSummaryLunch *GetMealPlanWeek200ResponseDaysInnerNutritionSummary `json:"nutritionSummaryLunch,omitempty"`
	NutritionSummaryDinner *GetMealPlanWeek200ResponseDaysInnerNutritionSummary `json:"nutritionSummaryDinner,omitempty"`
	Date float32 `json:"date"`
	Day string `json:"day"`
	Items []GetMealPlanWeek200ResponseDaysInnerItemsInner `json:"items,omitempty"`
}

// NewGetMealPlanWeek200ResponseDaysInner instantiates a new GetMealPlanWeek200ResponseDaysInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetMealPlanWeek200ResponseDaysInner(date float32, day string) *GetMealPlanWeek200ResponseDaysInner {
	this := GetMealPlanWeek200ResponseDaysInner{}
	this.Date = date
	this.Day = day
	return &this
}

// NewGetMealPlanWeek200ResponseDaysInnerWithDefaults instantiates a new GetMealPlanWeek200ResponseDaysInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetMealPlanWeek200ResponseDaysInnerWithDefaults() *GetMealPlanWeek200ResponseDaysInner {
	this := GetMealPlanWeek200ResponseDaysInner{}
	return &this
}

// GetNutritionSummary returns the NutritionSummary field value if set, zero value otherwise.
func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummary() GetMealPlanWeek200ResponseDaysInnerNutritionSummary {
	if o == nil || o.NutritionSummary == nil {
		var ret GetMealPlanWeek200ResponseDaysInnerNutritionSummary
		return ret
	}
	return *o.NutritionSummary
}

// GetNutritionSummaryOk returns a tuple with the NutritionSummary field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryOk() (*GetMealPlanWeek200ResponseDaysInnerNutritionSummary, bool) {
	if o == nil || o.NutritionSummary == nil {
		return nil, false
	}
	return o.NutritionSummary, true
}

// HasNutritionSummary returns a boolean if a field has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) HasNutritionSummary() bool {
	if o != nil && o.NutritionSummary != nil {
		return true
	}

	return false
}

// SetNutritionSummary gets a reference to the given GetMealPlanWeek200ResponseDaysInnerNutritionSummary and assigns it to the NutritionSummary field.
func (o *GetMealPlanWeek200ResponseDaysInner) SetNutritionSummary(v GetMealPlanWeek200ResponseDaysInnerNutritionSummary) {
	o.NutritionSummary = &v
}

// GetNutritionSummaryBreakfast returns the NutritionSummaryBreakfast field value if set, zero value otherwise.
func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryBreakfast() GetMealPlanWeek200ResponseDaysInnerNutritionSummary {
	if o == nil || o.NutritionSummaryBreakfast == nil {
		var ret GetMealPlanWeek200ResponseDaysInnerNutritionSummary
		return ret
	}
	return *o.NutritionSummaryBreakfast
}

// GetNutritionSummaryBreakfastOk returns a tuple with the NutritionSummaryBreakfast field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryBreakfastOk() (*GetMealPlanWeek200ResponseDaysInnerNutritionSummary, bool) {
	if o == nil || o.NutritionSummaryBreakfast == nil {
		return nil, false
	}
	return o.NutritionSummaryBreakfast, true
}

// HasNutritionSummaryBreakfast returns a boolean if a field has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) HasNutritionSummaryBreakfast() bool {
	if o != nil && o.NutritionSummaryBreakfast != nil {
		return true
	}

	return false
}

// SetNutritionSummaryBreakfast gets a reference to the given GetMealPlanWeek200ResponseDaysInnerNutritionSummary and assigns it to the NutritionSummaryBreakfast field.
func (o *GetMealPlanWeek200ResponseDaysInner) SetNutritionSummaryBreakfast(v GetMealPlanWeek200ResponseDaysInnerNutritionSummary) {
	o.NutritionSummaryBreakfast = &v
}

// GetNutritionSummaryLunch returns the NutritionSummaryLunch field value if set, zero value otherwise.
func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryLunch() GetMealPlanWeek200ResponseDaysInnerNutritionSummary {
	if o == nil || o.NutritionSummaryLunch == nil {
		var ret GetMealPlanWeek200ResponseDaysInnerNutritionSummary
		return ret
	}
	return *o.NutritionSummaryLunch
}

// GetNutritionSummaryLunchOk returns a tuple with the NutritionSummaryLunch field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryLunchOk() (*GetMealPlanWeek200ResponseDaysInnerNutritionSummary, bool) {
	if o == nil || o.NutritionSummaryLunch == nil {
		return nil, false
	}
	return o.NutritionSummaryLunch, true
}

// HasNutritionSummaryLunch returns a boolean if a field has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) HasNutritionSummaryLunch() bool {
	if o != nil && o.NutritionSummaryLunch != nil {
		return true
	}

	return false
}

// SetNutritionSummaryLunch gets a reference to the given GetMealPlanWeek200ResponseDaysInnerNutritionSummary and assigns it to the NutritionSummaryLunch field.
func (o *GetMealPlanWeek200ResponseDaysInner) SetNutritionSummaryLunch(v GetMealPlanWeek200ResponseDaysInnerNutritionSummary) {
	o.NutritionSummaryLunch = &v
}

// GetNutritionSummaryDinner returns the NutritionSummaryDinner field value if set, zero value otherwise.
func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryDinner() GetMealPlanWeek200ResponseDaysInnerNutritionSummary {
	if o == nil || o.NutritionSummaryDinner == nil {
		var ret GetMealPlanWeek200ResponseDaysInnerNutritionSummary
		return ret
	}
	return *o.NutritionSummaryDinner
}

// GetNutritionSummaryDinnerOk returns a tuple with the NutritionSummaryDinner field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) GetNutritionSummaryDinnerOk() (*GetMealPlanWeek200ResponseDaysInnerNutritionSummary, bool) {
	if o == nil || o.NutritionSummaryDinner == nil {
		return nil, false
	}
	return o.NutritionSummaryDinner, true
}

// HasNutritionSummaryDinner returns a boolean if a field has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) HasNutritionSummaryDinner() bool {
	if o != nil && o.NutritionSummaryDinner != nil {
		return true
	}

	return false
}

// SetNutritionSummaryDinner gets a reference to the given GetMealPlanWeek200ResponseDaysInnerNutritionSummary and assigns it to the NutritionSummaryDinner field.
func (o *GetMealPlanWeek200ResponseDaysInner) SetNutritionSummaryDinner(v GetMealPlanWeek200ResponseDaysInnerNutritionSummary) {
	o.NutritionSummaryDinner = &v
}

// GetDate returns the Date field value
func (o *GetMealPlanWeek200ResponseDaysInner) GetDate() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Date
}

// GetDateOk returns a tuple with the Date field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) GetDateOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Date, true
}

// SetDate sets field value
func (o *GetMealPlanWeek200ResponseDaysInner) SetDate(v float32) {
	o.Date = v
}

// GetDay returns the Day field value
func (o *GetMealPlanWeek200ResponseDaysInner) GetDay() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Day
}

// GetDayOk returns a tuple with the Day field value
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) GetDayOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Day, true
}

// SetDay sets field value
func (o *GetMealPlanWeek200ResponseDaysInner) SetDay(v string) {
	o.Day = v
}

// GetItems returns the Items field value if set, zero value otherwise.
func (o *GetMealPlanWeek200ResponseDaysInner) GetItems() []GetMealPlanWeek200ResponseDaysInnerItemsInner {
	if o == nil || o.Items == nil {
		var ret []GetMealPlanWeek200ResponseDaysInnerItemsInner
		return ret
	}
	return o.Items
}

// GetItemsOk returns a tuple with the Items field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) GetItemsOk() ([]GetMealPlanWeek200ResponseDaysInnerItemsInner, bool) {
	if o == nil || o.Items == nil {
		return nil, false
	}
	return o.Items, true
}

// HasItems returns a boolean if a field has been set.
func (o *GetMealPlanWeek200ResponseDaysInner) HasItems() bool {
	if o != nil && o.Items != nil {
		return true
	}

	return false
}

// SetItems gets a reference to the given []GetMealPlanWeek200ResponseDaysInnerItemsInner and assigns it to the Items field.
func (o *GetMealPlanWeek200ResponseDaysInner) SetItems(v []GetMealPlanWeek200ResponseDaysInnerItemsInner) {
	o.Items = v
}

func (o GetMealPlanWeek200ResponseDaysInner) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.NutritionSummary != nil {
		toSerialize["nutritionSummary"] = o.NutritionSummary
	}
	if o.NutritionSummaryBreakfast != nil {
		toSerialize["nutritionSummaryBreakfast"] = o.NutritionSummaryBreakfast
	}
	if o.NutritionSummaryLunch != nil {
		toSerialize["nutritionSummaryLunch"] = o.NutritionSummaryLunch
	}
	if o.NutritionSummaryDinner != nil {
		toSerialize["nutritionSummaryDinner"] = o.NutritionSummaryDinner
	}
	if true {
		toSerialize["date"] = o.Date
	}
	if true {
		toSerialize["day"] = o.Day
	}
	if o.Items != nil {
		toSerialize["items"] = o.Items
	}
	return json.Marshal(toSerialize)
}

type NullableGetMealPlanWeek200ResponseDaysInner struct {
	value *GetMealPlanWeek200ResponseDaysInner
	isSet bool
}

func (v NullableGetMealPlanWeek200ResponseDaysInner) Get() *GetMealPlanWeek200ResponseDaysInner {
	return v.value
}

func (v *NullableGetMealPlanWeek200ResponseDaysInner) Set(val *GetMealPlanWeek200ResponseDaysInner) {
	v.value = val
	v.isSet = true
}

func (v NullableGetMealPlanWeek200ResponseDaysInner) IsSet() bool {
	return v.isSet
}

func (v *NullableGetMealPlanWeek200ResponseDaysInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetMealPlanWeek200ResponseDaysInner(val *GetMealPlanWeek200ResponseDaysInner) *NullableGetMealPlanWeek200ResponseDaysInner {
	return &NullableGetMealPlanWeek200ResponseDaysInner{value: val, isSet: true}
}

func (v NullableGetMealPlanWeek200ResponseDaysInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetMealPlanWeek200ResponseDaysInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


