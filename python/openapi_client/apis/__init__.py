
# flake8: noqa

# Import all APIs into this package.
# If you have many APIs here with many many models used in each API this may
# raise a `RecursionError`.
# In order to avoid this, import only the API that you directly need like:
#
#   from openapi_client.api.default_api import DefaultApi
#
# or import this package, but before doing it, use:
#
#   import sys
#   sys.setrecursionlimit(n)

# Import APIs into API package:
from com.spoonacular.default_api import DefaultApi
from com.spoonacular.ingredients_api import IngredientsApi
from com.spoonacular.meal_planning_api import MealPlanningApi
from com.spoonacular.menu_items_api import MenuItemsApi
from com.spoonacular.misc_api import MiscApi
from com.spoonacular.products_api import ProductsApi
from com.spoonacular.recipes_api import RecipesApi
from com.spoonacular.wine_api import WineApi
