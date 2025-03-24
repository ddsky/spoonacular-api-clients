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
    /// DetectFoodInText200ResponseAnnotationsInner
    /// </summary>
    [DataContract(Name = "detectFoodInText_200_response_annotations_inner")]
    public partial class DetectFoodInText200ResponseAnnotationsInner : IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="DetectFoodInText200ResponseAnnotationsInner" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected DetectFoodInText200ResponseAnnotationsInner() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="DetectFoodInText200ResponseAnnotationsInner" /> class.
        /// </summary>
        /// <param name="annotation">annotation (required).</param>
        /// <param name="image">image (required).</param>
        /// <param name="tag">tag (required).</param>
        public DetectFoodInText200ResponseAnnotationsInner(string annotation = default(string), string image = default(string), string tag = default(string))
        {
            // to ensure "annotation" is required (not null)
            if (annotation == null)
            {
                throw new ArgumentNullException("annotation is a required property for DetectFoodInText200ResponseAnnotationsInner and cannot be null");
            }
            this.Annotation = annotation;
            // to ensure "image" is required (not null)
            if (image == null)
            {
                throw new ArgumentNullException("image is a required property for DetectFoodInText200ResponseAnnotationsInner and cannot be null");
            }
            this.Image = image;
            // to ensure "tag" is required (not null)
            if (tag == null)
            {
                throw new ArgumentNullException("tag is a required property for DetectFoodInText200ResponseAnnotationsInner and cannot be null");
            }
            this.Tag = tag;
        }

        /// <summary>
        /// Gets or Sets Annotation
        /// </summary>
        [DataMember(Name = "annotation", IsRequired = true, EmitDefaultValue = true)]
        public string Annotation { get; set; }

        /// <summary>
        /// Gets or Sets Image
        /// </summary>
        [DataMember(Name = "image", IsRequired = true, EmitDefaultValue = true)]
        public string Image { get; set; }

        /// <summary>
        /// Gets or Sets Tag
        /// </summary>
        [DataMember(Name = "tag", IsRequired = true, EmitDefaultValue = true)]
        public string Tag { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class DetectFoodInText200ResponseAnnotationsInner {\n");
            sb.Append("  Annotation: ").Append(Annotation).Append("\n");
            sb.Append("  Image: ").Append(Image).Append("\n");
            sb.Append("  Tag: ").Append(Tag).Append("\n");
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
            // Annotation (string) minLength
            if (this.Annotation != null && this.Annotation.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Annotation, length must be greater than 1.", new [] { "Annotation" });
            }

            // Image (string) minLength
            if (this.Image != null && this.Image.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Image, length must be greater than 1.", new [] { "Image" });
            }

            // Tag (string) minLength
            if (this.Tag != null && this.Tag.Length < 1)
            {
                yield return new ValidationResult("Invalid value for Tag, length must be greater than 1.", new [] { "Tag" });
            }

            yield break;
        }
    }

}
