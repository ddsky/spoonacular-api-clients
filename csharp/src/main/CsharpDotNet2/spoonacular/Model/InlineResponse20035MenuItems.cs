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
  public class InlineResponse20035MenuItems {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public int? Id { get; set; }

    /// <summary>
    /// Gets or Sets Title
    /// </summary>
    [DataMember(Name="title", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "title")]
    public string Title { get; set; }

    /// <summary>
    /// Gets or Sets RestaurantChain
    /// </summary>
    [DataMember(Name="restaurantChain", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "restaurantChain")]
    public string RestaurantChain { get; set; }

    /// <summary>
    /// Gets or Sets Image
    /// </summary>
    [DataMember(Name="image", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "image")]
    public string Image { get; set; }

    /// <summary>
    /// Gets or Sets ImageType
    /// </summary>
    [DataMember(Name="imageType", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "imageType")]
    public string ImageType { get; set; }

    /// <summary>
    /// Gets or Sets Servings
    /// </summary>
    [DataMember(Name="servings", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "servings")]
    public InlineResponse20028Servings Servings { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class InlineResponse20035MenuItems {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Title: ").Append(Title).Append("\n");
      sb.Append("  RestaurantChain: ").Append(RestaurantChain).Append("\n");
      sb.Append("  Image: ").Append(Image).Append("\n");
      sb.Append("  ImageType: ").Append(ImageType).Append("\n");
      sb.Append("  Servings: ").Append(Servings).Append("\n");
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
