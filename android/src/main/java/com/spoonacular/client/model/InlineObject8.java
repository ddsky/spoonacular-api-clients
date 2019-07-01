package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject8  {
  
  @SerializedName("locale")
  private String locale = null;

  /**
   * The locale of the returned category, supported is en_US and en_GB.
   **/
  @ApiModelProperty(value = "The locale of the returned category, supported is en_US and en_GB.")
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
    InlineObject8 inlineObject8 = (InlineObject8) o;
    return (this.locale == null ? inlineObject8.locale == null : this.locale.equals(inlineObject8.locale));
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
    sb.append("class InlineObject8 {\n");
    
    sb.append("  locale: ").append(locale).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
