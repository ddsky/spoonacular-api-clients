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
  public class InlineResponse20023Ingredients {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public int? Id { get; set; }

    /// <summary>
    /// Gets or Sets Original
    /// </summary>
    [DataMember(Name="original", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "original")]
    public string Original { get; set; }

    /// <summary>
    /// Gets or Sets GlycemicIndex
    /// </summary>
    [DataMember(Name="glycemicIndex", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "glycemicIndex")]
    public decimal? GlycemicIndex { get; set; }

    /// <summary>
    /// Gets or Sets GlycemicLoad
    /// </summary>
    [DataMember(Name="glycemicLoad", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "glycemicLoad")]
    public decimal? GlycemicLoad { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20023Ingredients {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Original: ").Append(Original).Append("\n");
      sb.Append("  GlycemicIndex: ").Append(GlycemicIndex).Append("\n");
      sb.Append("  GlycemicLoad: ").Append(GlycemicLoad).Append("\n");
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
