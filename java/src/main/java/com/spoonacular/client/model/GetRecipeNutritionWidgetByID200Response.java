/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.spoonacular.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.spoonacular.client.model.GetRecipeNutritionWidgetByID200ResponseBadInner;
import com.spoonacular.client.model.GetRecipeNutritionWidgetByID200ResponseGoodInner;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.spoonacular.client.JSON;

/**
 * 
 */
@ApiModel(description = "")
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-09-09T18:25:28.115+02:00[Europe/Berlin]")
public class GetRecipeNutritionWidgetByID200Response {
  public static final String SERIALIZED_NAME_CALORIES = "calories";
  @SerializedName(SERIALIZED_NAME_CALORIES)
  private String calories;

  public static final String SERIALIZED_NAME_CARBS = "carbs";
  @SerializedName(SERIALIZED_NAME_CARBS)
  private String carbs;

  public static final String SERIALIZED_NAME_FAT = "fat";
  @SerializedName(SERIALIZED_NAME_FAT)
  private String fat;

  public static final String SERIALIZED_NAME_PROTEIN = "protein";
  @SerializedName(SERIALIZED_NAME_PROTEIN)
  private String protein;

  public static final String SERIALIZED_NAME_BAD = "bad";
  @SerializedName(SERIALIZED_NAME_BAD)
  private Set<GetRecipeNutritionWidgetByID200ResponseBadInner> bad = new LinkedHashSet<>();

  public static final String SERIALIZED_NAME_GOOD = "good";
  @SerializedName(SERIALIZED_NAME_GOOD)
  private Set<GetRecipeNutritionWidgetByID200ResponseGoodInner> good = new LinkedHashSet<>();

  public GetRecipeNutritionWidgetByID200Response() { 
  }

  public GetRecipeNutritionWidgetByID200Response calories(String calories) {
    
    this.calories = calories;
    return this;
  }

   /**
   * Get calories
   * @return calories
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getCalories() {
    return calories;
  }


  public void setCalories(String calories) {
    this.calories = calories;
  }


  public GetRecipeNutritionWidgetByID200Response carbs(String carbs) {
    
    this.carbs = carbs;
    return this;
  }

   /**
   * Get carbs
   * @return carbs
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getCarbs() {
    return carbs;
  }


  public void setCarbs(String carbs) {
    this.carbs = carbs;
  }


  public GetRecipeNutritionWidgetByID200Response fat(String fat) {
    
    this.fat = fat;
    return this;
  }

   /**
   * Get fat
   * @return fat
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getFat() {
    return fat;
  }


  public void setFat(String fat) {
    this.fat = fat;
  }


  public GetRecipeNutritionWidgetByID200Response protein(String protein) {
    
    this.protein = protein;
    return this;
  }

   /**
   * Get protein
   * @return protein
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getProtein() {
    return protein;
  }


  public void setProtein(String protein) {
    this.protein = protein;
  }


  public GetRecipeNutritionWidgetByID200Response bad(Set<GetRecipeNutritionWidgetByID200ResponseBadInner> bad) {
    
    this.bad = bad;
    return this;
  }

  public GetRecipeNutritionWidgetByID200Response addBadItem(GetRecipeNutritionWidgetByID200ResponseBadInner badItem) {
    this.bad.add(badItem);
    return this;
  }

   /**
   * Get bad
   * @return bad
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Set<GetRecipeNutritionWidgetByID200ResponseBadInner> getBad() {
    return bad;
  }


  public void setBad(Set<GetRecipeNutritionWidgetByID200ResponseBadInner> bad) {
    this.bad = bad;
  }


  public GetRecipeNutritionWidgetByID200Response good(Set<GetRecipeNutritionWidgetByID200ResponseGoodInner> good) {
    
    this.good = good;
    return this;
  }

  public GetRecipeNutritionWidgetByID200Response addGoodItem(GetRecipeNutritionWidgetByID200ResponseGoodInner goodItem) {
    this.good.add(goodItem);
    return this;
  }

   /**
   * Get good
   * @return good
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Set<GetRecipeNutritionWidgetByID200ResponseGoodInner> getGood() {
    return good;
  }


  public void setGood(Set<GetRecipeNutritionWidgetByID200ResponseGoodInner> good) {
    this.good = good;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GetRecipeNutritionWidgetByID200Response getRecipeNutritionWidgetByID200Response = (GetRecipeNutritionWidgetByID200Response) o;
    return Objects.equals(this.calories, getRecipeNutritionWidgetByID200Response.calories) &&
        Objects.equals(this.carbs, getRecipeNutritionWidgetByID200Response.carbs) &&
        Objects.equals(this.fat, getRecipeNutritionWidgetByID200Response.fat) &&
        Objects.equals(this.protein, getRecipeNutritionWidgetByID200Response.protein) &&
        Objects.equals(this.bad, getRecipeNutritionWidgetByID200Response.bad) &&
        Objects.equals(this.good, getRecipeNutritionWidgetByID200Response.good);
  }

  @Override
  public int hashCode() {
    return Objects.hash(calories, carbs, fat, protein, bad, good);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class GetRecipeNutritionWidgetByID200Response {\n");
    sb.append("    calories: ").append(toIndentedString(calories)).append("\n");
    sb.append("    carbs: ").append(toIndentedString(carbs)).append("\n");
    sb.append("    fat: ").append(toIndentedString(fat)).append("\n");
    sb.append("    protein: ").append(toIndentedString(protein)).append("\n");
    sb.append("    bad: ").append(toIndentedString(bad)).append("\n");
    sb.append("    good: ").append(toIndentedString(good)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


  public static HashSet<String> openapiFields;
  public static HashSet<String> openapiRequiredFields;

  static {
    // a set of all properties/fields (JSON key names)
    openapiFields = new HashSet<String>();
    openapiFields.add("calories");
    openapiFields.add("carbs");
    openapiFields.add("fat");
    openapiFields.add("protein");
    openapiFields.add("bad");
    openapiFields.add("good");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("calories");
    openapiRequiredFields.add("carbs");
    openapiRequiredFields.add("fat");
    openapiRequiredFields.add("protein");
    openapiRequiredFields.add("bad");
    openapiRequiredFields.add("good");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to GetRecipeNutritionWidgetByID200Response
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (GetRecipeNutritionWidgetByID200Response.openapiRequiredFields.isEmpty()) {
          return;
        } else { // has required fields
          throw new IllegalArgumentException(String.format("The required field(s) %s in GetRecipeNutritionWidgetByID200Response is not found in the empty JSON string", GetRecipeNutritionWidgetByID200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!GetRecipeNutritionWidgetByID200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `GetRecipeNutritionWidgetByID200Response` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : GetRecipeNutritionWidgetByID200Response.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      if (jsonObj.get("calories") != null && !jsonObj.get("calories").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `calories` to be a primitive type in the JSON string but got `%s`", jsonObj.get("calories").toString()));
      }
      if (jsonObj.get("carbs") != null && !jsonObj.get("carbs").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `carbs` to be a primitive type in the JSON string but got `%s`", jsonObj.get("carbs").toString()));
      }
      if (jsonObj.get("fat") != null && !jsonObj.get("fat").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `fat` to be a primitive type in the JSON string but got `%s`", jsonObj.get("fat").toString()));
      }
      if (jsonObj.get("protein") != null && !jsonObj.get("protein").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `protein` to be a primitive type in the JSON string but got `%s`", jsonObj.get("protein").toString()));
      }
      JsonArray jsonArraybad = jsonObj.getAsJsonArray("bad");
      if (jsonArraybad != null) {
        // ensure the json data is an array
        if (!jsonObj.get("bad").isJsonArray()) {
          throw new IllegalArgumentException(String.format("Expected the field `bad` to be an array in the JSON string but got `%s`", jsonObj.get("bad").toString()));
        }

        // validate the optional field `bad` (array)
        for (int i = 0; i < jsonArraybad.size(); i++) {
          GetRecipeNutritionWidgetByID200ResponseBadInner.validateJsonObject(jsonArraybad.get(i).getAsJsonObject());
        };
      }
      JsonArray jsonArraygood = jsonObj.getAsJsonArray("good");
      if (jsonArraygood != null) {
        // ensure the json data is an array
        if (!jsonObj.get("good").isJsonArray()) {
          throw new IllegalArgumentException(String.format("Expected the field `good` to be an array in the JSON string but got `%s`", jsonObj.get("good").toString()));
        }

        // validate the optional field `good` (array)
        for (int i = 0; i < jsonArraygood.size(); i++) {
          GetRecipeNutritionWidgetByID200ResponseGoodInner.validateJsonObject(jsonArraygood.get(i).getAsJsonObject());
        };
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!GetRecipeNutritionWidgetByID200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'GetRecipeNutritionWidgetByID200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<GetRecipeNutritionWidgetByID200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(GetRecipeNutritionWidgetByID200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<GetRecipeNutritionWidgetByID200Response>() {
           @Override
           public void write(JsonWriter out, GetRecipeNutritionWidgetByID200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public GetRecipeNutritionWidgetByID200Response read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of GetRecipeNutritionWidgetByID200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of GetRecipeNutritionWidgetByID200Response
  * @throws IOException if the JSON string is invalid with respect to GetRecipeNutritionWidgetByID200Response
  */
  public static GetRecipeNutritionWidgetByID200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, GetRecipeNutritionWidgetByID200Response.class);
  }

 /**
  * Convert an instance of GetRecipeNutritionWidgetByID200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

