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

// checks if the SearchMenuItems200ResponseMenuItemsInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchMenuItems200ResponseMenuItemsInner{}

// SearchMenuItems200ResponseMenuItemsInner struct for SearchMenuItems200ResponseMenuItemsInner
type SearchMenuItems200ResponseMenuItemsInner struct {
	Id int32 `json:"id"`
	Title string `json:"title"`
	RestaurantChain string `json:"restaurantChain"`
	Image string `json:"image"`
	ImageType string `json:"imageType"`
	Servings *SearchGroceryProductsByUPC200ResponseServings `json:"servings,omitempty"`
}

type _SearchMenuItems200ResponseMenuItemsInner SearchMenuItems200ResponseMenuItemsInner

// NewSearchMenuItems200ResponseMenuItemsInner instantiates a new SearchMenuItems200ResponseMenuItemsInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchMenuItems200ResponseMenuItemsInner(id int32, title string, restaurantChain string, image string, imageType string) *SearchMenuItems200ResponseMenuItemsInner {
	this := SearchMenuItems200ResponseMenuItemsInner{}
	this.Id = id
	this.Title = title
	this.RestaurantChain = restaurantChain
	this.Image = image
	this.ImageType = imageType
	return &this
}

// NewSearchMenuItems200ResponseMenuItemsInnerWithDefaults instantiates a new SearchMenuItems200ResponseMenuItemsInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchMenuItems200ResponseMenuItemsInnerWithDefaults() *SearchMenuItems200ResponseMenuItemsInner {
	this := SearchMenuItems200ResponseMenuItemsInner{}
	return &this
}

// GetId returns the Id field value
func (o *SearchMenuItems200ResponseMenuItemsInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *SearchMenuItems200ResponseMenuItemsInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *SearchMenuItems200ResponseMenuItemsInner) SetId(v int32) {
	o.Id = v
}

// GetTitle returns the Title field value
func (o *SearchMenuItems200ResponseMenuItemsInner) GetTitle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Title
}

// GetTitleOk returns a tuple with the Title field value
// and a boolean to check if the value has been set.
func (o *SearchMenuItems200ResponseMenuItemsInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Title, true
}

// SetTitle sets field value
func (o *SearchMenuItems200ResponseMenuItemsInner) SetTitle(v string) {
	o.Title = v
}

// GetRestaurantChain returns the RestaurantChain field value
func (o *SearchMenuItems200ResponseMenuItemsInner) GetRestaurantChain() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.RestaurantChain
}

// GetRestaurantChainOk returns a tuple with the RestaurantChain field value
// and a boolean to check if the value has been set.
func (o *SearchMenuItems200ResponseMenuItemsInner) GetRestaurantChainOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.RestaurantChain, true
}

// SetRestaurantChain sets field value
func (o *SearchMenuItems200ResponseMenuItemsInner) SetRestaurantChain(v string) {
	o.RestaurantChain = v
}

// GetImage returns the Image field value
func (o *SearchMenuItems200ResponseMenuItemsInner) GetImage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Image
}

// GetImageOk returns a tuple with the Image field value
// and a boolean to check if the value has been set.
func (o *SearchMenuItems200ResponseMenuItemsInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Image, true
}

// SetImage sets field value
func (o *SearchMenuItems200ResponseMenuItemsInner) SetImage(v string) {
	o.Image = v
}

// GetImageType returns the ImageType field value
func (o *SearchMenuItems200ResponseMenuItemsInner) GetImageType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ImageType
}

// GetImageTypeOk returns a tuple with the ImageType field value
// and a boolean to check if the value has been set.
func (o *SearchMenuItems200ResponseMenuItemsInner) GetImageTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ImageType, true
}

// SetImageType sets field value
func (o *SearchMenuItems200ResponseMenuItemsInner) SetImageType(v string) {
	o.ImageType = v
}

// GetServings returns the Servings field value if set, zero value otherwise.
func (o *SearchMenuItems200ResponseMenuItemsInner) GetServings() SearchGroceryProductsByUPC200ResponseServings {
	if o == nil || IsNil(o.Servings) {
		var ret SearchGroceryProductsByUPC200ResponseServings
		return ret
	}
	return *o.Servings
}

// GetServingsOk returns a tuple with the Servings field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchMenuItems200ResponseMenuItemsInner) GetServingsOk() (*SearchGroceryProductsByUPC200ResponseServings, bool) {
	if o == nil || IsNil(o.Servings) {
		return nil, false
	}
	return o.Servings, true
}

// HasServings returns a boolean if a field has been set.
func (o *SearchMenuItems200ResponseMenuItemsInner) HasServings() bool {
	if o != nil && !IsNil(o.Servings) {
		return true
	}

	return false
}

// SetServings gets a reference to the given SearchGroceryProductsByUPC200ResponseServings and assigns it to the Servings field.
func (o *SearchMenuItems200ResponseMenuItemsInner) SetServings(v SearchGroceryProductsByUPC200ResponseServings) {
	o.Servings = &v
}

func (o SearchMenuItems200ResponseMenuItemsInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchMenuItems200ResponseMenuItemsInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["id"] = o.Id
	toSerialize["title"] = o.Title
	toSerialize["restaurantChain"] = o.RestaurantChain
	toSerialize["image"] = o.Image
	toSerialize["imageType"] = o.ImageType
	if !IsNil(o.Servings) {
		toSerialize["servings"] = o.Servings
	}
	return toSerialize, nil
}

func (o *SearchMenuItems200ResponseMenuItemsInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"id",
		"title",
		"restaurantChain",
		"image",
		"imageType",
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

	varSearchMenuItems200ResponseMenuItemsInner := _SearchMenuItems200ResponseMenuItemsInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varSearchMenuItems200ResponseMenuItemsInner)

	if err != nil {
		return err
	}

	*o = SearchMenuItems200ResponseMenuItemsInner(varSearchMenuItems200ResponseMenuItemsInner)

	return err
}

type NullableSearchMenuItems200ResponseMenuItemsInner struct {
	value *SearchMenuItems200ResponseMenuItemsInner
	isSet bool
}

func (v NullableSearchMenuItems200ResponseMenuItemsInner) Get() *SearchMenuItems200ResponseMenuItemsInner {
	return v.value
}

func (v *NullableSearchMenuItems200ResponseMenuItemsInner) Set(val *SearchMenuItems200ResponseMenuItemsInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchMenuItems200ResponseMenuItemsInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchMenuItems200ResponseMenuItemsInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchMenuItems200ResponseMenuItemsInner(val *SearchMenuItems200ResponseMenuItemsInner) *NullableSearchMenuItems200ResponseMenuItemsInner {
	return &NullableSearchMenuItems200ResponseMenuItemsInner{value: val, isSet: true}
}

func (v NullableSearchMenuItems200ResponseMenuItemsInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchMenuItems200ResponseMenuItemsInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


