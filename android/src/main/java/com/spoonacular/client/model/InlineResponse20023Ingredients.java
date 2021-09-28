package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20023Ingredients  {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("original")
  private String original = null;
  @SerializedName("glycemicIndex")
  private BigDecimal glycemicIndex = null;
  @SerializedName("glycemicLoad")
  private BigDecimal glycemicLoad = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getOriginal() {
    return original;
  }
  public void setOriginal(String original) {
    this.original = original;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getGlycemicIndex() {
    return glycemicIndex;
  }
  public void setGlycemicIndex(BigDecimal glycemicIndex) {
    this.glycemicIndex = glycemicIndex;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getGlycemicLoad() {
    return glycemicLoad;
  }
  public void setGlycemicLoad(BigDecimal glycemicLoad) {
    this.glycemicLoad = glycemicLoad;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20023Ingredients inlineResponse20023Ingredients = (InlineResponse20023Ingredients) o;
    return (this.id == null ? inlineResponse20023Ingredients.id == null : this.id.equals(inlineResponse20023Ingredients.id)) &&
        (this.original == null ? inlineResponse20023Ingredients.original == null : this.original.equals(inlineResponse20023Ingredients.original)) &&
        (this.glycemicIndex == null ? inlineResponse20023Ingredients.glycemicIndex == null : this.glycemicIndex.equals(inlineResponse20023Ingredients.glycemicIndex)) &&
        (this.glycemicLoad == null ? inlineResponse20023Ingredients.glycemicLoad == null : this.glycemicLoad.equals(inlineResponse20023Ingredients.glycemicLoad));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.original == null ? 0: this.original.hashCode());
    result = 31 * result + (this.glycemicIndex == null ? 0: this.glycemicIndex.hashCode());
    result = 31 * result + (this.glycemicLoad == null ? 0: this.glycemicLoad.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20023Ingredients {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  original: ").append(original).append("\n");
    sb.append("  glycemicIndex: ").append(glycemicIndex).append("\n");
    sb.append("  glycemicLoad: ").append(glycemicLoad).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
