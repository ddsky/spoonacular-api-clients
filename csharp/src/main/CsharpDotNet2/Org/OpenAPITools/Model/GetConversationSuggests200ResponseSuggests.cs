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
  public class GetConversationSuggests200ResponseSuggests {
    /// <summary>
    /// Gets or Sets _
    /// </summary>
    [DataMember(Name="_", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "_")]
    public List<GetConversationSuggests200ResponseSuggestsInner> _ { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GetConversationSuggests200ResponseSuggests {\n");
      sb.Append("  _: ").Append(_).Append("\n");
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
