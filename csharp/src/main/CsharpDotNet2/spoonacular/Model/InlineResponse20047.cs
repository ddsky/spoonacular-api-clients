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
  public class InlineResponse20047 {
    /// <summary>
    /// Gets or Sets RecommendedWines
    /// </summary>
    [DataMember(Name="recommendedWines", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "recommendedWines")]
    public List<InlineResponse20047RecommendedWines> RecommendedWines { get; set; }

    /// <summary>
    /// Gets or Sets TotalFound
    /// </summary>
    [DataMember(Name="totalFound", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "totalFound")]
    public int? TotalFound { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20047 {\n");
      sb.Append("  RecommendedWines: ").Append(RecommendedWines).Append("\n");
      sb.Append("  TotalFound: ").Append(TotalFound).Append("\n");
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
