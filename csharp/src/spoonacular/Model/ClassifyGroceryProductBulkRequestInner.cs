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
    /// ClassifyGroceryProductBulkRequestInner
    /// </summary>
    [DataContract(Name = "classifyGroceryProductBulk_request_inner")]
    public partial class ClassifyGroceryProductBulkRequestInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClassifyGroceryProductBulkRequestInner" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ClassifyGroceryProductBulkRequestInner() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClassifyGroceryProductBulkRequestInner" /> class.
        /// </summary>
        /// <param name="title">title (required).</param>
        /// <param name="upc">upc (required).</param>
        /// <param name="pluCode">pluCode (required).</param>
        public ClassifyGroceryProductBulkRequestInner(string title = default(string), string upc = default(string), string pluCode = default(string))
        {
            // to ensure "title" is required (not null)
            if (title == null)
            {
                throw new ArgumentNullException("title is a required property for ClassifyGroceryProductBulkRequestInner and cannot be null");
            }
            this.Title = title;
            // to ensure "upc" is required (not null)
            if (upc == null)
            {
                throw new ArgumentNullException("upc is a required property for ClassifyGroceryProductBulkRequestInner and cannot be null");
            }
            this.Upc = upc;
            // to ensure "pluCode" is required (not null)
            if (pluCode == null)
            {
                throw new ArgumentNullException("pluCode is a required property for ClassifyGroceryProductBulkRequestInner and cannot be null");
            }
            this.PluCode = pluCode;
        }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name = "title", IsRequired = true, EmitDefaultValue = true)]
        public string Title { get; set; }

        /// <summary>
        /// Gets or Sets Upc
        /// </summary>
        [DataMember(Name = "upc", IsRequired = true, EmitDefaultValue = true)]
        public string Upc { get; set; }

        /// <summary>
        /// Gets or Sets PluCode
        /// </summary>
        [DataMember(Name = "plu_code", IsRequired = true, EmitDefaultValue = true)]
        public string PluCode { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ClassifyGroceryProductBulkRequestInner {\n");
            sb.Append("  Title: ").Append(Title).Append("\n");
            sb.Append("  Upc: ").Append(Upc).Append("\n");
            sb.Append("  PluCode: ").Append(PluCode).Append("\n");
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
            // Title (string) minLength
            if (this.Title != null && this.Title.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Title, length must be greater than 1.", new [] { "Title" });
            }

            yield break;
        }
    }

}
