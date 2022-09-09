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

// AddMealPlanTemplate200ResponseItemsInnerValue struct for AddMealPlanTemplate200ResponseItemsInnerValue
type AddMealPlanTemplate200ResponseItemsInnerValue struct {
	Id *int32 `json:"id,omitempty"`
	Servings *float32 `json:"servings,omitempty"`
	Title *string `json:"title,omitempty"`
	ImageType *string `json:"imageType,omitempty"`
}

// NewAddMealPlanTemplate200ResponseItemsInnerValue instantiates a new AddMealPlanTemplate200ResponseItemsInnerValue object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewAddMealPlanTemplate200ResponseItemsInnerValue() *AddMealPlanTemplate200ResponseItemsInnerValue {
	this := AddMealPlanTemplate200ResponseItemsInnerValue{}
	return &this
}

// NewAddMealPlanTemplate200ResponseItemsInnerValueWithDefaults instantiates a new AddMealPlanTemplate200ResponseItemsInnerValue object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewAddMealPlanTemplate200ResponseItemsInnerValueWithDefaults() *AddMealPlanTemplate200ResponseItemsInnerValue {
	this := AddMealPlanTemplate200ResponseItemsInnerValue{}
	return &this
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) GetId() int32 {
	if o == nil || o.Id == nil {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) GetIdOk() (*int32, bool) {
	if o == nil || o.Id == nil {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) HasId() bool {
	if o != nil && o.Id != nil {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) SetId(v int32) {
	o.Id = &v
}

// GetServings returns the Servings field value if set, zero value otherwise.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) GetServings() float32 {
	if o == nil || o.Servings == nil {
		var ret float32
		return ret
	}
	return *o.Servings
}

// GetServingsOk returns a tuple with the Servings field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) GetServingsOk() (*float32, bool) {
	if o == nil || o.Servings == nil {
		return nil, false
	}
	return o.Servings, true
}

// HasServings returns a boolean if a field has been set.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) HasServings() bool {
	if o != nil && o.Servings != nil {
		return true
	}

	return false
}

// SetServings gets a reference to the given float32 and assigns it to the Servings field.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) SetServings(v float32) {
	o.Servings = &v
}

// GetTitle returns the Title field value if set, zero value otherwise.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) GetTitle() string {
	if o == nil || o.Title == nil {
		var ret string
		return ret
	}
	return *o.Title
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) GetTitleOk() (*string, bool) {
	if o == nil || o.Title == nil {
		return nil, false
	}
	return o.Title, true
}

// HasTitle returns a boolean if a field has been set.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) HasTitle() bool {
	if o != nil && o.Title != nil {
		return true
	}

	return false
}

// SetTitle gets a reference to the given string and assigns it to the Title field.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) SetTitle(v string) {
	o.Title = &v
}

// GetImageType returns the ImageType field value if set, zero value otherwise.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) GetImageType() string {
	if o == nil || o.ImageType == nil {
		var ret string
		return ret
	}
	return *o.ImageType
}

// GetImageTypeOk returns a tuple with the ImageType field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) GetImageTypeOk() (*string, bool) {
	if o == nil || o.ImageType == nil {
		return nil, false
	}
	return o.ImageType, true
}

// HasImageType returns a boolean if a field has been set.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) HasImageType() bool {
	if o != nil && o.ImageType != nil {
		return true
	}

	return false
}

// SetImageType gets a reference to the given string and assigns it to the ImageType field.
func (o *AddMealPlanTemplate200ResponseItemsInnerValue) SetImageType(v string) {
	o.ImageType = &v
}

func (o AddMealPlanTemplate200ResponseItemsInnerValue) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Id != nil {
		toSerialize["id"] = o.Id
	}
	if o.Servings != nil {
		toSerialize["servings"] = o.Servings
	}
	if o.Title != nil {
		toSerialize["title"] = o.Title
	}
	if o.ImageType != nil {
		toSerialize["imageType"] = o.ImageType
	}
	return json.Marshal(toSerialize)
}

type NullableAddMealPlanTemplate200ResponseItemsInnerValue struct {
	value *AddMealPlanTemplate200ResponseItemsInnerValue
	isSet bool
}

func (v NullableAddMealPlanTemplate200ResponseItemsInnerValue) Get() *AddMealPlanTemplate200ResponseItemsInnerValue {
	return v.value
}

func (v *NullableAddMealPlanTemplate200ResponseItemsInnerValue) Set(val *AddMealPlanTemplate200ResponseItemsInnerValue) {
	v.value = val
	v.isSet = true
}

func (v NullableAddMealPlanTemplate200ResponseItemsInnerValue) IsSet() bool {
	return v.isSet
}

func (v *NullableAddMealPlanTemplate200ResponseItemsInnerValue) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableAddMealPlanTemplate200ResponseItemsInnerValue(val *AddMealPlanTemplate200ResponseItemsInnerValue) *NullableAddMealPlanTemplate200ResponseItemsInnerValue {
	return &NullableAddMealPlanTemplate200ResponseItemsInnerValue{value: val, isSet: true}
}

func (v NullableAddMealPlanTemplate200ResponseItemsInnerValue) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableAddMealPlanTemplate200ResponseItemsInnerValue) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


