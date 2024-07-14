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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;

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
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;

import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.spoonacular.client.JSON;

/**
 * ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent {
  public static final String SERIALIZED_NAME_MIN = "min";
  @SerializedName(SERIALIZED_NAME_MIN)
  private BigDecimal min;

  public static final String SERIALIZED_NAME_MAX = "max";
  @SerializedName(SERIALIZED_NAME_MAX)
  private BigDecimal max;

  public ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent() {
  }

  public ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent min(BigDecimal min) {
    this.min = min;
    return this;
  }

  /**
   * Get min
   * @return min
   */
  @javax.annotation.Nonnull
  public BigDecimal getMin() {
    return min;
  }

  public void setMin(BigDecimal min) {
    this.min = min;
  }


  public ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent max(BigDecimal max) {
    this.max = max;
    return this;
  }

  /**
   * Get max
   * @return max
   */
  @javax.annotation.Nonnull
  public BigDecimal getMax() {
    return max;
  }

  public void setMax(BigDecimal max) {
    this.max = max;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent imageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent = (ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent) o;
    return Objects.equals(this.min, imageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.min) &&
        Objects.equals(this.max, imageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.max);
  }

  @Override
  public int hashCode() {
    return Objects.hash(min, max);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent {\n");
    sb.append("    min: ").append(toIndentedString(min)).append("\n");
    sb.append("    max: ").append(toIndentedString(max)).append("\n");
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
    openapiFields.add("min");
    openapiFields.add("max");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("min");
    openapiRequiredFields.add("max");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent is not found in the empty JSON string", ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.class));

       return (TypeAdapter<T>) new TypeAdapter<ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent>() {
           @Override
           public void write(JsonWriter out, ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent
   * @throws IOException if the JSON string is invalid with respect to ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent
   */
  public static ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.class);
  }

  /**
   * Convert an instance of ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

