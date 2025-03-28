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

// checks if the SearchRecipesByNutrients200ResponseInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchRecipesByNutrients200ResponseInner{}

// SearchRecipesByNutrients200ResponseInner struct for SearchRecipesByNutrients200ResponseInner
type SearchRecipesByNutrients200ResponseInner struct {
	Calories float32 `json:"calories"`
	Carbs string `json:"carbs"`
	Fat string `json:"fat"`
	Id int32 `json:"id"`
	Image string `json:"image"`
	ImageType string `json:"imageType"`
	Protein string `json:"protein"`
	Title string `json:"title"`
}

type _SearchRecipesByNutrients200ResponseInner SearchRecipesByNutrients200ResponseInner

// NewSearchRecipesByNutrients200ResponseInner instantiates a new SearchRecipesByNutrients200ResponseInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchRecipesByNutrients200ResponseInner(calories float32, carbs string, fat string, id int32, image string, imageType string, protein string, title string) *SearchRecipesByNutrients200ResponseInner {
	this := SearchRecipesByNutrients200ResponseInner{}
	this.Calories = calories
	this.Carbs = carbs
	this.Fat = fat
	this.Id = id
	this.Image = image
	this.ImageType = imageType
	this.Protein = protein
	this.Title = title
	return &this
}

// NewSearchRecipesByNutrients200ResponseInnerWithDefaults instantiates a new SearchRecipesByNutrients200ResponseInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchRecipesByNutrients200ResponseInnerWithDefaults() *SearchRecipesByNutrients200ResponseInner {
	this := SearchRecipesByNutrients200ResponseInner{}
	return &this
}

// GetCalories returns the Calories field value
func (o *SearchRecipesByNutrients200ResponseInner) GetCalories() float32 {
	if o == nil {
		var ret float32
		return ret
	}

	return o.Calories
}

// GetCaloriesOk returns a tuple with the Calories field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByNutrients200ResponseInner) GetCaloriesOk() (*float32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Calories, true
}

// SetCalories sets field value
func (o *SearchRecipesByNutrients200ResponseInner) SetCalories(v float32) {
	o.Calories = v
}

// GetCarbs returns the Carbs field value
func (o *SearchRecipesByNutrients200ResponseInner) GetCarbs() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Carbs
}

// GetCarbsOk returns a tuple with the Carbs field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByNutrients200ResponseInner) GetCarbsOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Carbs, true
}

// SetCarbs sets field value
func (o *SearchRecipesByNutrients200ResponseInner) SetCarbs(v string) {
	o.Carbs = v
}

// GetFat returns the Fat field value
func (o *SearchRecipesByNutrients200ResponseInner) GetFat() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Fat
}

// GetFatOk returns a tuple with the Fat field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByNutrients200ResponseInner) GetFatOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Fat, true
}

// SetFat sets field value
func (o *SearchRecipesByNutrients200ResponseInner) SetFat(v string) {
	o.Fat = v
}

// GetId returns the Id field value
func (o *SearchRecipesByNutrients200ResponseInner) GetId() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Id
}

// GetIdOk returns a tuple with the Id field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByNutrients200ResponseInner) GetIdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Id, true
}

// SetId sets field value
func (o *SearchRecipesByNutrients200ResponseInner) SetId(v int32) {
	o.Id = v
}

// GetImage returns the Image field value
func (o *SearchRecipesByNutrients200ResponseInner) GetImage() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Image
}

// GetImageOk returns a tuple with the Image field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByNutrients200ResponseInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Image, true
}

// SetImage sets field value
func (o *SearchRecipesByNutrients200ResponseInner) SetImage(v string) {
	o.Image = v
}

// GetImageType returns the ImageType field value
func (o *SearchRecipesByNutrients200ResponseInner) GetImageType() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.ImageType
}

// GetImageTypeOk returns a tuple with the ImageType field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByNutrients200ResponseInner) GetImageTypeOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.ImageType, true
}

// SetImageType sets field value
func (o *SearchRecipesByNutrients200ResponseInner) SetImageType(v string) {
	o.ImageType = v
}

// GetProtein returns the Protein field value
func (o *SearchRecipesByNutrients200ResponseInner) GetProtein() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Protein
}

// GetProteinOk returns a tuple with the Protein field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByNutrients200ResponseInner) GetProteinOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Protein, true
}

// SetProtein sets field value
func (o *SearchRecipesByNutrients200ResponseInner) SetProtein(v string) {
	o.Protein = v
}

// GetTitle returns the Title field value
func (o *SearchRecipesByNutrients200ResponseInner) GetTitle() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.Title
}

// GetTitleOk returns a tuple with the Title field value
// and a boolean to check if the value has been set.
func (o *SearchRecipesByNutrients200ResponseInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Title, true
}

// SetTitle sets field value
func (o *SearchRecipesByNutrients200ResponseInner) SetTitle(v string) {
	o.Title = v
}

func (o SearchRecipesByNutrients200ResponseInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchRecipesByNutrients200ResponseInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	toSerialize["calories"] = o.Calories
	toSerialize["carbs"] = o.Carbs
	toSerialize["fat"] = o.Fat
	toSerialize["id"] = o.Id
	toSerialize["image"] = o.Image
	toSerialize["imageType"] = o.ImageType
	toSerialize["protein"] = o.Protein
	toSerialize["title"] = o.Title
	return toSerialize, nil
}

func (o *SearchRecipesByNutrients200ResponseInner) UnmarshalJSON(data []byte) (err error) {
	// This validates that all required properties are included in the JSON object
	// by unmarshalling the object into a generic map with string keys and checking
	// that every required field exists as a key in the generic map.
	requiredProperties := []string{
		"calories",
		"carbs",
		"fat",
		"id",
		"image",
		"imageType",
		"protein",
		"title",
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

	varSearchRecipesByNutrients200ResponseInner := _SearchRecipesByNutrients200ResponseInner{}

	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	err = decoder.Decode(&varSearchRecipesByNutrients200ResponseInner)

	if err != nil {
		return err
	}

	*o = SearchRecipesByNutrients200ResponseInner(varSearchRecipesByNutrients200ResponseInner)

	return err
}

type NullableSearchRecipesByNutrients200ResponseInner struct {
	value *SearchRecipesByNutrients200ResponseInner
	isSet bool
}

func (v NullableSearchRecipesByNutrients200ResponseInner) Get() *SearchRecipesByNutrients200ResponseInner {
	return v.value
}

func (v *NullableSearchRecipesByNutrients200ResponseInner) Set(val *SearchRecipesByNutrients200ResponseInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchRecipesByNutrients200ResponseInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchRecipesByNutrients200ResponseInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchRecipesByNutrients200ResponseInner(val *SearchRecipesByNutrients200ResponseInner) *NullableSearchRecipesByNutrients200ResponseInner {
	return &NullableSearchRecipesByNutrients200ResponseInner{value: val, isSet: true}
}

func (v NullableSearchRecipesByNutrients200ResponseInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchRecipesByNutrients200ResponseInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


