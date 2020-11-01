-module(spoonacular_inline_object_3).

-export([encode/1]).

-export_type([spoonacular_inline_object_3/0]).

-type spoonacular_inline_object_3() ::
    #{ 'instructions' := binary(),
       'view' => binary(),
       'defaultCss' => boolean(),
       'showBacklink' => boolean()
     }.

encode(#{ 'instructions' := Instructions,
          'view' := View,
          'defaultCss' := DefaultCss,
          'showBacklink' := ShowBacklink
        }) ->
    #{ 'instructions' => Instructions,
       'view' => View,
       'defaultCss' => DefaultCss,
       'showBacklink' => ShowBacklink
     }.
