//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for MiscApi
void main() {
  // final instance = MiscApi();

  group('tests for MiscApi', () {
    // Detect Food in Text
    //
    // Take any text and find all mentions of food contained within it. This task is also called Named Entity Recognition (NER). In this case, the entities are foods. Either dishes, such as pizza or cheeseburger, or ingredients, such as cucumber or almonds.
    //
    //Future<DetectFoodInText200Response> detectFoodInText(String text) async
    test('test detectFoodInText', () async {
      // TODO
    });

    // Random Food Joke
    //
    // Get a random joke that is related to food. Caution: this is an endpoint for adults!
    //
    //Future<GetARandomFoodJoke200Response> getARandomFoodJoke() async
    test('test getARandomFoodJoke', () async {
      // TODO
    });

    // Conversation Suggests
    //
    // This endpoint returns suggestions for things the user can say or ask the chatbot.
    //
    //Future<GetConversationSuggests200Response> getConversationSuggests(String query, { num number }) async
    test('test getConversationSuggests', () async {
      // TODO
    });

    // Random Food Trivia
    //
    // Returns random food trivia.
    //
    //Future<GetARandomFoodJoke200Response> getRandomFoodTrivia() async
    test('test getRandomFoodTrivia', () async {
      // TODO
    });

    // Image Analysis by URL
    //
    // Analyze a food image. The API tries to classify the image, guess the nutrition, and find a matching recipes.
    //
    //Future<ImageAnalysisByURL200Response> imageAnalysisByURL(String imageUrl) async
    test('test imageAnalysisByURL', () async {
      // TODO
    });

    // Image Classification by URL
    //
    // Classify a food image.
    //
    //Future<ImageClassificationByURL200Response> imageClassificationByURL(String imageUrl) async
    test('test imageClassificationByURL', () async {
      // TODO
    });

    // Search All Food
    //
    // Search all food content with one call. That includes recipes, grocery products, menu items, simple foods (ingredients), and food videos.
    //
    //Future<SearchAllFood200Response> searchAllFood(String query, { int offset, int number }) async
    test('test searchAllFood', () async {
      // TODO
    });

    // Search Custom Foods
    //
    // Search custom foods in a user's account.
    //
    //Future<SearchCustomFoods200Response> searchCustomFoods(String query, String username, String hash, { int offset, int number }) async
    test('test searchCustomFoods', () async {
      // TODO
    });

    // Search Food Videos
    //
    // Find recipe and other food related videos.
    //
    //Future<SearchFoodVideos200Response> searchFoodVideos(String query, { String type, String cuisine, String diet, String includeIngredients, String excludeIngredients, num minLength, num maxLength, int offset, int number }) async
    test('test searchFoodVideos', () async {
      // TODO
    });

    // Search Site Content
    //
    // Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggestions on spoonacular.com. This is a suggest API so you can send partial strings as queries.
    //
    //Future<SearchSiteContent200Response> searchSiteContent(String query) async
    test('test searchSiteContent', () async {
      // TODO
    });

    // Talk to Chatbot
    //
    // This endpoint can be used to have a conversation about food with the spoonacular chatbot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
    //
    //Future<TalkToChatbot200Response> talkToChatbot(String text, { String contextId }) async
    test('test talkToChatbot', () async {
      // TODO
    });

  });
}
