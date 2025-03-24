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
 * RecipeInformationExtendedIngredientsInnerMeasuresMetric
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class RecipeInformationExtendedIngredientsInnerMeasuresMetric {
  public static final String SERIALIZED_NAME_AMOUNT = "amount";
  @SerializedName(SERIALIZED_NAME_AMOUNT)
  private BigDecimal amount;

  public static final String SERIALIZED_NAME_UNIT_LONG = "unitLong";
  @SerializedName(SERIALIZED_NAME_UNIT_LONG)
  private String unitLong;

  public static final String SERIALIZED_NAME_UNIT_SHORT = "unitShort";
  @SerializedName(SERIALIZED_NAME_UNIT_SHORT)
  private String unitShort;

  public RecipeInformationExtendedIngredientsInnerMeasuresMetric() {
  }

  public RecipeInformationExtendedIngredientsInnerMeasuresMetric amount(BigDecimal amount) {
    this.amount = amount;
    return this;
  }

  /**
   * Get amount
   * @return amount
   */
  @javax.annotation.Nonnull
  public BigDecimal getAmount() {
    return amount;
  }

  public void setAmount(BigDecimal amount) {
    this.amount = amount;
  }


  public RecipeInformationExtendedIngredientsInnerMeasuresMetric unitLong(String unitLong) {
    this.unitLong = unitLong;
    return this;
  }

  /**
   * Get unitLong
   * @return unitLong
   */
  @javax.annotation.Nonnull
  public String getUnitLong() {
    return unitLong;
  }

  public void setUnitLong(String unitLong) {
    this.unitLong = unitLong;
  }


  public RecipeInformationExtendedIngredientsInnerMeasuresMetric unitShort(String unitShort) {
    this.unitShort = unitShort;
    return this;
  }

  /**
   * Get unitShort
   * @return unitShort
   */
  @javax.annotation.Nonnull
  public String getUnitShort() {
    return unitShort;
  }

  public void setUnitShort(String unitShort) {
    this.unitShort = unitShort;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RecipeInformationExtendedIngredientsInnerMeasuresMetric recipeInformationExtendedIngredientsInnerMeasuresMetric = (RecipeInformationExtendedIngredientsInnerMeasuresMetric) o;
    return Objects.equals(this.amount, recipeInformationExtendedIngredientsInnerMeasuresMetric.amount) &&
        Objects.equals(this.unitLong, recipeInformationExtendedIngredientsInnerMeasuresMetric.unitLong) &&
        Objects.equals(this.unitShort, recipeInformationExtendedIngredientsInnerMeasuresMetric.unitShort);
  }

  @Override
  public int hashCode() {
    return Objects.hash(amount, unitLong, unitShort);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RecipeInformationExtendedIngredientsInnerMeasuresMetric {\n");
    sb.append("    amount: ").append(toIndentedString(amount)).append("\n");
    sb.append("    unitLong: ").append(toIndentedString(unitLong)).append("\n");
    sb.append("    unitShort: ").append(toIndentedString(unitShort)).append("\n");
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
    openapiFields.add("amount");
    openapiFields.add("unitLong");
    openapiFields.add("unitShort");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("amount");
    openapiRequiredFields.add("unitLong");
    openapiRequiredFields.add("unitShort");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to RecipeInformationExtendedIngredientsInnerMeasuresMetric
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!RecipeInformationExtendedIngredientsInnerMeasuresMetric.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in RecipeInformationExtendedIngredientsInnerMeasuresMetric is not found in the empty JSON string", RecipeInformationExtendedIngredientsInnerMeasuresMetric.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!RecipeInformationExtendedIngredientsInnerMeasuresMetric.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `RecipeInformationExtendedIngredientsInnerMeasuresMetric` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : RecipeInformationExtendedIngredientsInnerMeasuresMetric.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("unitLong").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unitLong` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unitLong").toString()));
      }
      if (!jsonObj.get("unitShort").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `unitShort` to be a primitive type in the JSON string but got `%s`", jsonObj.get("unitShort").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!RecipeInformationExtendedIngredientsInnerMeasuresMetric.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'RecipeInformationExtendedIngredientsInnerMeasuresMetric' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<RecipeInformationExtendedIngredientsInnerMeasuresMetric> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(RecipeInformationExtendedIngredientsInnerMeasuresMetric.class));

       return (TypeAdapter<T>) new TypeAdapter<RecipeInformationExtendedIngredientsInnerMeasuresMetric>() {
           @Override
           public void write(JsonWriter out, RecipeInformationExtendedIngredientsInnerMeasuresMetric value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public RecipeInformationExtendedIngredientsInnerMeasuresMetric read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of RecipeInformationExtendedIngredientsInnerMeasuresMetric given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of RecipeInformationExtendedIngredientsInnerMeasuresMetric
   * @throws IOException if the JSON string is invalid with respect to RecipeInformationExtendedIngredientsInnerMeasuresMetric
   */
  public static RecipeInformationExtendedIngredientsInnerMeasuresMetric fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, RecipeInformationExtendedIngredientsInnerMeasuresMetric.class);
  }

  /**
   * Convert an instance of RecipeInformationExtendedIngredientsInnerMeasuresMetric to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

