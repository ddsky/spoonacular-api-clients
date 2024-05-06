-module(spoonacular_search_recipes_200_response_results_inner).

-export([encode/1]).

-export_type([spoonacular_search_recipes_200_response_results_inner/0]).

-type spoonacular_search_recipes_200_response_results_inner() ::
    #{ 'id' := integer(),
       'title' := binary(),
       'image' := binary(),
       'imageType' := binary()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'image' := Image,
          'imageType' := ImageType
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'image' => Image,
       'imageType' => ImageType
     }.
