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
    /// ClassifyGroceryProductBulk200ResponseInner
    /// </summary>
    [DataContract(Name = "classifyGroceryProductBulk_200_response_inner")]
    public partial class ClassifyGroceryProductBulk200ResponseInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ClassifyGroceryProductBulk200ResponseInner" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ClassifyGroceryProductBulk200ResponseInner() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ClassifyGroceryProductBulk200ResponseInner" /> class.
        /// </summary>
        /// <param name="cleanTitle">cleanTitle (required).</param>
        /// <param name="image">image (required).</param>
        /// <param name="category">category (required).</param>
        /// <param name="breadcrumbs">breadcrumbs (required).</param>
        /// <param name="usdaCode">usdaCode (required).</param>
        public ClassifyGroceryProductBulk200ResponseInner(string cleanTitle = default(string), string image = default(string), string category = default(string), List<string> breadcrumbs = default(List<string>), int usdaCode = default(int))
        {
            // to ensure "cleanTitle" is required (not null)
            if (cleanTitle == null)
            {
                throw new ArgumentNullException("cleanTitle is a required property for ClassifyGroceryProductBulk200ResponseInner and cannot be null");
            }
            this.CleanTitle = cleanTitle;
            // to ensure "image" is required (not null)
            if (image == null)
            {
                throw new ArgumentNullException("image is a required property for ClassifyGroceryProductBulk200ResponseInner and cannot be null");
            }
            this.Image = image;
            // to ensure "category" is required (not null)
            if (category == null)
            {
                throw new ArgumentNullException("category is a required property for ClassifyGroceryProductBulk200ResponseInner and cannot be null");
            }
            this.Category = category;
            // to ensure "breadcrumbs" is required (not null)
            if (breadcrumbs == null)
            {
                throw new ArgumentNullException("breadcrumbs is a required property for ClassifyGroceryProductBulk200ResponseInner and cannot be null");
            }
            this.Breadcrumbs = breadcrumbs;
            this.UsdaCode = usdaCode;
        }

        /// <summary>
        /// Gets or Sets CleanTitle
        /// </summary>
        [DataMember(Name = "cleanTitle", IsRequired = true, EmitDefaultValue = true)]
        public string CleanTitle { get; set; }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", IsRequired = true, EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets Category
        /// </summary>
        [DataMember(Name = "category", IsRequired = true, EmitDefaultValue = true)]
        public string Category { get; set; }

        /// <summary>
        /// Gets or Sets Breadcrumbs
        /// </summary>
        [DataMember(Name = "breadcrumbs", IsRequired = true, EmitDefaultValue = true)]
        public List<string> Breadcrumbs { get; set; }

        /// <summary>
        /// Gets or Sets UsdaCode
        /// </summary>
        [DataMember(Name = "usdaCode", IsRequired = true, EmitDefaultValue = true)]
        public int UsdaCode { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class ClassifyGroceryProductBulk200ResponseInner {\n");
            sb.Append("  CleanTitle: ").Append(CleanTitle).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  Category: ").Append(Category).Append("\n");
            sb.Append("  Breadcrumbs: ").Append(Breadcrumbs).Append("\n");
            sb.Append("  UsdaCode: ").Append(UsdaCode).Append("\n");
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
            // CleanTitle (string) minLength
            if (this.CleanTitle != null && this.CleanTitle.Length < 1)
            {
                yield return new ValidationResult("Invalid value for CleanTitle, length must be greater than 1.", new [] { "CleanTitle" });
            }

            // Image (string) minLength
            if (this.Image != null && this.Image.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Image, length must be greater than 1.", new [] { "Image" });
            }

            // Category (string) minLength
            if (this.Category != null && this.Category.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Category, length must be greater than 1.", new [] { "Category" });
            }

            yield break;
        }
    }

}
