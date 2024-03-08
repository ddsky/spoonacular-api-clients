-module(spoonacular_talk_to_chatbot_200_response).

-export([encode/1]).

-export_type([spoonacular_talk_to_chatbot_200_response/0]).

-type spoonacular_talk_to_chatbot_200_response() ::
    #{ 'answerText' := binary(),
       'media' := list()
     }.

encode(#{ 'answerText' := AnswerText,
          'media' := Media
        }) ->
    #{ 'answerText' => AnswerText,
       'media' => Media
     }.
