package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20010AmountMetric;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20010Amount  {
  
  @SerializedName("metric")
  private InlineResponse20010AmountMetric metric = null;
  @SerializedName("us")
  private InlineResponse20010AmountMetric us = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20010AmountMetric getMetric() {
    return metric;
  }
  public void setMetric(InlineResponse20010AmountMetric metric) {
    this.metric = metric;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse20010AmountMetric getUs() {
    return us;
  }
  public void setUs(InlineResponse20010AmountMetric us) {
    this.us = us;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20010Amount inlineResponse20010Amount = (InlineResponse20010Amount) o;
    return (this.metric == null ? inlineResponse20010Amount.metric == null : this.metric.equals(inlineResponse20010Amount.metric)) &&
        (this.us == null ? inlineResponse20010Amount.us == null : this.us.equals(inlineResponse20010Amount.us));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.metric == null ? 0: this.metric.hashCode());
    result = 31 * result + (this.us == null ? 0: this.us.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20010Amount {\n");
    
    sb.append("  metric: ").append(metric).append("\n");
    sb.append("  us: ").append(us).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
