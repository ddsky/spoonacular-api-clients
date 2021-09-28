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
  public class InlineResponse20031ComparableProducts {
    /// <summary>
    /// Gets or Sets Calories
    /// </summary>
    [DataMember(Name="calories", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "calories")]
    public List<Object> Calories { get; set; }

    /// <summary>
    /// Gets or Sets Likes
    /// </summary>
    [DataMember(Name="likes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "likes")]
    public List<Object> Likes { get; set; }

    /// <summary>
    /// Gets or Sets Price
    /// </summary>
    [DataMember(Name="price", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "price")]
    public List<Object> Price { get; set; }

    /// <summary>
    /// Gets or Sets Protein
    /// </summary>
    [DataMember(Name="protein", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "protein")]
    public List<InlineResponse20031ComparableProductsProtein> Protein { get; set; }

    /// <summary>
    /// Gets or Sets SpoonacularScore
    /// </summary>
    [DataMember(Name="spoonacularScore", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "spoonacularScore")]
    public List<InlineResponse20031ComparableProductsProtein> SpoonacularScore { get; set; }

    /// <summary>
    /// Gets or Sets Sugar
    /// </summary>
    [DataMember(Name="sugar", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sugar")]
    public List<Object> Sugar { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20031ComparableProducts {\n");
      sb.Append("  Calories: ").Append(Calories).Append("\n");
      sb.Append("  Likes: ").Append(Likes).Append("\n");
      sb.Append("  Price: ").Append(Price).Append("\n");
      sb.Append("  Protein: ").Append(Protein).Append("\n");
      sb.Append("  SpoonacularScore: ").Append(SpoonacularScore).Append("\n");
      sb.Append("  Sugar: ").Append(Sugar).Append("\n");
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
