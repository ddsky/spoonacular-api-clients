package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject1  {
  
  @SerializedName("title")
  private String title = null;
  @SerializedName("upc")
  private String upc = null;
  @SerializedName("plu_code")
  private String pluCode = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getUpc() {
    return upc;
  }
  public void setUpc(String upc) {
    this.upc = upc;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getPluCode() {
    return pluCode;
  }
  public void setPluCode(String pluCode) {
    this.pluCode = pluCode;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject1 inlineObject1 = (InlineObject1) o;
    return (this.title == null ? inlineObject1.title == null : this.title.equals(inlineObject1.title)) &&
        (this.upc == null ? inlineObject1.upc == null : this.upc.equals(inlineObject1.upc)) &&
        (this.pluCode == null ? inlineObject1.pluCode == null : this.pluCode.equals(inlineObject1.pluCode));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.upc == null ? 0: this.upc.hashCode());
    result = 31 * result + (this.pluCode == null ? 0: this.pluCode.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject1 {\n");
    
    sb.append("  title: ").append(title).append("\n");
    sb.append("  upc: ").append(upc).append("\n");
    sb.append("  pluCode: ").append(pluCode).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
