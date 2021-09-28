package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20010Amount;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20011Ingredients  {
  
  @SerializedName("amount")
  private InlineResponse20010Amount amount = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("name")
  private String name = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public InlineResponse20010Amount getAmount() {
    return amount;
  }
  public void setAmount(InlineResponse20010Amount amount) {
    this.amount = amount;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20011Ingredients inlineResponse20011Ingredients = (InlineResponse20011Ingredients) o;
    return (this.amount == null ? inlineResponse20011Ingredients.amount == null : this.amount.equals(inlineResponse20011Ingredients.amount)) &&
        (this.image == null ? inlineResponse20011Ingredients.image == null : this.image.equals(inlineResponse20011Ingredients.image)) &&
        (this.name == null ? inlineResponse20011Ingredients.name == null : this.name.equals(inlineResponse20011Ingredients.name));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.amount == null ? 0: this.amount.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20011Ingredients {\n");
    
    sb.append("  amount: ").append(amount).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
