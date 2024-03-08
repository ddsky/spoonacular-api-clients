-module(spoonacular_convert_amounts_200_response).

-export([encode/1]).

-export_type([spoonacular_convert_amounts_200_response/0]).

-type spoonacular_convert_amounts_200_response() ::
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
