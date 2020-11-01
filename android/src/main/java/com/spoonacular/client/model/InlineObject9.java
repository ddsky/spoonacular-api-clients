package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject9  {
  
  @SerializedName("locale")
  private String locale = null;

  /**
   * The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).
   **/
  @ApiModelProperty(value = "The display name of the returned category, supported is en_US (for American English) and en_GB (for British English).")
  public String getLocale() {
    return locale;
  }
  public void setLocale(String locale) {
    this.locale = locale;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject9 inlineObject9 = (InlineObject9) o;
    return (this.locale == null ? inlineObject9.locale == null : this.locale.equals(inlineObject9.locale));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.locale == null ? 0: this.locale.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject9 {\n");
    
    sb.append("  locale: ").append(locale).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
