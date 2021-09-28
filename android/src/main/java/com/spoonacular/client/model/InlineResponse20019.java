package com.spoonacular.client.model;

import java.math.BigDecimal;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20019  {
  
  @SerializedName("sourceAmount")
  private BigDecimal sourceAmount = null;
  @SerializedName("sourceUnit")
  private String sourceUnit = null;
  @SerializedName("targetAmount")
  private BigDecimal targetAmount = null;
  @SerializedName("targetUnit")
  private String targetUnit = null;
  @SerializedName("answer")
  private String answer = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getSourceAmount() {
    return sourceAmount;
  }
  public void setSourceAmount(BigDecimal sourceAmount) {
    this.sourceAmount = sourceAmount;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getSourceUnit() {
    return sourceUnit;
  }
  public void setSourceUnit(String sourceUnit) {
    this.sourceUnit = sourceUnit;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public BigDecimal getTargetAmount() {
    return targetAmount;
  }
  public void setTargetAmount(BigDecimal targetAmount) {
    this.targetAmount = targetAmount;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getTargetUnit() {
    return targetUnit;
  }
  public void setTargetUnit(String targetUnit) {
    this.targetUnit = targetUnit;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getAnswer() {
    return answer;
  }
  public void setAnswer(String answer) {
    this.answer = answer;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20019 inlineResponse20019 = (InlineResponse20019) o;
    return (this.sourceAmount == null ? inlineResponse20019.sourceAmount == null : this.sourceAmount.equals(inlineResponse20019.sourceAmount)) &&
        (this.sourceUnit == null ? inlineResponse20019.sourceUnit == null : this.sourceUnit.equals(inlineResponse20019.sourceUnit)) &&
        (this.targetAmount == null ? inlineResponse20019.targetAmount == null : this.targetAmount.equals(inlineResponse20019.targetAmount)) &&
        (this.targetUnit == null ? inlineResponse20019.targetUnit == null : this.targetUnit.equals(inlineResponse20019.targetUnit)) &&
        (this.answer == null ? inlineResponse20019.answer == null : this.answer.equals(inlineResponse20019.answer));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.sourceAmount == null ? 0: this.sourceAmount.hashCode());
    result = 31 * result + (this.sourceUnit == null ? 0: this.sourceUnit.hashCode());
    result = 31 * result + (this.targetAmount == null ? 0: this.targetAmount.hashCode());
    result = 31 * result + (this.targetUnit == null ? 0: this.targetUnit.hashCode());
    result = 31 * result + (this.answer == null ? 0: this.answer.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20019 {\n");
    
    sb.append("  sourceAmount: ").append(sourceAmount).append("\n");
    sb.append("  sourceUnit: ").append(sourceUnit).append("\n");
    sb.append("  targetAmount: ").append(targetAmount).append("\n");
    sb.append("  targetUnit: ").append(targetUnit).append("\n");
    sb.append("  answer: ").append(answer).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
