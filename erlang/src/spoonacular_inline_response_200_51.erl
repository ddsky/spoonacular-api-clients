-module(spoonacular_inline_response_200_51).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_51/0]).

-type spoonacular_inline_response_200_51() ::
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
