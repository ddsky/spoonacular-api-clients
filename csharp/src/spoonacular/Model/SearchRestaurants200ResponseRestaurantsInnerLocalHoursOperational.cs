/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 2.0.2
 * Contact: mail@spoonacular.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = spoonacular.Client.OpenAPIDateConverter;

namespace spoonacular.Model
{
    /// <summary>
    /// SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational
    /// </summary>
    [DataContract(Name = "searchRestaurants_200_response_restaurants_inner_local_hours_operational")]
    public partial class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational" /> class.
        /// </summary>
        /// <param name="monday">monday.</param>
        /// <param name="tuesday">tuesday.</param>
        /// <param name="wednesday">wednesday.</param>
        /// <param name="thursday">thursday.</param>
        /// <param name="friday">friday.</param>
        /// <param name="saturday">saturday.</param>
        /// <param name="sunday">sunday.</param>
        public SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational(string monday = default(string), string tuesday = default(string), string wednesday = default(string), string thursday = default(string), string friday = default(string), string saturday = default(string), string sunday = default(string))
        {
            this.Monday = monday;
            this.Tuesday = tuesday;
            this.Wednesday = wednesday;
            this.Thursday = thursday;
            this.Friday = friday;
            this.Saturday = saturday;
            this.Sunday = sunday;
        }

        /// <summary>
        /// Gets or Sets Monday
        /// </summary>
        [DataMember(Name = "Monday", EmitDefaultValue = false)]
        public string Monday { get; set; }

        /// <summary>
        /// Gets or Sets Tuesday
        /// </summary>
        [DataMember(Name = "Tuesday", EmitDefaultValue = false)]
        public string Tuesday { get; set; }

        /// <summary>
        /// Gets or Sets Wednesday
        /// </summary>
        [DataMember(Name = "Wednesday", EmitDefaultValue = false)]
        public string Wednesday { get; set; }

        /// <summary>
        /// Gets or Sets Thursday
        /// </summary>
        [DataMember(Name = "Thursday", EmitDefaultValue = false)]
        public string Thursday { get; set; }

        /// <summary>
        /// Gets or Sets Friday
        /// </summary>
        [DataMember(Name = "Friday", EmitDefaultValue = false)]
        public string Friday { get; set; }

        /// <summary>
        /// Gets or Sets Saturday
        /// </summary>
        [DataMember(Name = "Saturday", EmitDefaultValue = false)]
        public string Saturday { get; set; }

        /// <summary>
        /// Gets or Sets Sunday
        /// </summary>
        [DataMember(Name = "Sunday", EmitDefaultValue = false)]
        public string Sunday { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational {\n");
            sb.Append("  Monday: ").Append(Monday).Append("\n");
            sb.Append("  Tuesday: ").Append(Tuesday).Append("\n");
            sb.Append("  Wednesday: ").Append(Wednesday).Append("\n");
            sb.Append("  Thursday: ").Append(Thursday).Append("\n");
            sb.Append("  Friday: ").Append(Friday).Append("\n");
            sb.Append("  Saturday: ").Append(Saturday).Append("\n");
            sb.Append("  Sunday: ").Append(Sunday).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
