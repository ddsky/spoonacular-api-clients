# coding: utf-8

"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

    The version of the OpenAPI document: 1.1
    Contact: mail@spoonacular.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json

from pydantic import BaseModel, ConfigDict, Field, StrictFloat, StrictInt, StrictStr
from typing import Any, ClassVar, Dict, List, Optional, Union
from typing_extensions import Annotated
from spoonacular.models.get_product_information200_response_ingredients_inner import GetProductInformation200ResponseIngredientsInner
from spoonacular.models.search_grocery_products_by_upc200_response_nutrition import SearchGroceryProductsByUPC200ResponseNutrition
from spoonacular.models.search_grocery_products_by_upc200_response_servings import SearchGroceryProductsByUPC200ResponseServings
from typing import Optional, Set
from typing_extensions import Self

class GetProductInformation200Response(BaseModel):
    """
    
    """ # noqa: E501
    id: StrictInt
    title: Annotated[str, Field(min_length=1, strict=True)]
    breadcrumbs: List[StrictStr]
    image_type: Annotated[str, Field(min_length=1, strict=True)] = Field(alias="imageType")
    badges: List[StrictStr]
    important_badges: List[StrictStr] = Field(alias="importantBadges")
    ingredient_count: StrictInt = Field(alias="ingredientCount")
    generated_text: Optional[StrictStr] = Field(default=None, alias="generatedText")
    ingredient_list: Annotated[str, Field(min_length=1, strict=True)] = Field(alias="ingredientList")
    ingredients: Annotated[List[GetProductInformation200ResponseIngredientsInner], Field(min_length=0)]
    likes: Union[StrictFloat, StrictInt]
    aisle: Annotated[str, Field(min_length=1, strict=True)]
    nutrition: SearchGroceryProductsByUPC200ResponseNutrition
    price: Union[StrictFloat, StrictInt]
    servings: SearchGroceryProductsByUPC200ResponseServings
    spoonacular_score: Union[StrictFloat, StrictInt] = Field(alias="spoonacularScore")
    __properties: ClassVar[List[str]] = ["id", "title", "breadcrumbs", "imageType", "badges", "importantBadges", "ingredientCount", "generatedText", "ingredientList", "ingredients", "likes", "aisle", "nutrition", "price", "servings", "spoonacularScore"]

    model_config = ConfigDict(
        populate_by_name=True,
        validate_assignment=True,
        protected_namespaces=(),
    )


    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.model_dump(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        # TODO: pydantic v2: use .model_dump_json(by_alias=True, exclude_unset=True) instead
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> Optional[Self]:
        """Create an instance of GetProductInformation200Response from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self) -> Dict[str, Any]:
        """Return the dictionary representation of the model using alias.

        This has the following differences from calling pydantic's
        `self.model_dump(by_alias=True)`:

        * `None` is only added to the output dict for nullable fields that
          were set at model initialization. Other fields with value `None`
          are ignored.
        """
        excluded_fields: Set[str] = set([
        ])

        _dict = self.model_dump(
            by_alias=True,
            exclude=excluded_fields,
            exclude_none=True,
        )
        # override the default output from pydantic by calling `to_dict()` of each item in ingredients (list)
        _items = []
        if self.ingredients:
            for _item in self.ingredients:
                if _item:
                    _items.append(_item.to_dict())
            _dict['ingredients'] = _items
        # override the default output from pydantic by calling `to_dict()` of nutrition
        if self.nutrition:
            _dict['nutrition'] = self.nutrition.to_dict()
        # override the default output from pydantic by calling `to_dict()` of servings
        if self.servings:
            _dict['servings'] = self.servings.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of GetProductInformation200Response from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "id": obj.get("id"),
            "title": obj.get("title"),
            "breadcrumbs": obj.get("breadcrumbs"),
            "imageType": obj.get("imageType"),
            "badges": obj.get("badges"),
            "importantBadges": obj.get("importantBadges"),
            "ingredientCount": obj.get("ingredientCount"),
            "generatedText": obj.get("generatedText"),
            "ingredientList": obj.get("ingredientList"),
            "ingredients": [GetProductInformation200ResponseIngredientsInner.from_dict(_item) for _item in obj["ingredients"]] if obj.get("ingredients") is not None else None,
            "likes": obj.get("likes"),
            "aisle": obj.get("aisle"),
            "nutrition": SearchGroceryProductsByUPC200ResponseNutrition.from_dict(obj["nutrition"]) if obj.get("nutrition") is not None else None,
            "price": obj.get("price"),
            "servings": SearchGroceryProductsByUPC200ResponseServings.from_dict(obj["servings"]) if obj.get("servings") is not None else None,
            "spoonacularScore": obj.get("spoonacularScore")
        })
        return _obj


