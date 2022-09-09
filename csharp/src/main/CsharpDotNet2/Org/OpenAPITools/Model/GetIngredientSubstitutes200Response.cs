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
  public class GetIngredientSubstitutes200Response {
    /// <summary>
    /// Gets or Sets Ingredient
    /// </summary>
    [DataMember(Name="ingredient", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "ingredient")]
    public string Ingredient { get; set; }

    /// <summary>
    /// Gets or Sets Substitutes
    /// </summary>
    [DataMember(Name="substitutes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "substitutes")]
    public List<string> Substitutes { get; set; }

    /// <summary>
    /// Gets or Sets Message
    /// </summary>
    [DataMember(Name="message", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "message")]
    public string Message { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GetIngredientSubstitutes200Response {\n");
      sb.Append("  Ingredient: ").Append(Ingredient).Append("\n");
      sb.Append("  Substitutes: ").Append(Substitutes).Append("\n");
      sb.Append("  Message: ").Append(Message).Append("\n");
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
