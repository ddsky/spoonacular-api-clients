using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace spoonacular.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class InlineResponse20045 {
    /// <summary>
    /// Gets or Sets PairedWines
    /// </summary>
    [DataMember(Name="pairedWines", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pairedWines")]
    public List<string> PairedWines { get; set; }

    /// <summary>
    /// Gets or Sets PairingText
    /// </summary>
    [DataMember(Name="pairingText", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pairingText")]
    public string PairingText { get; set; }

    /// <summary>
    /// Gets or Sets ProductMatches
    /// </summary>
    [DataMember(Name="productMatches", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "productMatches")]
    public List<InlineResponse20045ProductMatches> ProductMatches { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20045 {\n");
      sb.Append("  PairedWines: ").Append(PairedWines).Append("\n");
      sb.Append("  PairingText: ").Append(PairingText).Append("\n");
      sb.Append("  ProductMatches: ").Append(ProductMatches).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
