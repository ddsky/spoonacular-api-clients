/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
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
import com.spoonacular.client.model.SearchCustomFoods200ResponseCustomFoodsInner;
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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2022-11-03T16:53:39.113+01:00[Europe/Berlin]")
public class SearchCustomFoods200Response {
  public static final String SERIALIZED_NAME_CUSTOM_FOODS = "customFoods";
  @SerializedName(SERIALIZED_NAME_CUSTOM_FOODS)
  private Set<SearchCustomFoods200ResponseCustomFoodsInner> customFoods = new LinkedHashSet<>();

  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_OFFSET = "offset";
  @SerializedName(SERIALIZED_NAME_OFFSET)
  private Integer offset;

  public static final String SERIALIZED_NAME_NUMBER = "number";
  @SerializedName(SERIALIZED_NAME_NUMBER)
  private Integer number;

  public SearchCustomFoods200Response() { 
  }

  public SearchCustomFoods200Response customFoods(Set<SearchCustomFoods200ResponseCustomFoodsInner> customFoods) {
    
    this.customFoods = customFoods;
    return this;
  }

  public SearchCustomFoods200Response addCustomFoodsItem(SearchCustomFoods200ResponseCustomFoodsInner customFoodsItem) {
    this.customFoods.add(customFoodsItem);
    return this;
  }

   /**
   * Get customFoods
   * @return customFoods
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Set<SearchCustomFoods200ResponseCustomFoodsInner> getCustomFoods() {
    return customFoods;
  }


  public void setCustomFoods(Set<SearchCustomFoods200ResponseCustomFoodsInner> customFoods) {
    this.customFoods = customFoods;
  }


  public SearchCustomFoods200Response type(String type) {
    
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public String getType() {
    return type;
  }


  public void setType(String type) {
    this.type = type;
  }


  public SearchCustomFoods200Response offset(Integer offset) {
    
    this.offset = offset;
    return this;
  }

   /**
   * Get offset
   * @return offset
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Integer getOffset() {
    return offset;
  }


  public void setOffset(Integer offset) {
    this.offset = offset;
  }


  public SearchCustomFoods200Response number(Integer number) {
    
    this.number = number;
    return this;
  }

   /**
   * Get number
   * @return number
  **/
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "")

  public Integer getNumber() {
    return number;
  }


  public void setNumber(Integer number) {
    this.number = number;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchCustomFoods200Response searchCustomFoods200Response = (SearchCustomFoods200Response) o;
    return Objects.equals(this.customFoods, searchCustomFoods200Response.customFoods) &&
        Objects.equals(this.type, searchCustomFoods200Response.type) &&
        Objects.equals(this.offset, searchCustomFoods200Response.offset) &&
        Objects.equals(this.number, searchCustomFoods200Response.number);
  }

  @Override
  public int hashCode() {
    return Objects.hash(customFoods, type, offset, number);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchCustomFoods200Response {\n");
    sb.append("    customFoods: ").append(toIndentedString(customFoods)).append("\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    offset: ").append(toIndentedString(offset)).append("\n");
    sb.append("    number: ").append(toIndentedString(number)).append("\n");
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
    openapiFields.add("customFoods");
    openapiFields.add("type");
    openapiFields.add("offset");
    openapiFields.add("number");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("customFoods");
    openapiRequiredFields.add("type");
    openapiRequiredFields.add("offset");
    openapiRequiredFields.add("number");
  }

 /**
  * Validates the JSON Object and throws an exception if issues found
  *
  * @param jsonObj JSON Object
  * @throws IOException if the JSON Object is invalid with respect to SearchCustomFoods200Response
  */
  public static void validateJsonObject(JsonObject jsonObj) throws IOException {
      if (jsonObj == null) {
        if (SearchCustomFoods200Response.openapiRequiredFields.isEmpty()) {
          return;
        } else { // has required fields
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchCustomFoods200Response is not found in the empty JSON string", SearchCustomFoods200Response.openapiRequiredFields.toString()));
        }
      }

      Set<Entry<String, JsonElement>> entries = jsonObj.entrySet();
      // check to see if the JSON string contains additional fields
      for (Entry<String, JsonElement> entry : entries) {
        if (!SearchCustomFoods200Response.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchCustomFoods200Response` properties. JSON: %s", entry.getKey(), jsonObj.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : SearchCustomFoods200Response.openapiRequiredFields) {
        if (jsonObj.get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonObj.toString()));
        }
      }
      JsonArray jsonArraycustomFoods = jsonObj.getAsJsonArray("customFoods");
      if (jsonArraycustomFoods != null) {
        // ensure the json data is an array
        if (!jsonObj.get("customFoods").isJsonArray()) {
          throw new IllegalArgumentException(String.format("Expected the field `customFoods` to be an array in the JSON string but got `%s`", jsonObj.get("customFoods").toString()));
        }

        // validate the optional field `customFoods` (array)
        for (int i = 0; i < jsonArraycustomFoods.size(); i++) {
          SearchCustomFoods200ResponseCustomFoodsInner.validateJsonObject(jsonArraycustomFoods.get(i).getAsJsonObject());
        };
      }
      if (jsonObj.get("type") != null && !jsonObj.get("type").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `type` to be a primitive type in the JSON string but got `%s`", jsonObj.get("type").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchCustomFoods200Response.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchCustomFoods200Response' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchCustomFoods200Response> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchCustomFoods200Response.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchCustomFoods200Response>() {
           @Override
           public void write(JsonWriter out, SearchCustomFoods200Response value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchCustomFoods200Response read(JsonReader in) throws IOException {
             JsonObject jsonObj = elementAdapter.read(in).getAsJsonObject();
             validateJsonObject(jsonObj);
             return thisAdapter.fromJsonTree(jsonObj);
           }

       }.nullSafe();
    }
  }

 /**
  * Create an instance of SearchCustomFoods200Response given an JSON string
  *
  * @param jsonString JSON string
  * @return An instance of SearchCustomFoods200Response
  * @throws IOException if the JSON string is invalid with respect to SearchCustomFoods200Response
  */
  public static SearchCustomFoods200Response fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchCustomFoods200Response.class);
  }

 /**
  * Convert an instance of SearchCustomFoods200Response to an JSON string
  *
  * @return JSON string
  */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

