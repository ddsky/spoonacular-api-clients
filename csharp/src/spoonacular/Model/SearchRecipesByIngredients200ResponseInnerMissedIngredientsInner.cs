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
    /// SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner
    /// </summary>
    [DataContract(Name = "searchRecipesByIngredients_200_response_inner_missedIngredients_inner")]
    public partial class SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner" /> class.
        /// </summary>
        /// <param name="aisle">aisle (required).</param>
        /// <param name="amount">amount (required).</param>
        /// <param name="id">id (required).</param>
        /// <param name="image">image (required).</param>
        /// <param name="meta">meta.</param>
        /// <param name="name">name (required).</param>
        /// <param name="original">original (required).</param>
        /// <param name="originalName">originalName (required).</param>
        /// <param name="unit">unit (required).</param>
        /// <param name="unitLong">unitLong (required).</param>
        /// <param name="unitShort">unitShort (required).</param>
        public SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner(string aisle = default(string), decimal amount = default(decimal), int id = default(int), string image = default(string), List<string> meta = default(List<string>), string name = default(string), string original = default(string), string originalName = default(string), string unit = default(string), string unitLong = default(string), string unitShort = default(string))
        {
            // to ensure "aisle" is required (not null)
            if (aisle == null)
            {
                throw new ArgumentNullException("aisle is a required property for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner and cannot be null");
            }
            this.Aisle = aisle;
            this.Amount = amount;
            this.Id = id;
            // to ensure "image" is required (not null)
            if (image == null)
            {
                throw new ArgumentNullException("image is a required property for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner and cannot be null");
            }
            this.Image = image;
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new ArgumentNullException("name is a required property for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner and cannot be null");
            }
            this.Name = name;
            // to ensure "original" is required (not null)
            if (original == null)
            {
                throw new ArgumentNullException("original is a required property for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner and cannot be null");
            }
            this.Original = original;
            // to ensure "originalName" is required (not null)
            if (originalName == null)
            {
                throw new ArgumentNullException("originalName is a required property for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner and cannot be null");
            }
            this.OriginalName = originalName;
            // to ensure "unit" is required (not null)
            if (unit == null)
            {
                throw new ArgumentNullException("unit is a required property for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner and cannot be null");
            }
            this.Unit = unit;
            // to ensure "unitLong" is required (not null)
            if (unitLong == null)
            {
                throw new ArgumentNullException("unitLong is a required property for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner and cannot be null");
            }
            this.UnitLong = unitLong;
            // to ensure "unitShort" is required (not null)
            if (unitShort == null)
            {
                throw new ArgumentNullException("unitShort is a required property for SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner and cannot be null");
            }
            this.UnitShort = unitShort;
            this.Meta = meta;
        }

        /// <summary>
        /// Gets or Sets Aisle
        /// </summary>
        [DataMember(Name = "aisle", IsRequired = true, EmitDefaultValue = true)]
        public string Aisle { get; set; }

        /// <summary>
        /// Gets or Sets Amount
        /// </summary>
        [DataMember(Name = "amount", IsRequired = true, EmitDefaultValue = true)]
        public decimal Amount { get; set; }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", IsRequired = true, EmitDefaultValue = true)]
        public int Id { get; set; }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", IsRequired = true, EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets Meta
        /// </summary>
        [DataMember(Name = "meta", EmitDefaultValue = false)]
        public List<string> Meta { get; set; }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name = "name", IsRequired = true, EmitDefaultValue = true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Original
        /// </summary>
        [DataMember(Name = "original", IsRequired = true, EmitDefaultValue = true)]
        public string Original { get; set; }

        /// <summary>
        /// Gets or Sets OriginalName
        /// </summary>
        [DataMember(Name = "originalName", IsRequired = true, EmitDefaultValue = true)]
        public string OriginalName { get; set; }

        /// <summary>
        /// Gets or Sets Unit
        /// </summary>
        [DataMember(Name = "unit", IsRequired = true, EmitDefaultValue = true)]
        public string Unit { get; set; }

        /// <summary>
        /// Gets or Sets UnitLong
        /// </summary>
        [DataMember(Name = "unitLong", IsRequired = true, EmitDefaultValue = true)]
        public string UnitLong { get; set; }

        /// <summary>
        /// Gets or Sets UnitShort
        /// </summary>
        [DataMember(Name = "unitShort", IsRequired = true, EmitDefaultValue = true)]
        public string UnitShort { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class SearchRecipesByIngredients200ResponseInnerMissedIngredientsInner {\n");
            sb.Append("  Aisle: ").Append(Aisle).Append("\n");
            sb.Append("  Amount: ").Append(Amount).Append("\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  Meta: ").Append(Meta).Append("\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Original: ").Append(Original).Append("\n");
            sb.Append("  OriginalName: ").Append(OriginalName).Append("\n");
            sb.Append("  Unit: ").Append(Unit).Append("\n");
            sb.Append("  UnitLong: ").Append(UnitLong).Append("\n");
            sb.Append("  UnitShort: ").Append(UnitShort).Append("\n");
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
            // Aisle (string) minLength
            if (this.Aisle != null && this.Aisle.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Aisle, length must be greater than 1.", new [] { "Aisle" });
            }

            // Image (string) minLength
            if (this.Image != null && this.Image.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Image, length must be greater than 1.", new [] { "Image" });
            }

            // Name (string) minLength
            if (this.Name != null && this.Name.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Name, length must be greater than 1.", new [] { "Name" });
            }

            // Original (string) minLength
            if (this.Original != null && this.Original.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Original, length must be greater than 1.", new [] { "Original" });
            }

            // OriginalName (string) minLength
            if (this.OriginalName != null && this.OriginalName.Length < 1)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for OriginalName, length must be greater than 1.", new [] { "OriginalName" });
            }

            // Unit (string) minLength
            if (this.Unit != null && this.Unit.Length < 0)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for Unit, length must be greater than 0.", new [] { "Unit" });
            }

            // UnitLong (string) minLength
            if (this.UnitLong != null && this.UnitLong.Length < 0)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for UnitLong, length must be greater than 0.", new [] { "UnitLong" });
            }

            // UnitShort (string) minLength
            if (this.UnitShort != null && this.UnitShort.Length < 0)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for UnitShort, length must be greater than 0.", new [] { "UnitShort" });
            }

            yield break;
        }
    }

}
