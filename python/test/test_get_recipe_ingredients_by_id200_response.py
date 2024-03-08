# coding: utf-8

"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

    The version of the OpenAPI document: 1.1
    Contact: mail@spoonacular.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from spoonacular.models.get_recipe_ingredients_by_id200_response import GetRecipeIngredientsByID200Response

class TestGetRecipeIngredientsByID200Response(unittest.TestCase):
    """GetRecipeIngredientsByID200Response unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> GetRecipeIngredientsByID200Response:
        """Test GetRecipeIngredientsByID200Response
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `GetRecipeIngredientsByID200Response`
        """
        model = GetRecipeIngredientsByID200Response()
        if include_optional:
            return GetRecipeIngredientsByID200Response(
                ingredients = [
                    spoonacular.models.get_recipe_ingredients_by_id_200_response_ingredients_inner.getRecipeIngredientsByID_200_response_ingredients_inner(
                        amount = spoonacular.models.get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount.getRecipePriceBreakdownByID_200_response_ingredients_inner_amount(
                            metric = spoonacular.models.get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric.getRecipePriceBreakdownByID_200_response_ingredients_inner_amount_metric(
                                unit = '', 
                                value = 1.337, ), 
                            us = spoonacular.models.get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric.getRecipePriceBreakdownByID_200_response_ingredients_inner_amount_metric(
                                unit = '', 
                                value = 1.337, ), ), 
                        image = '0', 
                        name = '0', )
                    ]
            )
        else:
            return GetRecipeIngredientsByID200Response(
                ingredients = [
                    spoonacular.models.get_recipe_ingredients_by_id_200_response_ingredients_inner.getRecipeIngredientsByID_200_response_ingredients_inner(
                        amount = spoonacular.models.get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount.getRecipePriceBreakdownByID_200_response_ingredients_inner_amount(
                            metric = spoonacular.models.get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric.getRecipePriceBreakdownByID_200_response_ingredients_inner_amount_metric(
                                unit = '', 
                                value = 1.337, ), 
                            us = spoonacular.models.get_recipe_price_breakdown_by_id_200_response_ingredients_inner_amount_metric.getRecipePriceBreakdownByID_200_response_ingredients_inner_amount_metric(
                                unit = '', 
                                value = 1.337, ), ), 
                        image = '0', 
                        name = '0', )
                    ],
        )
        """

    def testGetRecipeIngredientsByID200Response(self):
        """Test GetRecipeIngredientsByID200Response"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
