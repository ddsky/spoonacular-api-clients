<?php
/**
 * GetWinePairing200ResponseProductMatchesInner
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  com.spoonacular.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * spoonacular API
 *
 * The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.
 *
 * The version of the OpenAPI document: 1.1
 * Contact: mail@spoonacular.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 6.0.1
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace com.spoonacular.client\com.spoonacular.client.model;

use \ArrayAccess;
use \com.spoonacular.client\ObjectSerializer;

/**
 * GetWinePairing200ResponseProductMatchesInner Class Doc Comment
 *
 * @category Class
 * @package  com.spoonacular.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class GetWinePairing200ResponseProductMatchesInner implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'getWinePairing_200_response_productMatches_inner';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'id' => 'int',
        'title' => 'string',
        'average_rating' => 'float',
        'description' => 'mixed',
        'image_url' => 'string',
        'link' => 'string',
        'price' => 'string',
        'rating_count' => 'int',
        'score' => 'float'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'id' => null,
        'title' => null,
        'average_rating' => null,
        'description' => null,
        'image_url' => null,
        'link' => null,
        'price' => null,
        'rating_count' => null,
        'score' => null
    ];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'id' => 'id',
        'title' => 'title',
        'average_rating' => 'averageRating',
        'description' => 'description',
        'image_url' => 'imageUrl',
        'link' => 'link',
        'price' => 'price',
        'rating_count' => 'ratingCount',
        'score' => 'score'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'id' => 'setId',
        'title' => 'setTitle',
        'average_rating' => 'setAverageRating',
        'description' => 'setDescription',
        'image_url' => 'setImageUrl',
        'link' => 'setLink',
        'price' => 'setPrice',
        'rating_count' => 'setRatingCount',
        'score' => 'setScore'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'id' => 'getId',
        'title' => 'getTitle',
        'average_rating' => 'getAverageRating',
        'description' => 'getDescription',
        'image_url' => 'getImageUrl',
        'link' => 'getLink',
        'price' => 'getPrice',
        'rating_count' => 'getRatingCount',
        'score' => 'getScore'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->container['id'] = $data['id'] ?? null;
        $this->container['title'] = $data['title'] ?? null;
        $this->container['average_rating'] = $data['average_rating'] ?? null;
        $this->container['description'] = $data['description'] ?? null;
        $this->container['image_url'] = $data['image_url'] ?? null;
        $this->container['link'] = $data['link'] ?? null;
        $this->container['price'] = $data['price'] ?? null;
        $this->container['rating_count'] = $data['rating_count'] ?? null;
        $this->container['score'] = $data['score'] ?? null;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        if ($this->container['id'] === null) {
            $invalidProperties[] = "'id' can't be null";
        }
        if ($this->container['title'] === null) {
            $invalidProperties[] = "'title' can't be null";
        }
        if ((mb_strlen($this->container['title']) < 1)) {
            $invalidProperties[] = "invalid value for 'title', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['average_rating'] === null) {
            $invalidProperties[] = "'average_rating' can't be null";
        }
        if ($this->container['image_url'] === null) {
            $invalidProperties[] = "'image_url' can't be null";
        }
        if ((mb_strlen($this->container['image_url']) < 1)) {
            $invalidProperties[] = "invalid value for 'image_url', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['link'] === null) {
            $invalidProperties[] = "'link' can't be null";
        }
        if ((mb_strlen($this->container['link']) < 1)) {
            $invalidProperties[] = "invalid value for 'link', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['price'] === null) {
            $invalidProperties[] = "'price' can't be null";
        }
        if ((mb_strlen($this->container['price']) < 1)) {
            $invalidProperties[] = "invalid value for 'price', the character length must be bigger than or equal to 1.";
        }

        if ($this->container['rating_count'] === null) {
            $invalidProperties[] = "'rating_count' can't be null";
        }
        if ($this->container['score'] === null) {
            $invalidProperties[] = "'score' can't be null";
        }
        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets id
     *
     * @return int
     */
    public function getId()
    {
        return $this->container['id'];
    }

    /**
     * Sets id
     *
     * @param int $id id
     *
     * @return self
     */
    public function setId($id)
    {
        $this->container['id'] = $id;

        return $this;
    }

    /**
     * Gets title
     *
     * @return string
     */
    public function getTitle()
    {
        return $this->container['title'];
    }

    /**
     * Sets title
     *
     * @param string $title title
     *
     * @return self
     */
    public function setTitle($title)
    {

        if ((mb_strlen($title) < 1)) {
            throw new \InvalidArgumentException('invalid length for $title when calling GetWinePairing200ResponseProductMatchesInner., must be bigger than or equal to 1.');
        }

        $this->container['title'] = $title;

        return $this;
    }

    /**
     * Gets average_rating
     *
     * @return float
     */
    public function getAverageRating()
    {
        return $this->container['average_rating'];
    }

    /**
     * Sets average_rating
     *
     * @param float $average_rating average_rating
     *
     * @return self
     */
    public function setAverageRating($average_rating)
    {
        $this->container['average_rating'] = $average_rating;

        return $this;
    }

    /**
     * Gets description
     *
     * @return mixed|null
     */
    public function getDescription()
    {
        return $this->container['description'];
    }

    /**
     * Sets description
     *
     * @param mixed|null $description description
     *
     * @return self
     */
    public function setDescription($description)
    {
        $this->container['description'] = $description;

        return $this;
    }

    /**
     * Gets image_url
     *
     * @return string
     */
    public function getImageUrl()
    {
        return $this->container['image_url'];
    }

    /**
     * Sets image_url
     *
     * @param string $image_url image_url
     *
     * @return self
     */
    public function setImageUrl($image_url)
    {

        if ((mb_strlen($image_url) < 1)) {
            throw new \InvalidArgumentException('invalid length for $image_url when calling GetWinePairing200ResponseProductMatchesInner., must be bigger than or equal to 1.');
        }

        $this->container['image_url'] = $image_url;

        return $this;
    }

    /**
     * Gets link
     *
     * @return string
     */
    public function getLink()
    {
        return $this->container['link'];
    }

    /**
     * Sets link
     *
     * @param string $link link
     *
     * @return self
     */
    public function setLink($link)
    {

        if ((mb_strlen($link) < 1)) {
            throw new \InvalidArgumentException('invalid length for $link when calling GetWinePairing200ResponseProductMatchesInner., must be bigger than or equal to 1.');
        }

        $this->container['link'] = $link;

        return $this;
    }

    /**
     * Gets price
     *
     * @return string
     */
    public function getPrice()
    {
        return $this->container['price'];
    }

    /**
     * Sets price
     *
     * @param string $price price
     *
     * @return self
     */
    public function setPrice($price)
    {

        if ((mb_strlen($price) < 1)) {
            throw new \InvalidArgumentException('invalid length for $price when calling GetWinePairing200ResponseProductMatchesInner., must be bigger than or equal to 1.');
        }

        $this->container['price'] = $price;

        return $this;
    }

    /**
     * Gets rating_count
     *
     * @return int
     */
    public function getRatingCount()
    {
        return $this->container['rating_count'];
    }

    /**
     * Sets rating_count
     *
     * @param int $rating_count rating_count
     *
     * @return self
     */
    public function setRatingCount($rating_count)
    {
        $this->container['rating_count'] = $rating_count;

        return $this;
    }

    /**
     * Gets score
     *
     * @return float
     */
    public function getScore()
    {
        return $this->container['score'];
    }

    /**
     * Sets score
     *
     * @param float $score score
     *
     * @return self
     */
    public function setScore($score)
    {
        $this->container['score'] = $score;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


