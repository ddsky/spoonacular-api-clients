-module(spoonacular_inline_response_200_52).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_52/0]).

-type spoonacular_inline_response_200_52() ::
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
