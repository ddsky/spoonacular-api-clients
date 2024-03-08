=begin
#spoonacular API

#The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.1
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module OpenapiClient
  # 
  class SearchGroceryProductsByUPC200Response
    attr_accessor :id

    attr_accessor :title

    attr_accessor :badges

    attr_accessor :important_badges

    attr_accessor :breadcrumbs

    attr_accessor :generated_text

    attr_accessor :image_type

    attr_accessor :ingredient_count

    attr_accessor :ingredient_list

    attr_accessor :ingredients

    attr_accessor :likes

    attr_accessor :nutrition

    attr_accessor :price

    attr_accessor :servings

    attr_accessor :spoonacular_score

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'badges' => :'badges',
        :'important_badges' => :'importantBadges',
        :'breadcrumbs' => :'breadcrumbs',
        :'generated_text' => :'generatedText',
        :'image_type' => :'imageType',
        :'ingredient_count' => :'ingredientCount',
        :'ingredient_list' => :'ingredientList',
        :'ingredients' => :'ingredients',
        :'likes' => :'likes',
        :'nutrition' => :'nutrition',
        :'price' => :'price',
        :'servings' => :'servings',
        :'spoonacular_score' => :'spoonacularScore'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'title' => :'String',
        :'badges' => :'Array<String>',
        :'important_badges' => :'Array<String>',
        :'breadcrumbs' => :'Array<String>',
        :'generated_text' => :'String',
        :'image_type' => :'String',
        :'ingredient_count' => :'Integer',
        :'ingredient_list' => :'String',
        :'ingredients' => :'Array<SearchGroceryProductsByUPC200ResponseIngredientsInner>',
        :'likes' => :'Float',
        :'nutrition' => :'SearchGroceryProductsByUPC200ResponseNutrition',
        :'price' => :'Float',
        :'servings' => :'SearchGroceryProductsByUPC200ResponseServings',
        :'spoonacular_score' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::SearchGroceryProductsByUPC200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::SearchGroceryProductsByUPC200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      else
        self.title = nil
      end

      if attributes.key?(:'badges')
        if (value = attributes[:'badges']).is_a?(Array)
          self.badges = value
        end
      else
        self.badges = nil
      end

      if attributes.key?(:'important_badges')
        if (value = attributes[:'important_badges']).is_a?(Array)
          self.important_badges = value
        end
      else
        self.important_badges = nil
      end

      if attributes.key?(:'breadcrumbs')
        if (value = attributes[:'breadcrumbs']).is_a?(Array)
          self.breadcrumbs = value
        end
      else
        self.breadcrumbs = nil
      end

      if attributes.key?(:'generated_text')
        self.generated_text = attributes[:'generated_text']
      else
        self.generated_text = nil
      end

      if attributes.key?(:'image_type')
        self.image_type = attributes[:'image_type']
      else
        self.image_type = nil
      end

      if attributes.key?(:'ingredient_count')
        self.ingredient_count = attributes[:'ingredient_count']
      end

      if attributes.key?(:'ingredient_list')
        self.ingredient_list = attributes[:'ingredient_list']
      else
        self.ingredient_list = nil
      end

      if attributes.key?(:'ingredients')
        if (value = attributes[:'ingredients']).is_a?(Array)
          self.ingredients = value
        end
      else
        self.ingredients = nil
      end

      if attributes.key?(:'likes')
        self.likes = attributes[:'likes']
      else
        self.likes = nil
      end

      if attributes.key?(:'nutrition')
        self.nutrition = attributes[:'nutrition']
      else
        self.nutrition = nil
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      else
        self.price = nil
      end

      if attributes.key?(:'servings')
        self.servings = attributes[:'servings']
      else
        self.servings = nil
      end

      if attributes.key?(:'spoonacular_score')
        self.spoonacular_score = attributes[:'spoonacular_score']
      else
        self.spoonacular_score = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @title.to_s.length < 1
        invalid_properties.push('invalid value for "title", the character length must be great than or equal to 1.')
      end

      if @badges.nil?
        invalid_properties.push('invalid value for "badges", badges cannot be nil.')
      end

      if @important_badges.nil?
        invalid_properties.push('invalid value for "important_badges", important_badges cannot be nil.')
      end

      if @breadcrumbs.nil?
        invalid_properties.push('invalid value for "breadcrumbs", breadcrumbs cannot be nil.')
      end

      if @generated_text.nil?
        invalid_properties.push('invalid value for "generated_text", generated_text cannot be nil.')
      end

      if @generated_text.to_s.length < 1
        invalid_properties.push('invalid value for "generated_text", the character length must be great than or equal to 1.')
      end

      if @image_type.nil?
        invalid_properties.push('invalid value for "image_type", image_type cannot be nil.')
      end

      if @image_type.to_s.length < 1
        invalid_properties.push('invalid value for "image_type", the character length must be great than or equal to 1.')
      end

      if @ingredient_list.nil?
        invalid_properties.push('invalid value for "ingredient_list", ingredient_list cannot be nil.')
      end

      if @ingredient_list.to_s.length < 1
        invalid_properties.push('invalid value for "ingredient_list", the character length must be great than or equal to 1.')
      end

      if @ingredients.nil?
        invalid_properties.push('invalid value for "ingredients", ingredients cannot be nil.')
      end

      if @ingredients.length < 0
        invalid_properties.push('invalid value for "ingredients", number of items must be greater than or equal to 0.')
      end

      if @likes.nil?
        invalid_properties.push('invalid value for "likes", likes cannot be nil.')
      end

      if @nutrition.nil?
        invalid_properties.push('invalid value for "nutrition", nutrition cannot be nil.')
      end

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @servings.nil?
        invalid_properties.push('invalid value for "servings", servings cannot be nil.')
      end

      if @spoonacular_score.nil?
        invalid_properties.push('invalid value for "spoonacular_score", spoonacular_score cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @title.nil?
      return false if @title.to_s.length < 1
      return false if @badges.nil?
      return false if @important_badges.nil?
      return false if @breadcrumbs.nil?
      return false if @generated_text.nil?
      return false if @generated_text.to_s.length < 1
      return false if @image_type.nil?
      return false if @image_type.to_s.length < 1
      return false if @ingredient_list.nil?
      return false if @ingredient_list.to_s.length < 1
      return false if @ingredients.nil?
      return false if @ingredients.length < 0
      return false if @likes.nil?
      return false if @nutrition.nil?
      return false if @price.nil?
      return false if @servings.nil?
      return false if @spoonacular_score.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if title.nil?
        fail ArgumentError, 'title cannot be nil'
      end

      if title.to_s.length < 1
        fail ArgumentError, 'invalid value for "title", the character length must be great than or equal to 1.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] generated_text Value to be assigned
    def generated_text=(generated_text)
      if generated_text.nil?
        fail ArgumentError, 'generated_text cannot be nil'
      end

      if generated_text.to_s.length < 1
        fail ArgumentError, 'invalid value for "generated_text", the character length must be great than or equal to 1.'
      end

      @generated_text = generated_text
    end

    # Custom attribute writer method with validation
    # @param [Object] image_type Value to be assigned
    def image_type=(image_type)
      if image_type.nil?
        fail ArgumentError, 'image_type cannot be nil'
      end

      if image_type.to_s.length < 1
        fail ArgumentError, 'invalid value for "image_type", the character length must be great than or equal to 1.'
      end

      @image_type = image_type
    end

    # Custom attribute writer method with validation
    # @param [Object] ingredient_list Value to be assigned
    def ingredient_list=(ingredient_list)
      if ingredient_list.nil?
        fail ArgumentError, 'ingredient_list cannot be nil'
      end

      if ingredient_list.to_s.length < 1
        fail ArgumentError, 'invalid value for "ingredient_list", the character length must be great than or equal to 1.'
      end

      @ingredient_list = ingredient_list
    end

    # Custom attribute writer method with validation
    # @param [Object] ingredients Value to be assigned
    def ingredients=(ingredients)
      if ingredients.nil?
        fail ArgumentError, 'ingredients cannot be nil'
      end

      if ingredients.length < 0
        fail ArgumentError, 'invalid value for "ingredients", number of items must be greater than or equal to 0.'
      end

      @ingredients = ingredients
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          badges == o.badges &&
          important_badges == o.important_badges &&
          breadcrumbs == o.breadcrumbs &&
          generated_text == o.generated_text &&
          image_type == o.image_type &&
          ingredient_count == o.ingredient_count &&
          ingredient_list == o.ingredient_list &&
          ingredients == o.ingredients &&
          likes == o.likes &&
          nutrition == o.nutrition &&
          price == o.price &&
          servings == o.servings &&
          spoonacular_score == o.spoonacular_score
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, badges, important_badges, breadcrumbs, generated_text, image_type, ingredient_count, ingredient_list, ingredients, likes, nutrition, price, servings, spoonacular_score].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
