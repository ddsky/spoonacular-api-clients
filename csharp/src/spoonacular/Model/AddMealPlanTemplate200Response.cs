/*
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
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
    /// AddMealPlanTemplate200Response
    /// </summary>
    [DataContract(Name = "addMealPlanTemplate_200_response")]
    public partial class AddMealPlanTemplate200Response : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AddMealPlanTemplate200Response" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected AddMealPlanTemplate200Response() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="AddMealPlanTemplate200Response" /> class.
        /// </summary>
        /// <param name="name">name (required).</param>
        /// <param name="items">items (required).</param>
        /// <param name="publishAsPublic">publishAsPublic (required).</param>
        public AddMealPlanTemplate200Response(string name = default(string), List<AddMealPlanTemplate200ResponseItemsInner> items = default(List<AddMealPlanTemplate200ResponseItemsInner>), bool publishAsPublic = default(bool))
        {
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new ArgumentNullException("name is a required property for AddMealPlanTemplate200Response and cannot be null");
            }
            this.Name = name;
            // to ensure "items" is required (not null)
            if (items == null)
            {
                throw new ArgumentNullException("items is a required property for AddMealPlanTemplate200Response and cannot be null");
            }
            this.Items = items;
            this.PublishAsPublic = publishAsPublic;
        }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Items
        /// </summary>
        [DataMember(Name = "items", IsRequired = true, EmitDefaultValue = true)]
        public List<AddMealPlanTemplate200ResponseItemsInner> Items { get; set; }

        /// <summary>
        /// Gets or Sets PublishAsPublic
        /// </summary>
        [DataMember(Name = "publishAsPublic", IsRequired = true, EmitDefaultValue = true)]
        public bool PublishAsPublic { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class AddMealPlanTemplate200Response {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Items: ").Append(Items).Append("\n");
            sb.Append("  PublishAsPublic: ").Append(PublishAsPublic).Append("\n");
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
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            // Name (string) minLength
            if (this.Name != null && this.Name.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Name, length must be greater than 1.", new [] { "Name" });
            }

            yield break;
        }
    }

}