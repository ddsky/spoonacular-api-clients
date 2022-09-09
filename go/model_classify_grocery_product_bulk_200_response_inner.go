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

// ClassifyGroceryProductBulk200ResponseInner struct for ClassifyGroceryProductBulk200ResponseInner
type ClassifyGroceryProductBulk200ResponseInner struct {
	CleanTitle string `json:"cleanTitle"`
	Image string `json:"image"`
	Category string `json:"category"`
	Breadcrumbs []string `json:"breadcrumbs"`
	UsdaCode int32 `json:"usdaCode"`
}

// NewClassifyGroceryProductBulk200ResponseInner instantiates a new ClassifyGroceryProductBulk200ResponseInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewClassifyGroceryProductBulk200ResponseInner(cleanTitle string, image string, category string, breadcrumbs []string, usdaCode int32) *ClassifyGroceryProductBulk200ResponseInner {
	this := ClassifyGroceryProductBulk200ResponseInner{}
	this.CleanTitle = cleanTitle
	this.Image = image
	this.Category = category
	this.Breadcrumbs = breadcrumbs
	this.UsdaCode = usdaCode
	return &this
}

// NewClassifyGroceryProductBulk200ResponseInnerWithDefaults instantiates a new ClassifyGroceryProductBulk200ResponseInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewClassifyGroceryProductBulk200ResponseInnerWithDefaults() *ClassifyGroceryProductBulk200ResponseInner {
	this := ClassifyGroceryProductBulk200ResponseInner{}
	return &this
}

// GetCleanTitle returns the CleanTitle field value
func (o *ClassifyGroceryProductBulk200ResponseInner) GetCleanTitle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.CleanTitle
}

// GetCleanTitleOk returns a tuple with the CleanTitle field value
// and a boolean to check if the value has been set.
func (o *ClassifyGroceryProductBulk200ResponseInner) GetCleanTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.CleanTitle, true
}

// SetCleanTitle sets field value
func (o *ClassifyGroceryProductBulk200ResponseInner) SetCleanTitle(v string) {
	o.CleanTitle = v
}

// GetImage returns the Image field value
func (o *ClassifyGroceryProductBulk200ResponseInner) GetImage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Image
}

// GetImageOk returns a tuple with the Image field value
// and a boolean to check if the value has been set.
func (o *ClassifyGroceryProductBulk200ResponseInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Image, true
}

// SetImage sets field value
func (o *ClassifyGroceryProductBulk200ResponseInner) SetImage(v string) {
	o.Image = v
}

// GetCategory returns the Category field value
func (o *ClassifyGroceryProductBulk200ResponseInner) GetCategory() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Category
}

// GetCategoryOk returns a tuple with the Category field value
// and a boolean to check if the value has been set.
func (o *ClassifyGroceryProductBulk200ResponseInner) GetCategoryOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Category, true
}

// SetCategory sets field value
func (o *ClassifyGroceryProductBulk200ResponseInner) SetCategory(v string) {
	o.Category = v
}

// GetBreadcrumbs returns the Breadcrumbs field value
func (o *ClassifyGroceryProductBulk200ResponseInner) GetBreadcrumbs() []string {
	if o == nil {
		var ret []string
		return ret
	}

	return o.Breadcrumbs
}

// GetBreadcrumbsOk returns a tuple with the Breadcrumbs field value
// and a boolean to check if the value has been set.
func (o *ClassifyGroceryProductBulk200ResponseInner) GetBreadcrumbsOk() ([]string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Breadcrumbs, true
}

// SetBreadcrumbs sets field value
func (o *ClassifyGroceryProductBulk200ResponseInner) SetBreadcrumbs(v []string) {
	o.Breadcrumbs = v
}

// GetUsdaCode returns the UsdaCode field value
func (o *ClassifyGroceryProductBulk200ResponseInner) GetUsdaCode() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.UsdaCode
}

// GetUsdaCodeOk returns a tuple with the UsdaCode field value
// and a boolean to check if the value has been set.
func (o *ClassifyGroceryProductBulk200ResponseInner) GetUsdaCodeOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.UsdaCode, true
}

// SetUsdaCode sets field value
func (o *ClassifyGroceryProductBulk200ResponseInner) SetUsdaCode(v int32) {
	o.UsdaCode = v
}

func (o ClassifyGroceryProductBulk200ResponseInner) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if true {
		toSerialize["cleanTitle"] = o.CleanTitle
	}
	if true {
		toSerialize["image"] = o.Image
	}
	if true {
		toSerialize["category"] = o.Category
	}
	if true {
		toSerialize["breadcrumbs"] = o.Breadcrumbs
	}
	if true {
		toSerialize["usdaCode"] = o.UsdaCode
	}
	return json.Marshal(toSerialize)
}

type NullableClassifyGroceryProductBulk200ResponseInner struct {
	value *ClassifyGroceryProductBulk200ResponseInner
	isSet bool
}

func (v NullableClassifyGroceryProductBulk200ResponseInner) Get() *ClassifyGroceryProductBulk200ResponseInner {
	return v.value
}

func (v *NullableClassifyGroceryProductBulk200ResponseInner) Set(val *ClassifyGroceryProductBulk200ResponseInner) {
	v.value = val
	v.isSet = true
}

func (v NullableClassifyGroceryProductBulk200ResponseInner) IsSet() bool {
	return v.isSet
}

func (v *NullableClassifyGroceryProductBulk200ResponseInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableClassifyGroceryProductBulk200ResponseInner(val *ClassifyGroceryProductBulk200ResponseInner) *NullableClassifyGroceryProductBulk200ResponseInner {
	return &NullableClassifyGroceryProductBulk200ResponseInner{value: val, isSet: true}
}

func (v NullableClassifyGroceryProductBulk200ResponseInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableClassifyGroceryProductBulk200ResponseInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}

