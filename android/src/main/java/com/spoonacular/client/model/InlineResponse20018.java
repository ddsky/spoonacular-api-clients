package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20018Dishes;
import com.spoonacular.client.model.InlineResponse20018Ingredients;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20018  {
  
  @SerializedName("dishes")
  private List<InlineResponse20018Dishes> dishes = null;
  @SerializedName("ingredients")
  private List<InlineResponse20018Ingredients> ingredients = null;
  @SerializedName("cuisines")
  private List<String> cuisines = null;
  @SerializedName("modifiers")
  private List<String> modifiers = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20018Dishes> getDishes() {
    return dishes;
  }
  public void setDishes(List<InlineResponse20018Dishes> dishes) {
    this.dishes = dishes;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20018Ingredients> getIngredients() {
    return ingredients;
  }
  public void setIngredients(List<InlineResponse20018Ingredients> ingredients) {
    this.ingredients = ingredients;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getCuisines() {
    return cuisines;
  }
  public void setCuisines(List<String> cuisines) {
    this.cuisines = cuisines;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getModifiers() {
    return modifiers;
  }
  public void setModifiers(List<String> modifiers) {
    this.modifiers = modifiers;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20018 inlineResponse20018 = (InlineResponse20018) o;
    return (this.dishes == null ? inlineResponse20018.dishes == null : this.dishes.equals(inlineResponse20018.dishes)) &&
        (this.ingredients == null ? inlineResponse20018.ingredients == null : this.ingredients.equals(inlineResponse20018.ingredients)) &&
        (this.cuisines == null ? inlineResponse20018.cuisines == null : this.cuisines.equals(inlineResponse20018.cuisines)) &&
        (this.modifiers == null ? inlineResponse20018.modifiers == null : this.modifiers.equals(inlineResponse20018.modifiers));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.dishes == null ? 0: this.dishes.hashCode());
    result = 31 * result + (this.ingredients == null ? 0: this.ingredients.hashCode());
    result = 31 * result + (this.cuisines == null ? 0: this.cuisines.hashCode());
    result = 31 * result + (this.modifiers == null ? 0: this.modifiers.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20018 {\n");
    
    sb.append("  dishes: ").append(dishes).append("\n");
    sb.append("  ingredients: ").append(ingredients).append("\n");
    sb.append("  cuisines: ").append(cuisines).append("\n");
    sb.append("  modifiers: ").append(modifiers).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
