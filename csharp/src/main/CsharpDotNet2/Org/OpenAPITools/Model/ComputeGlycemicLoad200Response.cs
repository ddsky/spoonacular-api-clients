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
  public class ComputeGlycemicLoad200Response {
    /// <summary>
    /// Gets or Sets TotalGlycemicLoad
    /// </summary>
    [DataMember(Name="totalGlycemicLoad", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalGlycemicLoad")]
    public decimal? TotalGlycemicLoad { get; set; }

    /// <summary>
    /// Gets or Sets Ingredients
    /// </summary>
    [DataMember(Name="ingredients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredients")]
    public List<ComputeGlycemicLoad200ResponseIngredientsInner> Ingredients { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ComputeGlycemicLoad200Response {\n");
      sb.Append("  TotalGlycemicLoad: ").Append(TotalGlycemicLoad).Append("\n");
      sb.Append("  Ingredients: ").Append(Ingredients).Append("\n");
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
