-module(spoonacular_talk_to_chatbot_200_response_media_inner).

-export([encode/1]).

-export_type([spoonacular_talk_to_chatbot_200_response_media_inner/0]).

-type spoonacular_talk_to_chatbot_200_response_media_inner() ::
    #{ 'title' => binary(),
       'image' => binary(),
       'link' => binary()
     }.

encode(#{ 'title' := Title,
          'image' := Image,
          'link' := Link
        }) ->
    #{ 'title' => Title,
       'image' => Image,
       'link' => Link
     }.
