package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse2003MeasuresMetric;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2003Measures  {
  
  @SerializedName("metric")
  private InlineResponse2003MeasuresMetric metric = null;
  @SerializedName("us")
  private InlineResponse2003MeasuresMetric us = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse2003MeasuresMetric getMetric() {
    return metric;
  }
  public void setMetric(InlineResponse2003MeasuresMetric metric) {
    this.metric = metric;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public InlineResponse2003MeasuresMetric getUs() {
    return us;
  }
  public void setUs(InlineResponse2003MeasuresMetric us) {
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
    InlineResponse2003Measures inlineResponse2003Measures = (InlineResponse2003Measures) o;
    return (this.metric == null ? inlineResponse2003Measures.metric == null : this.metric.equals(inlineResponse2003Measures.metric)) &&
        (this.us == null ? inlineResponse2003Measures.us == null : this.us.equals(inlineResponse2003Measures.us));
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
    sb.append("class InlineResponse2003Measures {\n");
    
    sb.append("  metric: ").append(metric).append("\n");
    sb.append("  us: ").append(us).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
