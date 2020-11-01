package com.spoonacular.client.model;


import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineObject3  {
  
  @SerializedName("instructions")
  private String instructions = null;
  @SerializedName("view")
  private String view = null;
  @SerializedName("defaultCss")
  private Boolean defaultCss = null;
  @SerializedName("showBacklink")
  private Boolean showBacklink = null;

  /**
   * The recipe's instructions.
   **/
  @ApiModelProperty(required = true, value = "The recipe's instructions.")
  public String getInstructions() {
    return instructions;
  }
  public void setInstructions(String instructions) {
    this.instructions = instructions;
  }

  /**
   * How to visualize the equipment, either \"grid\" or \"list\".
   **/
  @ApiModelProperty(value = "How to visualize the equipment, either \"grid\" or \"list\".")
  public String getView() {
    return view;
  }
  public void setView(String view) {
    this.view = view;
  }

  /**
   * Whether the default CSS should be added to the response.
   **/
  @ApiModelProperty(value = "Whether the default CSS should be added to the response.")
  public Boolean getDefaultCss() {
    return defaultCss;
  }
  public void setDefaultCss(Boolean defaultCss) {
    this.defaultCss = defaultCss;
  }

  /**
   * Whether to show a backlink to spoonacular. If set false, this call counts against your quota.
   **/
  @ApiModelProperty(value = "Whether to show a backlink to spoonacular. If set false, this call counts against your quota.")
  public Boolean getShowBacklink() {
    return showBacklink;
  }
  public void setShowBacklink(Boolean showBacklink) {
    this.showBacklink = showBacklink;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineObject3 inlineObject3 = (InlineObject3) o;
    return (this.instructions == null ? inlineObject3.instructions == null : this.instructions.equals(inlineObject3.instructions)) &&
        (this.view == null ? inlineObject3.view == null : this.view.equals(inlineObject3.view)) &&
        (this.defaultCss == null ? inlineObject3.defaultCss == null : this.defaultCss.equals(inlineObject3.defaultCss)) &&
        (this.showBacklink == null ? inlineObject3.showBacklink == null : this.showBacklink.equals(inlineObject3.showBacklink));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.instructions == null ? 0: this.instructions.hashCode());
    result = 31 * result + (this.view == null ? 0: this.view.hashCode());
    result = 31 * result + (this.defaultCss == null ? 0: this.defaultCss.hashCode());
    result = 31 * result + (this.showBacklink == null ? 0: this.showBacklink.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineObject3 {\n");
    
    sb.append("  instructions: ").append(instructions).append("\n");
    sb.append("  view: ").append(view).append("\n");
    sb.append("  defaultCss: ").append(defaultCss).append("\n");
    sb.append("  showBacklink: ").append(showBacklink).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
