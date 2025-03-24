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
 * SearchFoodVideos200ResponseVideosInner
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", comments = "Generator version: 7.8.0-SNAPSHOT")
public class SearchFoodVideos200ResponseVideosInner {
  public static final String SERIALIZED_NAME_TITLE = "title";
  @SerializedName(SERIALIZED_NAME_TITLE)
  private String title;

  public static final String SERIALIZED_NAME_LENGTH = "length";
  @SerializedName(SERIALIZED_NAME_LENGTH)
  private Integer length;

  public static final String SERIALIZED_NAME_RATING = "rating";
  @SerializedName(SERIALIZED_NAME_RATING)
  private BigDecimal rating;

  public static final String SERIALIZED_NAME_SHORT_TITLE = "shortTitle";
  @SerializedName(SERIALIZED_NAME_SHORT_TITLE)
  private String shortTitle;

  public static final String SERIALIZED_NAME_THUMBNAIL = "thumbnail";
  @SerializedName(SERIALIZED_NAME_THUMBNAIL)
  private String thumbnail;

  public static final String SERIALIZED_NAME_VIEWS = "views";
  @SerializedName(SERIALIZED_NAME_VIEWS)
  private Integer views;

  public static final String SERIALIZED_NAME_YOU_TUBE_ID = "youTubeId";
  @SerializedName(SERIALIZED_NAME_YOU_TUBE_ID)
  private String youTubeId;

  public SearchFoodVideos200ResponseVideosInner() {
  }

  public SearchFoodVideos200ResponseVideosInner title(String title) {
    this.title = title;
    return this;
  }

  /**
   * Get title
   * @return title
   */
  @javax.annotation.Nonnull
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public SearchFoodVideos200ResponseVideosInner length(Integer length) {
    this.length = length;
    return this;
  }

  /**
   * Get length
   * @return length
   */
  @javax.annotation.Nonnull
  public Integer getLength() {
    return length;
  }

  public void setLength(Integer length) {
    this.length = length;
  }


  public SearchFoodVideos200ResponseVideosInner rating(BigDecimal rating) {
    this.rating = rating;
    return this;
  }

  /**
   * Get rating
   * @return rating
   */
  @javax.annotation.Nonnull
  public BigDecimal getRating() {
    return rating;
  }

  public void setRating(BigDecimal rating) {
    this.rating = rating;
  }


  public SearchFoodVideos200ResponseVideosInner shortTitle(String shortTitle) {
    this.shortTitle = shortTitle;
    return this;
  }

  /**
   * Get shortTitle
   * @return shortTitle
   */
  @javax.annotation.Nonnull
  public String getShortTitle() {
    return shortTitle;
  }

  public void setShortTitle(String shortTitle) {
    this.shortTitle = shortTitle;
  }


  public SearchFoodVideos200ResponseVideosInner thumbnail(String thumbnail) {
    this.thumbnail = thumbnail;
    return this;
  }

  /**
   * Get thumbnail
   * @return thumbnail
   */
  @javax.annotation.Nonnull
  public String getThumbnail() {
    return thumbnail;
  }

  public void setThumbnail(String thumbnail) {
    this.thumbnail = thumbnail;
  }


  public SearchFoodVideos200ResponseVideosInner views(Integer views) {
    this.views = views;
    return this;
  }

  /**
   * Get views
   * @return views
   */
  @javax.annotation.Nonnull
  public Integer getViews() {
    return views;
  }

  public void setViews(Integer views) {
    this.views = views;
  }


  public SearchFoodVideos200ResponseVideosInner youTubeId(String youTubeId) {
    this.youTubeId = youTubeId;
    return this;
  }

  /**
   * Get youTubeId
   * @return youTubeId
   */
  @javax.annotation.Nonnull
  public String getYouTubeId() {
    return youTubeId;
  }

  public void setYouTubeId(String youTubeId) {
    this.youTubeId = youTubeId;
  }



  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SearchFoodVideos200ResponseVideosInner searchFoodVideos200ResponseVideosInner = (SearchFoodVideos200ResponseVideosInner) o;
    return Objects.equals(this.title, searchFoodVideos200ResponseVideosInner.title) &&
        Objects.equals(this.length, searchFoodVideos200ResponseVideosInner.length) &&
        Objects.equals(this.rating, searchFoodVideos200ResponseVideosInner.rating) &&
        Objects.equals(this.shortTitle, searchFoodVideos200ResponseVideosInner.shortTitle) &&
        Objects.equals(this.thumbnail, searchFoodVideos200ResponseVideosInner.thumbnail) &&
        Objects.equals(this.views, searchFoodVideos200ResponseVideosInner.views) &&
        Objects.equals(this.youTubeId, searchFoodVideos200ResponseVideosInner.youTubeId);
  }

  @Override
  public int hashCode() {
    return Objects.hash(title, length, rating, shortTitle, thumbnail, views, youTubeId);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class SearchFoodVideos200ResponseVideosInner {\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    length: ").append(toIndentedString(length)).append("\n");
    sb.append("    rating: ").append(toIndentedString(rating)).append("\n");
    sb.append("    shortTitle: ").append(toIndentedString(shortTitle)).append("\n");
    sb.append("    thumbnail: ").append(toIndentedString(thumbnail)).append("\n");
    sb.append("    views: ").append(toIndentedString(views)).append("\n");
    sb.append("    youTubeId: ").append(toIndentedString(youTubeId)).append("\n");
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
    openapiFields.add("title");
    openapiFields.add("length");
    openapiFields.add("rating");
    openapiFields.add("shortTitle");
    openapiFields.add("thumbnail");
    openapiFields.add("views");
    openapiFields.add("youTubeId");

    // a set of required properties/fields (JSON key names)
    openapiRequiredFields = new HashSet<String>();
    openapiRequiredFields.add("title");
    openapiRequiredFields.add("length");
    openapiRequiredFields.add("rating");
    openapiRequiredFields.add("shortTitle");
    openapiRequiredFields.add("thumbnail");
    openapiRequiredFields.add("views");
    openapiRequiredFields.add("youTubeId");
  }

  /**
   * Validates the JSON Element and throws an exception if issues found
   *
   * @param jsonElement JSON Element
   * @throws IOException if the JSON Element is invalid with respect to SearchFoodVideos200ResponseVideosInner
   */
  public static void validateJsonElement(JsonElement jsonElement) throws IOException {
      if (jsonElement == null) {
        if (!SearchFoodVideos200ResponseVideosInner.openapiRequiredFields.isEmpty()) { // has required fields but JSON element is null
          throw new IllegalArgumentException(String.format("The required field(s) %s in SearchFoodVideos200ResponseVideosInner is not found in the empty JSON string", SearchFoodVideos200ResponseVideosInner.openapiRequiredFields.toString()));
        }
      }

      Set<Map.Entry<String, JsonElement>> entries = jsonElement.getAsJsonObject().entrySet();
      // check to see if the JSON string contains additional fields
      for (Map.Entry<String, JsonElement> entry : entries) {
        if (!SearchFoodVideos200ResponseVideosInner.openapiFields.contains(entry.getKey())) {
          throw new IllegalArgumentException(String.format("The field `%s` in the JSON string is not defined in the `SearchFoodVideos200ResponseVideosInner` properties. JSON: %s", entry.getKey(), jsonElement.toString()));
        }
      }

      // check to make sure all required properties/fields are present in the JSON string
      for (String requiredField : SearchFoodVideos200ResponseVideosInner.openapiRequiredFields) {
        if (jsonElement.getAsJsonObject().get(requiredField) == null) {
          throw new IllegalArgumentException(String.format("The required field `%s` is not found in the JSON string: %s", requiredField, jsonElement.toString()));
        }
      }
        JsonObject jsonObj = jsonElement.getAsJsonObject();
      if (!jsonObj.get("title").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `title` to be a primitive type in the JSON string but got `%s`", jsonObj.get("title").toString()));
      }
      if (!jsonObj.get("shortTitle").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `shortTitle` to be a primitive type in the JSON string but got `%s`", jsonObj.get("shortTitle").toString()));
      }
      if (!jsonObj.get("thumbnail").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `thumbnail` to be a primitive type in the JSON string but got `%s`", jsonObj.get("thumbnail").toString()));
      }
      if (!jsonObj.get("youTubeId").isJsonPrimitive()) {
        throw new IllegalArgumentException(String.format("Expected the field `youTubeId` to be a primitive type in the JSON string but got `%s`", jsonObj.get("youTubeId").toString()));
      }
  }

  public static class CustomTypeAdapterFactory implements TypeAdapterFactory {
    @SuppressWarnings("unchecked")
    @Override
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> type) {
       if (!SearchFoodVideos200ResponseVideosInner.class.isAssignableFrom(type.getRawType())) {
         return null; // this class only serializes 'SearchFoodVideos200ResponseVideosInner' and its subtypes
       }
       final TypeAdapter<JsonElement> elementAdapter = gson.getAdapter(JsonElement.class);
       final TypeAdapter<SearchFoodVideos200ResponseVideosInner> thisAdapter
                        = gson.getDelegateAdapter(this, TypeToken.get(SearchFoodVideos200ResponseVideosInner.class));

       return (TypeAdapter<T>) new TypeAdapter<SearchFoodVideos200ResponseVideosInner>() {
           @Override
           public void write(JsonWriter out, SearchFoodVideos200ResponseVideosInner value) throws IOException {
             JsonObject obj = thisAdapter.toJsonTree(value).getAsJsonObject();
             elementAdapter.write(out, obj);
           }

           @Override
           public SearchFoodVideos200ResponseVideosInner read(JsonReader in) throws IOException {
             JsonElement jsonElement = elementAdapter.read(in);
             validateJsonElement(jsonElement);
             return thisAdapter.fromJsonTree(jsonElement);
           }

       }.nullSafe();
    }
  }

  /**
   * Create an instance of SearchFoodVideos200ResponseVideosInner given an JSON string
   *
   * @param jsonString JSON string
   * @return An instance of SearchFoodVideos200ResponseVideosInner
   * @throws IOException if the JSON string is invalid with respect to SearchFoodVideos200ResponseVideosInner
   */
  public static SearchFoodVideos200ResponseVideosInner fromJson(String jsonString) throws IOException {
    return JSON.getGson().fromJson(jsonString, SearchFoodVideos200ResponseVideosInner.class);
  }

  /**
   * Convert an instance of SearchFoodVideos200ResponseVideosInner to an JSON string
   *
   * @return JSON string
   */
  public String toJson() {
    return JSON.getGson().toJson(this);
  }
}

