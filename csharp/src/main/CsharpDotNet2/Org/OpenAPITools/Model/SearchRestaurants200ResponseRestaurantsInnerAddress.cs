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
  public class SearchRestaurants200ResponseRestaurantsInnerAddress {
    /// <summary>
    /// Gets or Sets StreetAddr
    /// </summary>
    [DataMember(Name="street_addr", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "street_addr")]
    public string StreetAddr { get; set; }

    /// <summary>
    /// Gets or Sets City
    /// </summary>
    [DataMember(Name="city", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "city")]
    public string City { get; set; }

    /// <summary>
    /// Gets or Sets State
    /// </summary>
    [DataMember(Name="state", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "state")]
    public string State { get; set; }

    /// <summary>
    /// Gets or Sets Zipcode
    /// </summary>
    [DataMember(Name="zipcode", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "zipcode")]
    public string Zipcode { get; set; }

    /// <summary>
    /// Gets or Sets Country
    /// </summary>
    [DataMember(Name="country", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "country")]
    public string Country { get; set; }

    /// <summary>
    /// Gets or Sets Lat
    /// </summary>
    [DataMember(Name="lat", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lat")]
    public decimal? Lat { get; set; }

    /// <summary>
    /// Gets or Sets Lon
    /// </summary>
    [DataMember(Name="lon", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "lon")]
    public decimal? Lon { get; set; }

    /// <summary>
    /// Gets or Sets StreetAddr2
    /// </summary>
    [DataMember(Name="street_addr_2", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "street_addr_2")]
    public string StreetAddr2 { get; set; }

    /// <summary>
    /// Gets or Sets Latitude
    /// </summary>
    [DataMember(Name="latitude", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "latitude")]
    public decimal? Latitude { get; set; }

    /// <summary>
    /// Gets or Sets Longitude
    /// </summary>
    [DataMember(Name="longitude", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "longitude")]
    public decimal? Longitude { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class SearchRestaurants200ResponseRestaurantsInnerAddress {\n");
      sb.Append("  StreetAddr: ").Append(StreetAddr).Append("\n");
      sb.Append("  City: ").Append(City).Append("\n");
      sb.Append("  State: ").Append(State).Append("\n");
      sb.Append("  Zipcode: ").Append(Zipcode).Append("\n");
      sb.Append("  Country: ").Append(Country).Append("\n");
      sb.Append("  Lat: ").Append(Lat).Append("\n");
      sb.Append("  Lon: ").Append(Lon).Append("\n");
      sb.Append("  StreetAddr2: ").Append(StreetAddr2).Append("\n");
      sb.Append("  Latitude: ").Append(Latitude).Append("\n");
      sb.Append("  Longitude: ").Append(Longitude).Append("\n");
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
