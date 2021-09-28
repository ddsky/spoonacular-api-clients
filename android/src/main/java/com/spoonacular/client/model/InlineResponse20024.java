package com.spoonacular.client.model;

import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse20024  {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("image")
  private String image = null;
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("aisle")
  private String aisle = null;
  @SerializedName("possibleUnits")
  private List<String> possibleUnits = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }

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
  public String getAisle() {
    return aisle;
  }
  public void setAisle(String aisle) {
    this.aisle = aisle;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getPossibleUnits() {
    return possibleUnits;
  }
  public void setPossibleUnits(List<String> possibleUnits) {
    this.possibleUnits = possibleUnits;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse20024 inlineResponse20024 = (InlineResponse20024) o;
    return (this.name == null ? inlineResponse20024.name == null : this.name.equals(inlineResponse20024.name)) &&
        (this.image == null ? inlineResponse20024.image == null : this.image.equals(inlineResponse20024.image)) &&
        (this.id == null ? inlineResponse20024.id == null : this.id.equals(inlineResponse20024.id)) &&
        (this.aisle == null ? inlineResponse20024.aisle == null : this.aisle.equals(inlineResponse20024.aisle)) &&
        (this.possibleUnits == null ? inlineResponse20024.possibleUnits == null : this.possibleUnits.equals(inlineResponse20024.possibleUnits));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.image == null ? 0: this.image.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.aisle == null ? 0: this.aisle.hashCode());
    result = 31 * result + (this.possibleUnits == null ? 0: this.possibleUnits.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse20024 {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  image: ").append(image).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("  aisle: ").append(aisle).append("\n");
    sb.append("  possibleUnits: ").append(possibleUnits).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
