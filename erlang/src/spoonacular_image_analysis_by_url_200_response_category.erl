-module(spoonacular_image_analysis_by_url_200_response_category).

-export([encode/1]).

-export_type([spoonacular_image_analysis_by_url_200_response_category/0]).

-type spoonacular_image_analysis_by_url_200_response_category() ::
    #{ 'name' := binary(),
       'probability' := integer()
     }.

encode(#{ 'name' := Name,
          'probability' := Probability
        }) ->
    #{ 'name' => Name,
       'probability' => Probability
     }.
