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
  public class TalkToChatbot200Response {
    /// <summary>
    /// Gets or Sets AnswerText
    /// </summary>
    [DataMember(Name="answerText", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "answerText")]
    public string AnswerText { get; set; }

    /// <summary>
    /// Gets or Sets Media
    /// </summary>
    [DataMember(Name="media", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "media")]
    public List<Object> Media { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class TalkToChatbot200Response {\n");
      sb.Append("  AnswerText: ").Append(AnswerText).Append("\n");
      sb.Append("  Media: ").Append(Media).Append("\n");
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
