package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse20013Ingredients1;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20039  {
  
  @SerializedName("templates")
  private List<InlineResponse20013Ingredients1> templates = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse20013Ingredients1> getTemplates() {
    return templates;
  }
  public void setTemplates(List<InlineResponse20013Ingredients1> templates) {
    this.templates = templates;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20039 inlineResponse20039 = (InlineResponse20039) o;
    return (this.templates == null ? inlineResponse20039.templates == null : this.templates.equals(inlineResponse20039.templates));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.templates == null ? 0: this.templates.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20039 {\n");
    
    sb.append("  templates: ").append(templates).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
