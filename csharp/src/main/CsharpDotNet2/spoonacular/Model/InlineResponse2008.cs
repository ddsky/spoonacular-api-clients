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
  public class InlineResponse2008 {
    /// <summary>
    /// Gets or Sets Sweetness
    /// </summary>
    [DataMember(Name="sweetness", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sweetness")]
    public decimal? Sweetness { get; set; }

    /// <summary>
    /// Gets or Sets Saltiness
    /// </summary>
    [DataMember(Name="saltiness", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "saltiness")]
    public decimal? Saltiness { get; set; }

    /// <summary>
    /// Gets or Sets Sourness
    /// </summary>
    [DataMember(Name="sourness", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sourness")]
    public decimal? Sourness { get; set; }

    /// <summary>
    /// Gets or Sets Bitterness
    /// </summary>
    [DataMember(Name="bitterness", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "bitterness")]
    public decimal? Bitterness { get; set; }

    /// <summary>
    /// Gets or Sets Savoriness
    /// </summary>
    [DataMember(Name="savoriness", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "savoriness")]
    public decimal? Savoriness { get; set; }

    /// <summary>
    /// Gets or Sets Fattiness
    /// </summary>
    [DataMember(Name="fattiness", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fattiness")]
    public decimal? Fattiness { get; set; }

    /// <summary>
    /// Gets or Sets Spiciness
    /// </summary>
    [DataMember(Name="spiciness", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "spiciness")]
    public decimal? Spiciness { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse2008 {\n");
      sb.Append("  Sweetness: ").Append(Sweetness).Append("\n");
      sb.Append("  Saltiness: ").Append(Saltiness).Append("\n");
      sb.Append("  Sourness: ").Append(Sourness).Append("\n");
      sb.Append("  Bitterness: ").Append(Bitterness).Append("\n");
      sb.Append("  Savoriness: ").Append(Savoriness).Append("\n");
      sb.Append("  Fattiness: ").Append(Fattiness).Append("\n");
      sb.Append("  Spiciness: ").Append(Spiciness).Append("\n");
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
