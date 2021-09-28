package com.spoonacular.client.model;

import com.spoonacular.client.model.InlineResponse2003WinePairingProductMatches;
import java.util.*;

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;


@ApiModel(description = "")
public class InlineResponse2003WinePairing  {
  
  @SerializedName("pairedWines")
  private List<String> pairedWines = null;
  @SerializedName("pairingText")
  private String pairingText = null;
  @SerializedName("productMatches")
  private List<InlineResponse2003WinePairingProductMatches> productMatches = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<String> getPairedWines() {
    return pairedWines;
  }
  public void setPairedWines(List<String> pairedWines) {
    this.pairedWines = pairedWines;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getPairingText() {
    return pairingText;
  }
  public void setPairingText(String pairingText) {
    this.pairingText = pairingText;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<InlineResponse2003WinePairingProductMatches> getProductMatches() {
    return productMatches;
  }
  public void setProductMatches(List<InlineResponse2003WinePairingProductMatches> productMatches) {
    this.productMatches = productMatches;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InlineResponse2003WinePairing inlineResponse2003WinePairing = (InlineResponse2003WinePairing) o;
    return (this.pairedWines == null ? inlineResponse2003WinePairing.pairedWines == null : this.pairedWines.equals(inlineResponse2003WinePairing.pairedWines)) &&
        (this.pairingText == null ? inlineResponse2003WinePairing.pairingText == null : this.pairingText.equals(inlineResponse2003WinePairing.pairingText)) &&
        (this.productMatches == null ? inlineResponse2003WinePairing.productMatches == null : this.productMatches.equals(inlineResponse2003WinePairing.productMatches));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.pairedWines == null ? 0: this.pairedWines.hashCode());
    result = 31 * result + (this.pairingText == null ? 0: this.pairingText.hashCode());
    result = 31 * result + (this.productMatches == null ? 0: this.productMatches.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InlineResponse2003WinePairing {\n");
    
    sb.append("  pairedWines: ").append(pairedWines).append("\n");
    sb.append("  pairingText: ").append(pairingText).append("\n");
    sb.append("  productMatches: ").append(productMatches).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
