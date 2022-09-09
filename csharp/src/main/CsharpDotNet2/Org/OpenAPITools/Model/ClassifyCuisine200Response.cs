using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class ClassifyCuisine200Response {
    /// <summary>
    /// Gets or Sets Cuisine
    /// </summary>
    [DataMember(Name="cuisine", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cuisine")]
    public string Cuisine { get; set; }

    /// <summary>
    /// Gets or Sets Cuisines
    /// </summary>
    [DataMember(Name="cuisines", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "cuisines")]
    public List<string> Cuisines { get; set; }

    /// <summary>
    /// Gets or Sets Confidence
    /// </summary>
    [DataMember(Name="confidence", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "confidence")]
    public decimal? Confidence { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ClassifyCuisine200Response {\n");
      sb.Append("  Cuisine: ").Append(Cuisine).Append("\n");
      sb.Append("  Cuisines: ").Append(Cuisines).Append("\n");
      sb.Append("  Confidence: ").Append(Confidence).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}
