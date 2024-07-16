-module(spoonacular_search_site_content_200_response).

-export([encode/1]).

-export_type([spoonacular_search_site_content_200_response/0]).

-type spoonacular_search_site_content_200_response() ::
    #{ 'Articles' := list(),
       'Grocery_Products' := list(),
       'Menu_Items' := list(),
       'Recipes' := list()
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
