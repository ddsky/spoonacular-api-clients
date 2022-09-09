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
  public class QuickAnswer200Response {
    /// <summary>
    /// Gets or Sets Answer
    /// </summary>
    [DataMember(Name="answer", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "answer")]
    public string Answer { get; set; }

    /// <summary>
    /// Gets or Sets Image
    /// </summary>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class QuickAnswer200Response {\n");
      sb.Append("  Answer: ").Append(Answer).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
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
