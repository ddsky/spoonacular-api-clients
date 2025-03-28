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

from spoonacular.models.recipe_information import RecipeInformation

class TestRecipeInformation(unittest.TestCase):
    """RecipeInformation unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional) -> RecipeInformation:
        """Test RecipeInformation
            include_optional is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # uncomment below to create an instance of `RecipeInformation`
        """
        model = RecipeInformation()
        if include_optional:
            return RecipeInformation(
                id = 56,
                title = '0',
                image = '',
                image_type = '0',
                servings = 1.337,
                ready_in_minutes = 56,
                preparation_minutes = 56,
                cooking_minutes = 56,
                license = '0',
                source_name = '0',
                source_url = '0',
                spoonacular_source_url = '',
                aggregate_likes = 56,
                health_score = 1.337,
                spoonacular_score = 1.337,
                price_per_serving = 1.337,
                analyzed_instructions = [
                    None
                    ],
                cheap = True,
                credits_text = '0',
                cuisines = [
                    ''
                    ],
                dairy_free = True,
                diets = [
                    ''
                    ],
                gaps = '0',
                gluten_free = True,
                instructions = '',
                low_fodmap = True,
                occasions = [
                    ''
                    ],
                sustainable = True,
                vegan = True,
                vegetarian = True,
                very_healthy = True,
                very_popular = True,
                weight_watcher_smart_points = 1.337,
                dish_types = [
                    ''
                    ],
                extended_ingredients = [
                    spoonacular.models.recipe_information_extended_ingredients_inner.RecipeInformation_extendedIngredients_inner(
                        aisle = '0', 
                        amount = 1.337, 
                        consistency = '0', 
                        id = 56, 
                        image = '0', 
                        measures = spoonacular.models.recipe_information_extended_ingredients_inner_measures.RecipeInformation_extendedIngredients_inner_measures(
                            metric = spoonacular.models.recipe_information_extended_ingredients_inner_measures_metric.RecipeInformation_extendedIngredients_inner_measures_metric(
                                amount = 1.337, 
                                unit_long = '', 
                                unit_short = '', ), 
                            us = spoonacular.models.recipe_information_extended_ingredients_inner_measures_metric.RecipeInformation_extendedIngredients_inner_measures_metric(
                                amount = 1.337, 
                                unit_long = '', 
                                unit_short = '', ), ), 
                        meta = [
                            ''
                            ], 
                        name = '0', 
                        original = '0', 
                        original_name = '0', 
                        unit = '', )
                    ],
                summary = '0',
                wine_pairing = spoonacular.models.recipe_information_wine_pairing.RecipeInformation_winePairing(
                    paired_wines = [
                        ''
                        ], 
                    pairing_text = '0', 
                    product_matches = [
                        spoonacular.models.recipe_information_wine_pairing_product_matches_inner.RecipeInformation_winePairing_productMatches_inner(
                            id = 56, 
                            title = '0', 
                            description = '0', 
                            price = '0', 
                            image_url = '0', 
                            average_rating = 1.337, 
                            rating_count = 56, 
                            score = 1.337, 
                            link = '0', )
                        ], ),
                taste = {"sweetness":28.79,"saltiness":26.74,"sourness":6.22,"bitterness":12.38,"savoriness":11.8,"fattiness":100,"spiciness":0}
            )
        else:
            return RecipeInformation(
                id = 56,
                title = '0',
                image = '',
                servings = 1.337,
                ready_in_minutes = 56,
                source_name = '0',
                source_url = '0',
                spoonacular_source_url = '',
                aggregate_likes = 56,
                health_score = 1.337,
                spoonacular_score = 1.337,
                price_per_serving = 1.337,
                analyzed_instructions = [
                    None
                    ],
                cheap = True,
                credits_text = '0',
                cuisines = [
                    ''
                    ],
                dairy_free = True,
                diets = [
                    ''
                    ],
                gaps = '0',
                gluten_free = True,
                instructions = '',
                low_fodmap = True,
                occasions = [
                    ''
                    ],
                sustainable = True,
                vegan = True,
                vegetarian = True,
                very_healthy = True,
                very_popular = True,
                weight_watcher_smart_points = 1.337,
                dish_types = [
                    ''
                    ],
                extended_ingredients = [
                    spoonacular.models.recipe_information_extended_ingredients_inner.RecipeInformation_extendedIngredients_inner(
                        aisle = '0', 
                        amount = 1.337, 
                        consistency = '0', 
                        id = 56, 
                        image = '0', 
                        measures = spoonacular.models.recipe_information_extended_ingredients_inner_measures.RecipeInformation_extendedIngredients_inner_measures(
                            metric = spoonacular.models.recipe_information_extended_ingredients_inner_measures_metric.RecipeInformation_extendedIngredients_inner_measures_metric(
                                amount = 1.337, 
                                unit_long = '', 
                                unit_short = '', ), 
                            us = spoonacular.models.recipe_information_extended_ingredients_inner_measures_metric.RecipeInformation_extendedIngredients_inner_measures_metric(
                                amount = 1.337, 
                                unit_long = '', 
                                unit_short = '', ), ), 
                        meta = [
                            ''
                            ], 
                        name = '0', 
                        original = '0', 
                        original_name = '0', 
                        unit = '', )
                    ],
                summary = '0',
        )
        """

    def testRecipeInformation(self):
        """Test RecipeInformation"""
        # inst_req_only = self.make_instance(include_optional=False)
        # inst_req_and_optional = self.make_instance(include_optional=True)

if __name__ == '__main__':
    unittest.main()
