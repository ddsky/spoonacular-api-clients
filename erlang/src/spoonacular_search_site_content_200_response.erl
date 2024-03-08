-module(spoonacular_search_site_content_200_response).

-export([encode/1]).

-export_type([spoonacular_search_site_content_200_response/0]).

-type spoonacular_search_site_content_200_response() ::
    #{ 'Articles' := spoonacular_set:spoonacular_set(),
       'Grocery_Products' := spoonacular_set:spoonacular_set(),
       'Menu_Items' := spoonacular_set:spoonacular_set(),
       'Recipes' := spoonacular_set:spoonacular_set()
     }.

encode(#{ 'Articles' := Articles,
          'Grocery_Products' := GroceryProducts,
          'Menu_Items' := MenuItems,
          'Recipes' := Recipes
        }) ->
    #{ 'Articles' => Articles,
       'Grocery Products' => GroceryProducts,
       'Menu Items' => MenuItems,
       'Recipes' => Recipes
     }.
