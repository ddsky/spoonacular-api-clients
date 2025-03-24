/*
 * spoonacular API
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
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
import com.spoonacular.client.model.ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent;
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
 * ImageAnalysisByURL200ResponseNutritionCalories
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class ImageAnalysisByURL200ResponseNutritionCalories {
  public static final String SERIALIZED_NAME_VALUE = "value";
  @SerializedName(SERIALIZED_NAME_VALUE)
  private BigDecimal value;

  public static final String SERIALIZED_NAME_UNIT = "unit";
  @SerializedName(SERIALIZED_NAME_UNIT)
  private String unit;

  public static final String SERIALIZED_NAME_CONFIDENCE_RANGE95_PERCENT = "confidenceRange95Percent";
  @SerializedName(SERIALIZED_NAME_CONFIDENCE_RANGE95_PERCENT)
  private ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent confidenceRange95Percent;

  public static final String SERIALIZED_NAME_STANDARD_DEVIATION = "standardDeviation";
  @SerializedName(SERIALIZED_NAME_STANDARD_DEVIATION)
  private BigDecimal standardDeviation;

  public ImageAnalysisByURL200ResponseNutritionCalories() {
  }

  public ImageAnalysisByURL200ResponseNutritionCalories value(BigDecimal value) {
    this.value = value;
    return this;
  }

  /**
   * Get value
   * @return value
   */
  @javax.annotation.Nonnull
  public BigDecimal getValue() {
    return value;
  }

  public void setValue(BigDecimal value) {
    this.value = value;
  }


  public ImageAnalysisByURL200ResponseNutritionCalories unit(String unit) {
    this.unit = unit;
    return this;
  }

  /**
   * Get unit
   * @return unit
   */
  @javax.annotation.Nonnull
  public String getUnit() {
    return unit;
  }

  public void setUnit(String unit) {
    this.unit = unit;
  }


  public ImageAnalysisByURL200ResponseNutritionCalories confidenceRange95Percent(ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent confidenceRange95Percent) {
    this.confidenceRange95Percent = confidenceRange95Percent;
    return this;
  }

  /**
   * Get confidenceRange95Percent
   * @return confidenceRange95Percent
   */
  @javax.annotation.Nonnull
  public ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent getConfidenceRange95Percent() {
    return confidenceRange95Percent;
  }

  public void setConfidenceRange95Percent(ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent confidenceRange95Percent) {
    this.confidenceRange95Percent = confidenceRange95Percent;
  }


  public ImageAnalysisByURL200ResponseNutritionCalories standardDeviation(BigDecimal standardDeviation) {
    this.standardDeviation = standardDeviation;
    return this;
  }

  /**
   * Get standardDeviation
   * @return standardDeviation
   */
  @javax.annotation.Nonnull
  public BigDecimal getStandardDeviation() {
    return standardDeviation;
  }

  public void setStandardDeviation(BigDecimal standardDeviation) {
    this.standardDeviation = standardDeviation;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ImageAnalysisByURL200ResponseNutritionCalories imageAnalysisByURL200ResponseNutritionCalories = (ImageAnalysisByURL200ResponseNutritionCalories) o;
    return Objects.equals(this.value, imageAnalysisByURL200ResponseNutritionCalories.value) &&
        Objects.equals(this.unit, imageAnalysisByURL200ResponseNutritionCalories.unit) &&
        Objects.equals(this.confidenceRange95Percent, imageAnalysisByURL200ResponseNutritionCalories.confidenceRange95Percent) &&
        Objects.equals(this.standardDeviation, imageAnalysisByURL200ResponseNutritionCalories.standardDeviation);
  }

  @Override
  public int hashCode() {
    return Objects.hash(value, unit, confidenceRange95Percent, standardDeviation);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ImageAnalysisByURL200ResponseNutritionCalories {\n");
    sb.append("    value: ").append(toIndentedString(value)).append("\n");
    sb.append("    unit: ").append(toIndentedString(unit)).append("\n");
    sb.append("    confidenceRange95Percent: ").append(toIndentedString(confidenceRange95Percent)).append("\n");
    sb.append("    standardDeviation: ").append(toIndentedString(standardDeviation)).append("\n");
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
    openapiFields.add("value");
    openapiFields.add("unit");
    openapiFields.add("confidenceRange95Percent");
    openapiFields.add("standardDeviation");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("value");
    openapiRequiredFields.add("unit");
    openapiRequiredFields.add("confidenceRange95Percent");
    openapiRequiredFields.add("standardDeviation");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to ImageAnalysisByURL200ResponseNutritionCalories
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!ImageAnalysisByURL200ResponseNutritionCalories.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in ImageAnalysisByURL200ResponseNutritionCalories is not found in the empty JSON string", ImageAnalysisByURL200ResponseNutritionCalories.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!ImageAnalysisByURL200ResponseNutritionCalories.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `ImageAnalysisByURL200ResponseNutritionCalories` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : ImageAnalysisByURL200ResponseNutritionCalories.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("unit").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unit` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unit").toString()));
      }
      // validate the required field `confidenceRange95Percent`
      ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.validateJsonElement(jsonObj.get("confidenceRange95Percent"));
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!ImageAnalysisByURL200ResponseNutritionCalories.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'ImageAnalysisByURL200ResponseNutritionCalories' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<ImageAnalysisByURL200ResponseNutritionCalories> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(ImageAnalysisByURL200ResponseNutritionCalories.class));

       return (TypeAdapter<T>) new TypeAdapter<ImageAnalysisByURL200ResponseNutritionCalories>() {
           @Override
           public void write(JsonWriter out, ImageAnalysisByURL200ResponseNutritionCalories value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public ImageAnalysisByURL200ResponseNutritionCalories read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of ImageAnalysisByURL200ResponseNutritionCalories given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of ImageAnalysisByURL200ResponseNutritionCalories
   * @throws IOException if the JSON string is invalid with respect to ImageAnalysisByURL200ResponseNutritionCalories
   */
  public static ImageAnalysisByURL200ResponseNutritionCalories fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, ImageAnalysisByURL200ResponseNutritionCalories.class);
  }

  /**
   * Convert an instance of ImageAnalysisByURL200ResponseNutritionCalories to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

