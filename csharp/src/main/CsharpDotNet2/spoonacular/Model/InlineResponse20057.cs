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
  public class InlineResponse20057 {
    /// <summary>
    /// Gets or Sets Suggests
    /// </summary>
    [DataMember(Name="suggests", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "suggests")]
    public InlineResponse20057Suggests Suggests { get; set; }

    /// <summary>
    /// Gets or Sets Words
    /// </summary>
    [DataMember(Name="words", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "words")]
    public List<Object> Words { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20057 {\n");
      sb.Append("  Suggests: ").Append(Suggests).Append("\n");
      sb.Append("  Words: ").Append(Words).Append("\n");
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
