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
  public class SearchSiteContent200Response {
    /// <summary>
    /// Gets or Sets Articles
    /// </summary>
    [DataMember(Name="Articles", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Articles")]
    public List<SearchSiteContent200ResponseArticlesInner> Articles { get; set; }

    /// <summary>
    /// Gets or Sets GroceryProducts
    /// </summary>
    [DataMember(Name="Grocery Products", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Grocery Products")]
    public List<SearchSiteContent200ResponseGroceryProductsInner> GroceryProducts { get; set; }

    /// <summary>
    /// Gets or Sets MenuItems
    /// </summary>
    [DataMember(Name="Menu Items", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Menu Items")]
    public List<SearchSiteContent200ResponseGroceryProductsInner> MenuItems { get; set; }

    /// <summary>
    /// Gets or Sets Recipes
    /// </summary>
    [DataMember(Name="Recipes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "Recipes")]
    public List<SearchSiteContent200ResponseGroceryProductsInner> Recipes { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchSiteContent200Response {\n");
      sb.Append("  Articles: ").Append(Articles).Append("\n");
      sb.Append("  GroceryProducts: ").Append(GroceryProducts).Append("\n");
      sb.Append("  MenuItems: ").Append(MenuItems).Append("\n");
      sb.Append("  Recipes: ").Append(Recipes).Append("\n");
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
