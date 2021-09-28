package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2008  {
  
  @SerializedName("sweetness")
  private BigDecimal sweetness = null;
  @SerializedName("saltiness")
  private BigDecimal saltiness = null;
  @SerializedName("sourness")
  private BigDecimal sourness = null;
  @SerializedName("bitterness")
  private BigDecimal bitterness = null;
  @SerializedName("savoriness")
  private BigDecimal savoriness = null;
  @SerializedName("fattiness")
  private BigDecimal fattiness = null;
  @SerializedName("spiciness")
  private BigDecimal spiciness = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSweetness() {
    return sweetness;
  }
  public void setSweetness(BigDecimal sweetness) {
    this.sweetness = sweetness;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSaltiness() {
    return saltiness;
  }
  public void setSaltiness(BigDecimal saltiness) {
    this.saltiness = saltiness;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSourness() {
    return sourness;
  }
  public void setSourness(BigDecimal sourness) {
    this.sourness = sourness;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getBitterness() {
    return bitterness;
  }
  public void setBitterness(BigDecimal bitterness) {
    this.bitterness = bitterness;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSavoriness() {
    return savoriness;
  }
  public void setSavoriness(BigDecimal savoriness) {
    this.savoriness = savoriness;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getFattiness() {
    return fattiness;
  }
  public void setFattiness(BigDecimal fattiness) {
    this.fattiness = fattiness;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSpiciness() {
    return spiciness;
  }
  public void setSpiciness(BigDecimal spiciness) {
    this.spiciness = spiciness;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2008 inlineResponse2008 = (InlineResponse2008) o;
    return (this.sweetness == null ? inlineResponse2008.sweetness == null : this.sweetness.equals(inlineResponse2008.sweetness)) &&
        (this.saltiness == null ? inlineResponse2008.saltiness == null : this.saltiness.equals(inlineResponse2008.saltiness)) &&
        (this.sourness == null ? inlineResponse2008.sourness == null : this.sourness.equals(inlineResponse2008.sourness)) &&
        (this.bitterness == null ? inlineResponse2008.bitterness == null : this.bitterness.equals(inlineResponse2008.bitterness)) &&
        (this.savoriness == null ? inlineResponse2008.savoriness == null : this.savoriness.equals(inlineResponse2008.savoriness)) &&
        (this.fattiness == null ? inlineResponse2008.fattiness == null : this.fattiness.equals(inlineResponse2008.fattiness)) &&
        (this.spiciness == null ? inlineResponse2008.spiciness == null : this.spiciness.equals(inlineResponse2008.spiciness));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.sweetness == null ? 0: this.sweetness.hashCode());
    result = 31 * result + (this.saltiness == null ? 0: this.saltiness.hashCode());
    result = 31 * result + (this.sourness == null ? 0: this.sourness.hashCode());
    result = 31 * result + (this.bitterness == null ? 0: this.bitterness.hashCode());
    result = 31 * result + (this.savoriness == null ? 0: this.savoriness.hashCode());
    result = 31 * result + (this.fattiness == null ? 0: this.fattiness.hashCode());
    result = 31 * result + (this.spiciness == null ? 0: this.spiciness.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2008 {\n");
    
    sb.append("  sweetness: ").append(sweetness).append("\n");
    sb.append("  saltiness: ").append(saltiness).append("\n");
    sb.append("  sourness: ").append(sourness).append("\n");
    sb.append("  bitterness: ").append(bitterness).append("\n");
    sb.append("  savoriness: ").append(savoriness).append("\n");
    sb.append("  fattiness: ").append(fattiness).append("\n");
    sb.append("  spiciness: ").append(spiciness).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
