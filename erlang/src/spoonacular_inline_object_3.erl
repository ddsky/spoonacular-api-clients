-module(spoonacular_inline_object_3).

-export([encode/1]).

-export_type([spoonacular_inline_object_3/0]).

-type spoonacular_inline_object_3() ::
    #{ 'title' := binary(),
       'image' := binary(),
       'ingredients' := binary(),
       'instructions' := binary(),
       'readyInMinutes' := integer(),
       'servings' := integer(),
       'mask' := binary(),
       'backgroundImage' := binary(),
       'author' => binary(),
       'backgroundColor' => binary(),
       'fontColor' => binary(),
       'source' => binary()
     }.

encode(#{ 'title' := Title,
          'image' := Image,
          'ingredients' := Ingredients,
          'instructions' := Instructions,
          'readyInMinutes' := ReadyInMinutes,
          'servings' := Servings,
          'mask' := Mask,
          'backgroundImage' := BackgroundImage,
          'author' := Author,
          'backgroundColor' := BackgroundColor,
          'fontColor' := FontColor,
          'source' := Source
        }) ->
    #{ 'title' => Title,
       'image' => Image,
       'ingredients' => Ingredients,
       'instructions' => Instructions,
       'readyInMinutes' => ReadyInMinutes,
       'servings' => Servings,
       'mask' => Mask,
       'backgroundImage' => BackgroundImage,
       'author' => Author,
       'backgroundColor' => BackgroundColor,
       'fontColor' => FontColor,
       'source' => Source
     }.
