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
  public class GenerateMealPlan200Response {
    /// <summary>
    /// Gets or Sets Meals
    /// </summary>
    [DataMember(Name="meals", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "meals")]
    public List<GetSimilarRecipes200ResponseInner> Meals { get; set; }

    /// <summary>
    /// Gets or Sets Nutrients
    /// </summary>
    [DataMember(Name="nutrients", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "nutrients")]
    public GenerateMealPlan200ResponseNutrients Nutrients { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class GenerateMealPlan200Response {\n");
      sb.Append("  Meals: ").Append(Meals).Append("\n");
      sb.Append("  Nutrients: ").Append(Nutrients).Append("\n");
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
