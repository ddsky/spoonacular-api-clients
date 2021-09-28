-module(spoonacular_inline_response_200_19).

-export([encode/1]).

-export_type([spoonacular_inline_response_200_19/0]).

-type spoonacular_inline_response_200_19() ::
    #{ 'sourceAmount' := integer(),
       'sourceUnit' := binary(),
       'targetAmount' := integer(),
       'targetUnit' := binary(),
       'answer' := binary()
     }.

encode(#{ 'sourceAmount' := SourceAmount,
          'sourceUnit' := SourceUnit,
          'targetAmount' := TargetAmount,
          'targetUnit' := TargetUnit,
          'answer' := Answer
        }) ->
    #{ 'sourceAmount' => SourceAmount,
       'sourceUnit' => SourceUnit,
       'targetAmount' => TargetAmount,
       'targetUnit' => TargetUnit,
       'answer' => Answer
     }.
