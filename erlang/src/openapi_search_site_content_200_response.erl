-module(openapi_search_site_content_200_response).

-export([encode/1]).

-export_type([openapi_search_site_content_200_response/0]).

-type openapi_search_site_content_200_response() ::
    #{ 'Articles' := openapi_set:openapi_set(),
       'Grocery_Products' := openapi_set:openapi_set(),
       'Menu_Items' := openapi_set:openapi_set(),
       'Recipes' := openapi_set:openapi_set()
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
