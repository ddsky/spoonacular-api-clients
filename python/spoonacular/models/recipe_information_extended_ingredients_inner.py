# coding: utf-8

"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

    The version of the OpenAPI document: 2.0.2
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
from spoonacular.models.recipe_information_extended_ingredients_inner_measures import RecipeInformationExtendedIngredientsInnerMeasures
from typing import Optional, Set
from typing_extensions import Self

class RecipeInformationExtendedIngredientsInner(BaseModel):
    """
    RecipeInformationExtendedIngredientsInner
    """ # noqa: E501
    aisle: Annotated[str, Field(min_length=1, strict=True)]
    amount: Union[StrictFloat, StrictInt]
    consistency: Annotated[str, Field(min_length=1, strict=True)]
    id: StrictInt
    image: Annotated[str, Field(min_length=1, strict=True)]
    measures: Optional[RecipeInformationExtendedIngredientsInnerMeasures] = None
    meta: Optional[List[StrictStr]] = None
    name: Annotated[str, Field(min_length=1, strict=True)]
    original: Annotated[str, Field(min_length=1, strict=True)]
    original_name: Annotated[str, Field(min_length=1, strict=True)] = Field(alias="originalName")
    unit: Annotated[str, Field(min_length=0, strict=True)]
    __properties: ClassVar[List[str]] = ["aisle", "amount", "consistency", "id", "image", "measures", "meta", "name", "original", "originalName", "unit"]

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
        """Create an instance of RecipeInformationExtendedIngredientsInner from a JSON string"""
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
        # override the default output from pydantic by calling `to_dict()` of measures
        if self.measures:
            _dict['measures'] = self.measures.to_dict()
        return _dict

    @classmethod
    def from_dict(cls, obj: Optional[Dict[str, Any]]) -> Optional[Self]:
        """Create an instance of RecipeInformationExtendedIngredientsInner from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return cls.model_validate(obj)

        _obj = cls.model_validate({
            "aisle": obj.get("aisle"),
            "amount": obj.get("amount"),
            "consistency": obj.get("consistency"),
            "id": obj.get("id"),
            "image": obj.get("image"),
            "measures": RecipeInformationExtendedIngredientsInnerMeasures.from_dict(obj["measures"]) if obj.get("measures") is not None else None,
            "meta": obj.get("meta"),
            "name": obj.get("name"),
            "original": obj.get("original"),
            "originalName": obj.get("originalName"),
            "unit": obj.get("unit")
        })
        return _obj


