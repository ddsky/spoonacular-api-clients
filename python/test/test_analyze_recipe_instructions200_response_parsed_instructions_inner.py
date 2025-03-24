# coding: utf-8

"""
    spoonacular API

    The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

    The version of the OpenAPI document: 2.0.2
    Contact: mail@spoonacular.com
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


import unittest

from spoonacular.models.analyze_recipe_instructions200_response_parsed_instructions_inner import AnalyzeRecipeInstructions200ResponseParsedInstructionsInner

class TestAnalyzeRecipeInstructions200ResponseParsedInstructionsInner(unittest.TestCase):
    """AnalyzeRecipeInstructions200ResponseParsedInstructionsInner unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> AnalyzeRecipeInstructions200ResponseParsedInstructionsInner:
        """Test AnalyzeRecipeInstructions200ResponseParsedInstructionsInner
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `AnalyzeRecipeInstructions200ResponseParsedInstructionsInner`
        """
        model = AnalyzeRecipeInstructions200ResponseParsedInstructionsInner()
        if include_optional:
            return AnalyzeRecipeInstructions200ResponseParsedInstructionsInner(
                name = '',
                steps = [
                    spoonacular.models.analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner.analyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner(
                        number = 1.337, 
                        step = '0', 
                        ingredients = [
                            spoonacular.models.analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner_ingredients_inner.analyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner_ingredients_inner(
                                id = 56, 
                                name = '0', 
                                localized_name = '0', 
                                image = '0', )
                            ], 
                        equipment = [
                            spoonacular.models.analyze_recipe_instructions_200_response_parsed_instructions_inner_steps_inner_ingredients_inner.analyzeRecipeInstructions_200_response_parsedInstructions_inner_steps_inner_ingredients_inner(
                                id = 56, 
                                name = '0', 
                                localized_name = '0', 
                                image = '0', )
                            ], )
                    ]
            )
        else:
            return AnalyzeRecipeInstructions200ResponseParsedInstructionsInner(
                name = '',
        )
        """

    def testAnalyzeRecipeInstructions200ResponseParsedInstructionsInner(self):
        """Test AnalyzeRecipeInstructions200ResponseParsedInstructionsInner"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
