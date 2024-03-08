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

// checks if the GetComparableProducts200ResponseComparableProducts type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &GetComparableProducts200ResponseComparableProducts{}

// GetComparableProducts200ResponseComparableProducts struct for GetComparableProducts200ResponseComparableProducts
type GetComparableProducts200ResponseComparableProducts struct {
	Calories []map[string]interface{} `json:"calories"`
	Likes []map[string]interface{} `json:"likes"`
	Price []map[string]interface{} `json:"price"`
	Protein []GetComparableProducts200ResponseComparableProductsProteinInner `json:"protein"`
	SpoonacularScore []GetComparableProducts200ResponseComparableProductsProteinInner `json:"spoonacularScore"`
	Sugar []map[string]interface{} `json:"sugar"`
}

type _GetComparableProducts200ResponseComparableProducts GetComparableProducts200ResponseComparableProducts

// NewGetComparableProducts200ResponseComparableProducts instantiates a new GetComparableProducts200ResponseComparableProducts object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewGetComparableProducts200ResponseComparableProducts(calories []map[string]interface{}, likes []map[string]interface{}, price []map[string]interface{}, protein []GetComparableProducts200ResponseComparableProductsProteinInner, spoonacularScore []GetComparableProducts200ResponseComparableProductsProteinInner, sugar []map[string]interface{}) *GetComparableProducts200ResponseComparableProducts {
	this := GetComparableProducts200ResponseComparableProducts{}
	this.Calories = calories
	this.Likes = likes
	this.Price = price
	this.Protein = protein
	this.SpoonacularScore = spoonacularScore
	this.Sugar = sugar
	return &this
}

// NewGetComparableProducts200ResponseComparableProductsWithDefaults instantiates a new GetComparableProducts200ResponseComparableProducts object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewGetComparableProducts200ResponseComparableProductsWithDefaults() *GetComparableProducts200ResponseComparableProducts {
	this := GetComparableProducts200ResponseComparableProducts{}
	return &this
}

// GetCalories returns the Calories field value
func (o *GetComparableProducts200ResponseComparableProducts) GetCalories() []map[string]interface{} {
	if o == nil {
		var ret []map[string]interface{}
		return ret
	}

	return o.Calories
}

// GetCaloriesOk returns a tuple with the Calories field value
// and a boolean to check if the value has been set.
func (o *GetComparableProducts200ResponseComparableProducts) GetCaloriesOk() ([]map[string]interface{}, bool) {
	if o == nil {
		return nil, false
	}
	return o.Calories, true
}

// SetCalories sets field value
func (o *GetComparableProducts200ResponseComparableProducts) SetCalories(v []map[string]interface{}) {
	o.Calories = v
}

// GetLikes returns the Likes field value
func (o *GetComparableProducts200ResponseComparableProducts) GetLikes() []map[string]interface{} {
	if o == nil {
		var ret []map[string]interface{}
		return ret
	}

	return o.Likes
}

// GetLikesOk returns a tuple with the Likes field value
// and a boolean to check if the value has been set.
func (o *GetComparableProducts200ResponseComparableProducts) GetLikesOk() ([]map[string]interface{}, bool) {
	if o == nil {
		return nil, false
	}
	return o.Likes, true
}

// SetLikes sets field value
func (o *GetComparableProducts200ResponseComparableProducts) SetLikes(v []map[string]interface{}) {
	o.Likes = v
}

// GetPrice returns the Price field value
func (o *GetComparableProducts200ResponseComparableProducts) GetPrice() []map[string]interface{} {
	if o == nil {
		var ret []map[string]interface{}
		return ret
	}

	return o.Price
}

// GetPriceOk returns a tuple with the Price field value
// and a boolean to check if the value has been set.
func (o *GetComparableProducts200ResponseComparableProducts) GetPriceOk() ([]map[string]interface{}, bool) {
	if o == nil {
		return nil, false
	}
	return o.Price, true
}

// SetPrice sets field value
func (o *GetComparableProducts200ResponseComparableProducts) SetPrice(v []map[string]interface{}) {
	o.Price = v
}

// GetProtein returns the Protein field value
func (o *GetComparableProducts200ResponseComparableProducts) GetProtein() []GetComparableProducts200ResponseComparableProductsProteinInner {
	if o == nil {
		var ret []GetComparableProducts200ResponseComparableProductsProteinInner
		return ret
	}

	return o.Protein
}

// GetProteinOk returns a tuple with the Protein field value
// and a boolean to check if the value has been set.
func (o *GetComparableProducts200ResponseComparableProducts) GetProteinOk() ([]GetComparableProducts200ResponseComparableProductsProteinInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.Protein, true
}

// SetProtein sets field value
func (o *GetComparableProducts200ResponseComparableProducts) SetProtein(v []GetComparableProducts200ResponseComparableProductsProteinInner) {
	o.Protein = v
}

// GetSpoonacularScore returns the SpoonacularScore field value
func (o *GetComparableProducts200ResponseComparableProducts) GetSpoonacularScore() []GetComparableProducts200ResponseComparableProductsProteinInner {
	if o == nil {
		var ret []GetComparableProducts200ResponseComparableProductsProteinInner
		return ret
	}

	return o.SpoonacularScore
}

// GetSpoonacularScoreOk returns a tuple with the SpoonacularScore field value
// and a boolean to check if the value has been set.
func (o *GetComparableProducts200ResponseComparableProducts) GetSpoonacularScoreOk() ([]GetComparableProducts200ResponseComparableProductsProteinInner, bool) {
	if o == nil {
		return nil, false
	}
	return o.SpoonacularScore, true
}

// SetSpoonacularScore sets field value
func (o *GetComparableProducts200ResponseComparableProducts) SetSpoonacularScore(v []GetComparableProducts200ResponseComparableProductsProteinInner) {
	o.SpoonacularScore = v
}

// GetSugar returns the Sugar field value
func (o *GetComparableProducts200ResponseComparableProducts) GetSugar() []map[string]interface{} {
	if o == nil {
		var ret []map[string]interface{}
		return ret
	}

	return o.Sugar
}

// GetSugarOk returns a tuple with the Sugar field value
// and a boolean to check if the value has been set.
func (o *GetComparableProducts200ResponseComparableProducts) GetSugarOk() ([]map[string]interface{}, bool) {
	if o == nil {
		return nil, false
	}
	return o.Sugar, true
}

// SetSugar sets field value
func (o *GetComparableProducts200ResponseComparableProducts) SetSugar(v []map[string]interface{}) {
	o.Sugar = v
}

func (o GetComparableProducts200ResponseComparableProducts) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o GetComparableProducts200ResponseComparableProducts) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["calories"] = o.Calories
	toSerialize["likes"] = o.Likes
	toSerialize["price"] = o.Price
	toSerialize["protein"] = o.Protein
	toSerialize["spoonacularScore"] = o.SpoonacularScore
	toSerialize["sugar"] = o.Sugar
	return toSerialize, nil
}

func (o *GetComparableProducts200ResponseComparableProducts) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"calories",
		"likes",
		"price",
		"protein",
		"spoonacularScore",
		"sugar",
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

	varGetComparableProducts200ResponseComparableProducts := _GetComparableProducts200ResponseComparableProducts{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varGetComparableProducts200ResponseComparableProducts)

	if err != nil {
		return err
	}

	*o = GetComparableProducts200ResponseComparableProducts(varGetComparableProducts200ResponseComparableProducts)

	return err
}

type NullableGetComparableProducts200ResponseComparableProducts struct {
	value *GetComparableProducts200ResponseComparableProducts
	isSet bool
}

func (v NullableGetComparableProducts200ResponseComparableProducts) Get() *GetComparableProducts200ResponseComparableProducts {
	return v.value
}

func (v *NullableGetComparableProducts200ResponseComparableProducts) Set(val *GetComparableProducts200ResponseComparableProducts) {
	v.value = val
	v.isSet = true
}

func (v NullableGetComparableProducts200ResponseComparableProducts) IsSet() bool {
	return v.isSet
}

func (v *NullableGetComparableProducts200ResponseComparableProducts) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableGetComparableProducts200ResponseComparableProducts(val *GetComparableProducts200ResponseComparableProducts) *NullableGetComparableProducts200ResponseComparableProducts {
	return &NullableGetComparableProducts200ResponseComparableProducts{value: val, isSet: true}
}

func (v NullableGetComparableProducts200ResponseComparableProducts) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableGetComparableProducts200ResponseComparableProducts) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


