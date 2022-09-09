"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.  # noqa: E501

    The version of the OpenAPI document: 1.1
    Contact: mail@spoonacular.com
    Generated by: https://openapi-generator.tech
"""


import sys
import unittest

import openapi_client
from openapi_client.model.get_recipe_information200_response_extended_ingredients_inner import GetRecipeInformation200ResponseExtendedIngredientsInner
from openapi_client.model.get_recipe_information200_response_wine_pairing import GetRecipeInformation200ResponseWinePairing
globals()['GetRecipeInformation200ResponseExtendedIngredientsInner'] = GetRecipeInformation200ResponseExtendedIngredientsInner
globals()['GetRecipeInformation200ResponseWinePairing'] = GetRecipeInformation200ResponseWinePairing
from openapi_client.model.get_recipe_information200_response import GetRecipeInformation200Response


class TestGetRecipeInformation200Response(unittest.TestCase):
    """GetRecipeInformation200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def testGetRecipeInformation200Response(self):
        """Test GetRecipeInformation200Response"""
        # FIXME: construct object with mandatory attributes with example values
        # model = GetRecipeInformation200Response()  # noqa: E501
        pass


if __name__ == '__main__':
    unittest.main()
