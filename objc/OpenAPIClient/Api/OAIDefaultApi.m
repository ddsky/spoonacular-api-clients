#import "OAIDefaultApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIInlineObject8.h"


@interface OAIDefaultApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDefaultApi

NSString* kOAIDefaultApiErrorDomain = @"OAIDefaultApiErrorDomain";
NSInteger kOAIDefaultApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Analyze a Recipe Search Query
/// Parse a recipe search query to find out its intention.
///  @param q The recipe search query. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) analyzeARecipeSearchQueryWithQ: (NSString*) q
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'q' is set
    if (q == nil) {
        NSParameterAssert(q);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"q"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/queries/analyze"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Analyze Recipe Instructions
/// Extract ingredients and equipment from the recipe instruction steps.
///  @param instructions The instructions text. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) analyzeRecipeInstructionsWithInstructions: (NSString*) instructions
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'instructions' is set
    if (instructions == nil) {
        NSParameterAssert(instructions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instructions"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/analyzeInstructions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (instructions) {
        formParams[@"instructions"] = instructions;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Autocomplete Ingredient Search
/// Autocomplete a search for an ingredient.
///  @param query The query - a partial or full ingredient name. 
///
///  @param number The number of results to return (between 1 and 100). (optional)
///
///  @param metaInformation Whether to return more meta information about the ingredients. (optional)
///
///  @param intolerances A comma-separated list of intolerances. All found ingredients must not cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) autocompleteIngredientSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    metaInformation: (NSNumber*) metaInformation
    intolerances: (NSNumber*) intolerances
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/ingredients/autocomplete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (metaInformation != nil) {
        queryParams[@"metaInformation"] = [metaInformation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (intolerances != nil) {
        queryParams[@"intolerances"] = [intolerances isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Autocomplete Menu Item Search
/// Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.
///  @param query The (partial) search query. 
///
///  @param number The number of results to return (between 1 and 25). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) autocompleteMenuItemSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/menuItems/suggest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Autocomplete Product Search
/// Generate suggestions for grocery products based on a (partial) query. The matches will be found by looking in the title only.
///  @param query The (partial) search query. 
///
///  @param number The number of results to return (between 1 and 25). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) autocompleteProductSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/suggest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Autocomplete Recipe Search
/// Autocomplete a partial input to possible recipe names.
///  @param query The query to be autocompleted. 
///
///  @param number The number of results to return (between 1 and 25). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) autocompleteRecipeSearchWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/autocomplete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Classify Cuisine
/// Classify the recipe's cuisine.
///  @param title The title of the recipe. 
///
///  @param ingredientList The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) classifyCuisineWithTitle: (NSString*) title
    ingredientList: (NSString*) ingredientList
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ingredientList' is set
    if (ingredientList == nil) {
        NSParameterAssert(ingredientList);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientList"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/cuisine"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (title) {
        formParams[@"title"] = title;
    }
    if (ingredientList) {
        formParams[@"ingredientList"] = ingredientList;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Classify Grocery Product
/// Given a grocery product title, this endpoint allows you to detect what basic ingredient it is.
///  @param inlineObject8  
///
///  @param locale The locale of the returned category, supported is en_US and en_GB. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) classifyGroceryProductWithInlineObject8: (OAIInlineObject8*) inlineObject8
    locale: (NSString*) locale
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'inlineObject8' is set
    if (inlineObject8 == nil) {
        NSParameterAssert(inlineObject8);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inlineObject8"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/classify"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locale != nil) {
        queryParams[@"locale"] = locale;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = inlineObject8;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Classify Grocery Product Bulk
/// Given a set of product jsons, get back classified products.
///  @param body  
///
///  @param locale The locale of the returned category, supported is en_US and en_GB. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) classifyGroceryProductBulkWithBody: (NSObject*) body
    locale: (NSString*) locale
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/classifyBatch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locale != nil) {
        queryParams[@"locale"] = locale;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Convert Amounts
/// Convert amounts like \"2 cups of flour to grams\".
///  @param ingredientName The ingredient which you want to convert. 
///
///  @param sourceAmount The amount from which you want to convert, e.g. the 2.5 in \"2.5 cups of flour to grams\". 
///
///  @param sourceUnit The unit from which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" 
///
///  @param targetUnit The unit to which you want to convert, e.g. the grams in \"2.5 cups of flour to grams\". You can also use \"piece\", e.g. \"3.4 oz tomatoes to piece\" 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) convertAmountsWithIngredientName: (NSString*) ingredientName
    sourceAmount: (NSNumber*) sourceAmount
    sourceUnit: (NSString*) sourceUnit
    targetUnit: (NSString*) targetUnit
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'ingredientName' is set
    if (ingredientName == nil) {
        NSParameterAssert(ingredientName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientName"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sourceAmount' is set
    if (sourceAmount == nil) {
        NSParameterAssert(sourceAmount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sourceAmount"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sourceUnit' is set
    if (sourceUnit == nil) {
        NSParameterAssert(sourceUnit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sourceUnit"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'targetUnit' is set
    if (targetUnit == nil) {
        NSParameterAssert(targetUnit);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"targetUnit"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/convert"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ingredientName != nil) {
        queryParams[@"ingredientName"] = ingredientName;
    }
    if (sourceAmount != nil) {
        queryParams[@"sourceAmount"] = sourceAmount;
    }
    if (sourceUnit != nil) {
        queryParams[@"sourceUnit"] = sourceUnit;
    }
    if (targetUnit != nil) {
        queryParams[@"targetUnit"] = targetUnit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Create Recipe Card
/// Create Recipe Card.
///  @param title The title of the recipe. 
///
///  @param image The binary image of the recipe as jpg. 
///
///  @param ingredients The ingredient list of the recipe, one ingredient per line (separate lines with \\\\n). 
///
///  @param instructions The instructions to make the recipe. One step per line (separate lines with \\\\n). 
///
///  @param readyInMinutes The number of minutes it takes to get the recipe on the table. 
///
///  @param servings The number of servings that you can make from the ingredients. 
///
///  @param mask The mask to put over the recipe image (\\\"ellipseMask\\\", \\\"diamondMask\\\", \\\"diamondMask\\\", \\\"starMask\\\", \\\"heartMask\\\", \\\"potMask\\\", \\\"fishMask\\\"). 
///
///  @param backgroundImage The background image (\\\"none\\\",\\\"background1\\\", or \\\"background2\\\"). 
///
///  @param author The author of the recipe. (optional)
///
///  @param backgroundColor The background color on the recipe card as a hex-string. (optional)
///
///  @param fontColor The font color on the recipe card as a hex-string. (optional)
///
///  @param source The source of the recipe. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) createRecipeCardWithTitle: (NSString*) title
    image: (NSURL*) image
    ingredients: (NSString*) ingredients
    instructions: (NSString*) instructions
    readyInMinutes: (NSNumber*) readyInMinutes
    servings: (NSNumber*) servings
    mask: (NSString*) mask
    backgroundImage: (NSString*) backgroundImage
    author: (NSString*) author
    backgroundColor: (NSString*) backgroundColor
    fontColor: (NSString*) fontColor
    source: (NSString*) source
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'image' is set
    if (image == nil) {
        NSParameterAssert(image);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"image"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ingredients' is set
    if (ingredients == nil) {
        NSParameterAssert(ingredients);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredients"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'instructions' is set
    if (instructions == nil) {
        NSParameterAssert(instructions);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"instructions"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'readyInMinutes' is set
    if (readyInMinutes == nil) {
        NSParameterAssert(readyInMinutes);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"readyInMinutes"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'servings' is set
    if (servings == nil) {
        NSParameterAssert(servings);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"servings"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mask' is set
    if (mask == nil) {
        NSParameterAssert(mask);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mask"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'backgroundImage' is set
    if (backgroundImage == nil) {
        NSParameterAssert(backgroundImage);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"backgroundImage"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizeRecipe"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (title) {
        formParams[@"title"] = title;
    }
    localVarFiles[@"image"] = image;
    if (ingredients) {
        formParams[@"ingredients"] = ingredients;
    }
    if (instructions) {
        formParams[@"instructions"] = instructions;
    }
    if (readyInMinutes) {
        formParams[@"readyInMinutes"] = readyInMinutes;
    }
    if (servings) {
        formParams[@"servings"] = servings;
    }
    if (mask) {
        formParams[@"mask"] = mask;
    }
    if (backgroundImage) {
        formParams[@"backgroundImage"] = backgroundImage;
    }
    if (author) {
        formParams[@"author"] = author;
    }
    if (backgroundColor) {
        formParams[@"backgroundColor"] = backgroundColor;
    }
    if (fontColor) {
        formParams[@"fontColor"] = fontColor;
    }
    if (source) {
        formParams[@"source"] = source;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Detect Food in Text
/// Detect ingredients and dishes in texts. This task is also called Named Entity Recognition (NER). In our case the entities are foods. Either dishes, such as pizza and cheeseburger or ingredients, such as cucumber and almonds.
///  @param text The text in which food items such as dish names and ingredients should be detected in. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) detectFoodInTextWithText: (NSString*) text
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'text' is set
    if (text == nil) {
        NSParameterAssert(text);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"text"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/detect"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (text) {
        formParams[@"text"] = text;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Extract Recipe from Website
/// Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used.
///  @param url The URL of the recipe page. 
///
///  @param forceExtraction If true, the extraction will be triggered no matter whether we know the recipe already. Use that only if information is missing as this operation is slower. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) extractRecipeFromWebsiteWithUrl: (NSString*) url
    forceExtraction: (NSNumber*) forceExtraction
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'url' is set
    if (url == nil) {
        NSParameterAssert(url);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"url"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/extract"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (url != nil) {
        queryParams[@"url"] = url;
    }
    if (forceExtraction != nil) {
        queryParams[@"forceExtraction"] = [forceExtraction isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Generate Meal Plan
/// Generate a meal plan with three meals per day (breakfast, lunch, and dinner).
///  @param timeFrame Either for one \"day\" or an entire \"week\". (optional)
///
///  @param targetCalories What is the caloric target for one day? The meal plan generator will try to get as close as possible to that goal. (optional)
///
///  @param diet Enter a diet that the meal plan has to adhere to. See a full list of supported diets. (optional)
///
///  @param exclude A comma-separated list of allergens or ingredients that must be excluded. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) generateMealPlanWithTimeFrame: (NSString*) timeFrame
    targetCalories: (NSNumber*) targetCalories
    diet: (NSString*) diet
    exclude: (NSString*) exclude
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/mealplans/generate"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (timeFrame != nil) {
        queryParams[@"timeFrame"] = timeFrame;
    }
    if (targetCalories != nil) {
        queryParams[@"targetCalories"] = targetCalories;
    }
    if (diet != nil) {
        queryParams[@"diet"] = diet;
    }
    if (exclude != nil) {
        queryParams[@"exclude"] = exclude;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get a Random Food Joke
/// Get a random joke that includes or is about food.
///  @returns NSObject*
///
-(NSURLSessionTask*) getARandomFoodJokeWithCompletionHandler: 
    (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/jokes/random"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Analyzed Recipe Instructions
/// Get an analyzed breakdown of a recipe's instructions. Each step is enriched with the ingredients and the equipment that is used.
///  @param _id The recipe id. 
///
///  @param stepBreakdown Whether to break down the recipe steps even more. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getAnalyzedRecipeInstructionsWithId: (NSNumber*) _id
    stepBreakdown: (NSNumber*) stepBreakdown
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/analyzedInstructions"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (stepBreakdown != nil) {
        queryParams[@"stepBreakdown"] = [stepBreakdown isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Comparable Products
/// Find comparable products to the given one.
///  @param upc The UPC of the product for that you want to find comparable products. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getComparableProductsWithUpc: (NSNumber*) upc
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'upc' is set
    if (upc == nil) {
        NSParameterAssert(upc);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"upc"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/upc/{upc}/comparable"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (upc != nil) {
        pathParams[@"upc"] = upc;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Conversation Suggests
/// This endpoint returns suggestions for things the user can say or ask the chat bot.
///  @param query A (partial) query from the user. The endpoint will return if it matches topics it can talk about. 
///
///  @param number The number of suggestions to return (between 1 and 25). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getConversationSuggestsWithQuery: (NSString*) query
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/converse/suggest"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Dish Pairing for Wine
/// Get a dish that goes well with a given wine.
///  @param wine The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getDishPairingForWineWithWine: (NSString*) wine
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'wine' is set
    if (wine == nil) {
        NSParameterAssert(wine);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wine"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/wine/dishes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (wine != nil) {
        queryParams[@"wine"] = wine;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Food Information
/// Get information about a certain food (ingredient).
///  @param _id The id of the food / ingredient. 
///
///  @param amount The amount of that food. (optional)
///
///  @param unit The unit for the given amount. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getFoodInformationWithId: (NSNumber*) _id
    amount: (NSNumber*) amount
    unit: (NSString*) unit
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/ingredients/{id}/information"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (amount != nil) {
        queryParams[@"amount"] = amount;
    }
    if (unit != nil) {
        queryParams[@"unit"] = unit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Ingredient Substitutes
/// Search for substitutes for a given ingredient.
///  @param ingredientName The name of the ingredient you want to replace. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getIngredientSubstitutesWithIngredientName: (NSString*) ingredientName
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'ingredientName' is set
    if (ingredientName == nil) {
        NSParameterAssert(ingredientName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientName"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/ingredients/substitutes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ingredientName != nil) {
        queryParams[@"ingredientName"] = ingredientName;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Ingredient Substitutes by ID
/// Search for substitutes for a given ingredient.
///  @param _id The id of the ingredient you want substitutes for. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getIngredientSubstitutesByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/ingredients/{id}/substitutes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Menu Item Information
/// Get information about a certain menu item.
///  @param _id The menu item id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getMenuItemInformationWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/menuItems/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Product Information
/// Get information about a packaged food product.
///  @param _id The id of the packaged food product. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getProductInformationWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Random Food Trivia
/// Returns random food trivia.
///  @returns NSObject*
///
-(NSURLSessionTask*) getRandomFoodTriviaWithCompletionHandler: 
    (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/trivia/random"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Random Recipes
/// Find random (popular) recipes.
///  @param limitLicense Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
///
///  @param tags The tags (can be diets, meal types, cuisines, or intolerances) that the recipe must adhere to. (optional)
///
///  @param number The number of random recipes to be returned (between 1 and 100). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getRandomRecipesWithLimitLicense: (NSNumber*) limitLicense
    tags: (NSString*) tags
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/random"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Recipe Equipment by ID
/// Get a recipe's equipment list.
///  @param _id The recipe id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getRecipeEquipmentByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/equipmentWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Recipe Information
/// Get information about a recipe.
///  @param _id The id of the recipe. 
///
///  @param includeNutrition Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getRecipeInformationWithId: (NSNumber*) _id
    includeNutrition: (NSNumber*) includeNutrition
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/information"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (includeNutrition != nil) {
        queryParams[@"includeNutrition"] = [includeNutrition isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Recipe Information Bulk
/// Get information about multiple recipes at once. That is equivalent of calling the Get Recipe Information endpoint multiple times but is faster.
///  @param ids A comma-separated list of recipe ids. 
///
///  @param includeNutrition Include nutrition data to the recipe information. Nutrition data is per serving. If you want the nutrition data for the entire recipe, just multiply by the number of servings. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getRecipeInformationBulkWithIds: (NSString*) ids
    includeNutrition: (NSNumber*) includeNutrition
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'ids' is set
    if (ids == nil) {
        NSParameterAssert(ids);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ids"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/informationBulk"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ids != nil) {
        queryParams[@"ids"] = ids;
    }
    if (includeNutrition != nil) {
        queryParams[@"includeNutrition"] = [includeNutrition isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Recipe Ingredients by ID
/// Get a recipe's ingredient list.
///  @param _id The recipe id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getRecipeIngredientsByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/ingredientWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Recipe Nutrition by ID
/// Get a recipe's nutrition widget data.
///  @param _id The recipe id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getRecipeNutritionByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/nutritionWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Recipe Price Breakdown by ID
/// Get a recipe's price breakdown data.
///  @param _id The recipe id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getRecipePriceBreakdownByIDWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/priceBreakdownWidget.json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Similar Recipes
/// Find recipes which are similar to the given one.
///  @param _id The id of the source recipe to which similar recipes should be found. 
///
///  @param number The number of random recipes to be returned (between 1 and 100). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getSimilarRecipesWithId: (NSNumber*) _id
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/similar"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Wine Description
/// Get the description of a certain wine, e.g. \"malbec\", \"riesling\", or \"merlot\".
///  @param wine The name of the wine that should be paired, e.g. \"merlot\", \"riesling\", or \"malbec\". 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getWineDescriptionWithWine: (NSString*) wine
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'wine' is set
    if (wine == nil) {
        NSParameterAssert(wine);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wine"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/wine/description"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (wine != nil) {
        queryParams[@"wine"] = wine;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Wine Pairing
/// Find a wine that goes well with a food. Food can be a dish name (\"steak\"), an ingredient name (\"salmon\"), or a cuisine (\"italian\").
///  @param food The food to get a pairing for. This can be a dish (\"steak\"), an ingredient (\"salmon\"), or a cuisine (\"italian\"). 
///
///  @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getWinePairingWithFood: (NSString*) food
    maxPrice: (NSNumber*) maxPrice
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'food' is set
    if (food == nil) {
        NSParameterAssert(food);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"food"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/wine/pairing"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (food != nil) {
        queryParams[@"food"] = food;
    }
    if (maxPrice != nil) {
        queryParams[@"maxPrice"] = maxPrice;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Get Wine Recommendation
/// Get a specific wine recommendation (concrete product) for a given wine, e.g. \"merlot\".
///  @param wine The name of the wine to get a specific product recommendation for. 
///
///  @param maxPrice The maximum price for the specific wine recommendation in USD. (optional)
///
///  @param minRating The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
///
///  @param number The number of wine recommendations expected (between 1 and 100). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getWineRecommendationWithWine: (NSString*) wine
    maxPrice: (NSNumber*) maxPrice
    minRating: (NSNumber*) minRating
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'wine' is set
    if (wine == nil) {
        NSParameterAssert(wine);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"wine"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/wine/recommendation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (wine != nil) {
        queryParams[@"wine"] = wine;
    }
    if (maxPrice != nil) {
        queryParams[@"maxPrice"] = maxPrice;
    }
    if (minRating != nil) {
        queryParams[@"minRating"] = minRating;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Guess Nutrition by Dish Name
/// Guess the macro nutrients of a dish given its title.
///  @param title The title of the dish. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) guessNutritionByDishNameWithTitle: (NSString*) title
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'title' is set
    if (title == nil) {
        NSParameterAssert(title);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"title"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/guessNutrition"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (title != nil) {
        queryParams[@"title"] = title;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Map Ingredients to Grocery Products
/// Map a set of ingredients to products you can buy in the grocery store.
///  @param body  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) mapIngredientsToGroceryProductsWithBody: (NSObject*) body
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/ingredients/map"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Parse Ingredients
/// Extract an ingredient from plain text.
///  @param ingredientList The ingredient list of the recipe, one ingredient per line. 
///
///  @param servings The number of servings that you can make from the ingredients. 
///
///  @param includeNutrition Whether nutrition data should be added to correctly parsed ingredients. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) parseIngredientsWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    includeNutrition: (NSNumber*) includeNutrition
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'ingredientList' is set
    if (ingredientList == nil) {
        NSParameterAssert(ingredientList);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientList"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'servings' is set
    if (servings == nil) {
        NSParameterAssert(servings);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"servings"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/parseIngredients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (ingredientList) {
        formParams[@"ingredientList"] = ingredientList;
    }
    if (servings) {
        formParams[@"servings"] = servings;
    }
    if (includeNutrition) {
        formParams[@"includeNutrition"] = includeNutrition;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Quick Answer
/// Answer a nutrition related natural language question.
///  @param q The nutrition-related question. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) quickAnswerWithQ: (NSString*) q
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'q' is set
    if (q == nil) {
        NSParameterAssert(q);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"q"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/quickAnswer"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (q != nil) {
        queryParams[@"q"] = q;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Food Videos
/// Find recipe and other food related videos.
///  @param query The search query. 
///
///  @param type The type of the recipes. See a full list of supported meal types. (optional)
///
///  @param cuisine The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. (optional)
///
///  @param diet The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
///
///  @param includeIngredients A comma-separated list of ingredients that should/must be contained in the recipe. (optional)
///
///  @param excludeIngredients A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
///
///  @param minLength Minimum video length in seconds. (optional)
///
///  @param maxLength Maximum video length in seconds. (optional)
///
///  @param offset The number of results to skip (between 0 and 900). (optional)
///
///  @param number The number of results to return (between 1 and 100). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchFoodVideosWithQuery: (NSString*) query
    type: (NSString*) type
    cuisine: (NSString*) cuisine
    diet: (NSString*) diet
    includeIngredients: (NSString*) includeIngredients
    excludeIngredients: (NSString*) excludeIngredients
    minLength: (NSNumber*) minLength
    maxLength: (NSNumber*) maxLength
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/videos/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (cuisine != nil) {
        queryParams[@"cuisine"] = cuisine;
    }
    if (diet != nil) {
        queryParams[@"diet"] = diet;
    }
    if (includeIngredients != nil) {
        queryParams[@"includeIngredients"] = includeIngredients;
    }
    if (excludeIngredients != nil) {
        queryParams[@"excludeIngredients"] = excludeIngredients;
    }
    if (minLength != nil) {
        queryParams[@"minLength"] = minLength;
    }
    if (maxLength != nil) {
        queryParams[@"maxLength"] = maxLength;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Grocery Products
/// Search packaged food products such as frozen pizza and snickers bars.
///  @param query The search query. 
///
///  @param minCalories The minimum number of calories the product must have. (optional)
///
///  @param maxCalories The maximum number of calories the product can have. (optional)
///
///  @param minCarbs The minimum number of carbohydrates in grams the product must have. (optional)
///
///  @param maxCarbs The maximum number of carbohydrates in grams the product can have. (optional)
///
///  @param minProtein The minimum number of protein in grams the product must have. (optional)
///
///  @param maxProtein The maximum number of protein in grams the product can have. (optional)
///
///  @param minFat The minimum number of fat in grams the product must have. (optional)
///
///  @param maxFat The maximum number of fat in grams the product can have. (optional)
///
///  @param offset The offset number for paging (between 0 and 990). (optional)
///
///  @param number The number of expected results (between 1 and 100). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchGroceryProductsWithQuery: (NSString*) query
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (minCalories != nil) {
        queryParams[@"minCalories"] = minCalories;
    }
    if (maxCalories != nil) {
        queryParams[@"maxCalories"] = maxCalories;
    }
    if (minCarbs != nil) {
        queryParams[@"minCarbs"] = minCarbs;
    }
    if (maxCarbs != nil) {
        queryParams[@"maxCarbs"] = maxCarbs;
    }
    if (minProtein != nil) {
        queryParams[@"minProtein"] = minProtein;
    }
    if (maxProtein != nil) {
        queryParams[@"maxProtein"] = maxProtein;
    }
    if (minFat != nil) {
        queryParams[@"minFat"] = minFat;
    }
    if (maxFat != nil) {
        queryParams[@"maxFat"] = maxFat;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Grocery Products by UPC
/// Get information about a food product given its UPC.
///  @param upc The product's UPC. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchGroceryProductsByUPCWithUpc: (NSNumber*) upc
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'upc' is set
    if (upc == nil) {
        NSParameterAssert(upc);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"upc"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/upc/{upc}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (upc != nil) {
        pathParams[@"upc"] = upc;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Menu Items
/// Search over 115,000 menu items from over 800 fast food and chain restaurants such as McDonalds Big Mac or Starbucks Mocha.
///  @param query The search query. 
///
///  @param minCalories The minimum number of calories the menu item must have. (optional)
///
///  @param maxCalories The maximum number of calories the menu item can have. (optional)
///
///  @param minCarbs The minimum number of carbohydrates in grams the menu item must have. (optional)
///
///  @param maxCarbs The maximum number of carbohydrates in grams the menu item can have. (optional)
///
///  @param minProtein The minimum number of protein in grams the menu item must have. (optional)
///
///  @param maxProtein The maximum number of protein in grams the menu item can have. (optional)
///
///  @param minFat The minimum number of fat in grams the menu item must have. (optional)
///
///  @param maxFat The maximum number of fat in grams the menu item can have. (optional)
///
///  @param offset The offset number for paging (between 0 and 990). (optional)
///
///  @param number The number of expected results (between 1 and 10). (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchMenuItemsWithQuery: (NSString*) query
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/menuItems/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (minCalories != nil) {
        queryParams[@"minCalories"] = minCalories;
    }
    if (maxCalories != nil) {
        queryParams[@"maxCalories"] = maxCalories;
    }
    if (minCarbs != nil) {
        queryParams[@"minCarbs"] = minCarbs;
    }
    if (maxCarbs != nil) {
        queryParams[@"maxCarbs"] = maxCarbs;
    }
    if (minProtein != nil) {
        queryParams[@"minProtein"] = minProtein;
    }
    if (maxProtein != nil) {
        queryParams[@"maxProtein"] = maxProtein;
    }
    if (minFat != nil) {
        queryParams[@"minFat"] = minFat;
    }
    if (maxFat != nil) {
        queryParams[@"maxFat"] = maxFat;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Recipes
/// Our recipe API includes over 360,000 recipes as well as an open source recipe database. Consider using the \"Search Recipes Complex\" endpoint for much more flexibility.
///  @param query The (natural language) recipe search query. 
///
///  @param cuisine The cuisine(s) of the recipes. One or more comma separated. See a full list of supported cuisines. (optional)
///
///  @param diet The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
///
///  @param excludeIngredients An comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
///
///  @param intolerances A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)
///
///  @param offset The number of results to skip (between 0 and 900). (optional)
///
///  @param number The number of results to return (between 1 and 100). (optional)
///
///  @param limitLicense Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
///
///  @param instructionsRequired Whether the recipes must have instructions. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchRecipesWithQuery: (NSString*) query
    cuisine: (NSString*) cuisine
    diet: (NSString*) diet
    excludeIngredients: (NSString*) excludeIngredients
    intolerances: (NSString*) intolerances
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
    instructionsRequired: (NSNumber*) instructionsRequired
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (cuisine != nil) {
        queryParams[@"cuisine"] = cuisine;
    }
    if (diet != nil) {
        queryParams[@"diet"] = diet;
    }
    if (excludeIngredients != nil) {
        queryParams[@"excludeIngredients"] = excludeIngredients;
    }
    if (intolerances != nil) {
        queryParams[@"intolerances"] = intolerances;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    if (instructionsRequired != nil) {
        queryParams[@"instructionsRequired"] = [instructionsRequired isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Recipes by Ingredients
/// Find recipes that use as many of the given ingredients as possible and have as little as possible missing ingredients. This is a \"what's in your fridge\" API endpoint.
///  @param ingredients A comma-separated list of ingredients that the recipes should contain. 
///
///  @param number The maximal number of recipes to return (between 1 and 100). Defaults to 10. (optional)
///
///  @param limitLicense Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
///
///  @param ranking Whether to maximize used ingredients (1) or minimize missing ingredients (2) first. (optional)
///
///  @param ignorePantry Whether to ignore pantry ingredients such as water, salt, flour etc. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchRecipesByIngredientsWithIngredients: (NSString*) ingredients
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
    ranking: (NSNumber*) ranking
    ignorePantry: (NSNumber*) ignorePantry
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'ingredients' is set
    if (ingredients == nil) {
        NSParameterAssert(ingredients);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredients"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/findByIngredients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (ingredients != nil) {
        queryParams[@"ingredients"] = ingredients;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    if (ranking != nil) {
        queryParams[@"ranking"] = ranking;
    }
    if (ignorePantry != nil) {
        queryParams[@"ignorePantry"] = [ignorePantry isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Recipes by Nutrients
/// Find a set of recipes that adhere to the given nutritional limits. All the returned recipes will have macro nutrients within the calories, protein, fat, and carbohydrate limits.
///  @param minCarbs The minimum number of carbohydrates in grams the recipe must have. (optional)
///
///  @param maxCarbs The maximum number of carbohydrates in grams the recipe can have. (optional)
///
///  @param minProtein The minimum number of protein in grams the recipe must have. (optional)
///
///  @param maxProtein The maximum number of protein in grams the recipe can have. (optional)
///
///  @param minCalories The minimum number of calories the recipe must have. (optional)
///
///  @param maxCalories The maximum number of calories the recipe can have. (optional)
///
///  @param minFat The minimum number of fat in grams the recipe must have. (optional)
///
///  @param maxFat The maximum number of fat in grams the recipe can have. (optional)
///
///  @param minAlcohol The minimum number of alcohol in grams the recipe must have. (optional)
///
///  @param maxAlcohol The maximum number of alcohol in grams the recipe must have. (optional)
///
///  @param minCaffeine The minimum number of milligrams of caffeine the recipe must have. (optional)
///
///  @param maxCaffeine The maximum number of alcohol in grams the recipe must have. (optional)
///
///  @param minCopper The minimum number of copper in milligrams the recipe must have. (optional)
///
///  @param maxCopper The maximum number of copper in milligrams the recipe must have. (optional)
///
///  @param minCalcium The minimum number of calcium in milligrams the recipe must have. (optional)
///
///  @param maxCalcium The maximum number of calcium in milligrams the recipe must have. (optional)
///
///  @param minCholine The minimum number of choline in milligrams the recipe must have. (optional)
///
///  @param maxCholine The maximum number of choline in milligrams the recipe can have. (optional)
///
///  @param minCholesterol The minimum number of cholesterol in milligrams the recipe must have. (optional)
///
///  @param maxCholesterol The maximum number of cholesterol in milligrams the recipe must have. (optional)
///
///  @param minFluoride The minimum number of fluoride in milligrams the recipe must have. (optional)
///
///  @param maxFluoride The maximum number of fluoride in milligrams the recipe can have. (optional)
///
///  @param minSaturatedFat The minimum number of saturated fat in grams the recipe must have. (optional)
///
///  @param maxSaturatedFat The maximum number of saturated fat in grams the recipe must have. (optional)
///
///  @param minVitaminA The minimum number of Vitamin A in IU the recipe must have. (optional)
///
///  @param maxVitaminA The maximum number of Vitamin A in IU the recipe must have. (optional)
///
///  @param minVitaminC The minimum number of Vitamin C milligrams the recipe must have. (optional)
///
///  @param maxVitaminC The maximum number of Vitamin C in milligrams the recipe can have. (optional)
///
///  @param minVitaminD The minimum number of Vitamin D in micrograms the recipe must have. (optional)
///
///  @param maxVitaminD The maximum number of Vitamin D in micrograms the recipe must have. (optional)
///
///  @param minVitaminE The minimum number of Vitamin E in milligrams the recipe must have. (optional)
///
///  @param maxVitaminE The maximum number of Vitamin E in milligrams the recipe must have. (optional)
///
///  @param minVitaminK The minimum number of Vitamin K in micrograms the recipe must have. (optional)
///
///  @param maxVitaminK The maximum number of Vitamin K in micrograms the recipe must have. (optional)
///
///  @param minVitaminB1 The minimum number of Vitamin B1 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB1 The maximum number of Vitamin B1 in milligrams the recipe must have. (optional)
///
///  @param minVitaminB2 The minimum number of Vitamin B2 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB2 The maximum number of Vitamin B2 in milligrams the recipe must have. (optional)
///
///  @param minVitaminB5 The minimum number of Vitamin B5 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB5 The maximum number of Vitamin B5 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB3 The minimum number of Vitamin B3 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB3 The maximum number of Vitamin B3 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB6 The minimum number of Vitamin B6 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB6 The maximum number of Vitamin B6 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB12 The minimum number of Vitamin B12 in micrograms the recipe must have. (optional)
///
///  @param maxVitaminB12 The maximum number of Vitamin B12 in micrograms the recipe must have. (optional)
///
///  @param minFiber The minimum number of fiber in grams the recipe must have. (optional)
///
///  @param maxFiber The maximum number of fiber in grams the recipe must have. (optional)
///
///  @param minFolate The minimum number of folate in grams the recipe must have. (optional)
///
///  @param maxFolate The maximum number of folate in grams the recipe must have. (optional)
///
///  @param minFolicAcid The minimum number of folic acid in grams the recipe must have. (optional)
///
///  @param maxFolicAcid The maximum number of folic acid in grams the recipe must have. (optional)
///
///  @param minIodine The minimum number of Iodine in grams the recipe must have. (optional)
///
///  @param maxIodine The maximum number of iodine in grams the recipe must have. (optional)
///
///  @param minIron The minimum number of iron in milligrams the recipe must have. (optional)
///
///  @param maxIron The maximum number of iron in milligrams the recipe can have. (optional)
///
///  @param minMagnesium The minimum number of magnesium in milligrams the recipe must have. (optional)
///
///  @param maxMagnesium The maximum number of magnesium in milligrams the recipe can have. (optional)
///
///  @param minManganese The minimum number of manganese in milligrams the recipe must have. (optional)
///
///  @param maxManganese The maximum number of manganese in milligrams the recipe can have. (optional)
///
///  @param minPhosphorus The minimum number of phosphorus in milligrams the recipe must have. (optional)
///
///  @param maxPhosphorus The maximum number of phosphorus in milligrams the recipe can have. (optional)
///
///  @param minPotassium The minimum number of potassium in milligrams the recipe must have. (optional)
///
///  @param maxPotassium The maximum number of potassium in milligrams the recipe can have. (optional)
///
///  @param minSelenium The minimum number of selenium in grams the recipe must have. (optional)
///
///  @param maxSelenium The maximum number of selenium in grams the recipe must have. (optional)
///
///  @param minSodium The minimum number of sodium in milligrams the recipe must have. (optional)
///
///  @param maxSodium The maximum number of sodium in milligrams the recipe must have. (optional)
///
///  @param minSugar The minimum number of sugar in grams the recipe must have. (optional)
///
///  @param maxSugar The maximum number of sugar in grams the recipe must have. (optional)
///
///  @param minZinc The minimum number of zinc in milligrams the recipe must have. (optional)
///
///  @param maxZinc The maximum number of zinc in milligrams the recipe can have. (optional)
///
///  @param offset The offset number for paging (between 0 and 990). (optional)
///
///  @param number The number of expected results (between 1 and 100). (optional)
///
///  @param random If true, every request will give you a random set of recipes within the requested limits. (optional)
///
///  @param limitLicense Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchRecipesByNutrientsWithMinCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    minAlcohol: (NSNumber*) minAlcohol
    maxAlcohol: (NSNumber*) maxAlcohol
    minCaffeine: (NSNumber*) minCaffeine
    maxCaffeine: (NSNumber*) maxCaffeine
    minCopper: (NSNumber*) minCopper
    maxCopper: (NSNumber*) maxCopper
    minCalcium: (NSNumber*) minCalcium
    maxCalcium: (NSNumber*) maxCalcium
    minCholine: (NSNumber*) minCholine
    maxCholine: (NSNumber*) maxCholine
    minCholesterol: (NSNumber*) minCholesterol
    maxCholesterol: (NSNumber*) maxCholesterol
    minFluoride: (NSNumber*) minFluoride
    maxFluoride: (NSNumber*) maxFluoride
    minSaturatedFat: (NSNumber*) minSaturatedFat
    maxSaturatedFat: (NSNumber*) maxSaturatedFat
    minVitaminA: (NSNumber*) minVitaminA
    maxVitaminA: (NSNumber*) maxVitaminA
    minVitaminC: (NSNumber*) minVitaminC
    maxVitaminC: (NSNumber*) maxVitaminC
    minVitaminD: (NSNumber*) minVitaminD
    maxVitaminD: (NSNumber*) maxVitaminD
    minVitaminE: (NSNumber*) minVitaminE
    maxVitaminE: (NSNumber*) maxVitaminE
    minVitaminK: (NSNumber*) minVitaminK
    maxVitaminK: (NSNumber*) maxVitaminK
    minVitaminB1: (NSNumber*) minVitaminB1
    maxVitaminB1: (NSNumber*) maxVitaminB1
    minVitaminB2: (NSNumber*) minVitaminB2
    maxVitaminB2: (NSNumber*) maxVitaminB2
    minVitaminB5: (NSNumber*) minVitaminB5
    maxVitaminB5: (NSNumber*) maxVitaminB5
    minVitaminB3: (NSNumber*) minVitaminB3
    maxVitaminB3: (NSNumber*) maxVitaminB3
    minVitaminB6: (NSNumber*) minVitaminB6
    maxVitaminB6: (NSNumber*) maxVitaminB6
    minVitaminB12: (NSNumber*) minVitaminB12
    maxVitaminB12: (NSNumber*) maxVitaminB12
    minFiber: (NSNumber*) minFiber
    maxFiber: (NSNumber*) maxFiber
    minFolate: (NSNumber*) minFolate
    maxFolate: (NSNumber*) maxFolate
    minFolicAcid: (NSNumber*) minFolicAcid
    maxFolicAcid: (NSNumber*) maxFolicAcid
    minIodine: (NSNumber*) minIodine
    maxIodine: (NSNumber*) maxIodine
    minIron: (NSNumber*) minIron
    maxIron: (NSNumber*) maxIron
    minMagnesium: (NSNumber*) minMagnesium
    maxMagnesium: (NSNumber*) maxMagnesium
    minManganese: (NSNumber*) minManganese
    maxManganese: (NSNumber*) maxManganese
    minPhosphorus: (NSNumber*) minPhosphorus
    maxPhosphorus: (NSNumber*) maxPhosphorus
    minPotassium: (NSNumber*) minPotassium
    maxPotassium: (NSNumber*) maxPotassium
    minSelenium: (NSNumber*) minSelenium
    maxSelenium: (NSNumber*) maxSelenium
    minSodium: (NSNumber*) minSodium
    maxSodium: (NSNumber*) maxSodium
    minSugar: (NSNumber*) minSugar
    maxSugar: (NSNumber*) maxSugar
    minZinc: (NSNumber*) minZinc
    maxZinc: (NSNumber*) maxZinc
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    random: (NSNumber*) random
    limitLicense: (NSNumber*) limitLicense
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/findByNutrients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (minCarbs != nil) {
        queryParams[@"minCarbs"] = minCarbs;
    }
    if (maxCarbs != nil) {
        queryParams[@"maxCarbs"] = maxCarbs;
    }
    if (minProtein != nil) {
        queryParams[@"minProtein"] = minProtein;
    }
    if (maxProtein != nil) {
        queryParams[@"maxProtein"] = maxProtein;
    }
    if (minCalories != nil) {
        queryParams[@"minCalories"] = minCalories;
    }
    if (maxCalories != nil) {
        queryParams[@"maxCalories"] = maxCalories;
    }
    if (minFat != nil) {
        queryParams[@"minFat"] = minFat;
    }
    if (maxFat != nil) {
        queryParams[@"maxFat"] = maxFat;
    }
    if (minAlcohol != nil) {
        queryParams[@"minAlcohol"] = minAlcohol;
    }
    if (maxAlcohol != nil) {
        queryParams[@"maxAlcohol"] = maxAlcohol;
    }
    if (minCaffeine != nil) {
        queryParams[@"minCaffeine"] = minCaffeine;
    }
    if (maxCaffeine != nil) {
        queryParams[@"maxCaffeine"] = maxCaffeine;
    }
    if (minCopper != nil) {
        queryParams[@"minCopper"] = minCopper;
    }
    if (maxCopper != nil) {
        queryParams[@"maxCopper"] = maxCopper;
    }
    if (minCalcium != nil) {
        queryParams[@"minCalcium"] = minCalcium;
    }
    if (maxCalcium != nil) {
        queryParams[@"maxCalcium"] = maxCalcium;
    }
    if (minCholine != nil) {
        queryParams[@"minCholine"] = minCholine;
    }
    if (maxCholine != nil) {
        queryParams[@"maxCholine"] = maxCholine;
    }
    if (minCholesterol != nil) {
        queryParams[@"minCholesterol"] = minCholesterol;
    }
    if (maxCholesterol != nil) {
        queryParams[@"maxCholesterol"] = maxCholesterol;
    }
    if (minFluoride != nil) {
        queryParams[@"minFluoride"] = minFluoride;
    }
    if (maxFluoride != nil) {
        queryParams[@"maxFluoride"] = maxFluoride;
    }
    if (minSaturatedFat != nil) {
        queryParams[@"minSaturatedFat"] = minSaturatedFat;
    }
    if (maxSaturatedFat != nil) {
        queryParams[@"maxSaturatedFat"] = maxSaturatedFat;
    }
    if (minVitaminA != nil) {
        queryParams[@"minVitaminA"] = minVitaminA;
    }
    if (maxVitaminA != nil) {
        queryParams[@"maxVitaminA"] = maxVitaminA;
    }
    if (minVitaminC != nil) {
        queryParams[@"minVitaminC"] = minVitaminC;
    }
    if (maxVitaminC != nil) {
        queryParams[@"maxVitaminC"] = maxVitaminC;
    }
    if (minVitaminD != nil) {
        queryParams[@"minVitaminD"] = minVitaminD;
    }
    if (maxVitaminD != nil) {
        queryParams[@"maxVitaminD"] = maxVitaminD;
    }
    if (minVitaminE != nil) {
        queryParams[@"minVitaminE"] = minVitaminE;
    }
    if (maxVitaminE != nil) {
        queryParams[@"maxVitaminE"] = maxVitaminE;
    }
    if (minVitaminK != nil) {
        queryParams[@"minVitaminK"] = minVitaminK;
    }
    if (maxVitaminK != nil) {
        queryParams[@"maxVitaminK"] = maxVitaminK;
    }
    if (minVitaminB1 != nil) {
        queryParams[@"minVitaminB1"] = minVitaminB1;
    }
    if (maxVitaminB1 != nil) {
        queryParams[@"maxVitaminB1"] = maxVitaminB1;
    }
    if (minVitaminB2 != nil) {
        queryParams[@"minVitaminB2"] = minVitaminB2;
    }
    if (maxVitaminB2 != nil) {
        queryParams[@"maxVitaminB2"] = maxVitaminB2;
    }
    if (minVitaminB5 != nil) {
        queryParams[@"minVitaminB5"] = minVitaminB5;
    }
    if (maxVitaminB5 != nil) {
        queryParams[@"maxVitaminB5"] = maxVitaminB5;
    }
    if (minVitaminB3 != nil) {
        queryParams[@"minVitaminB3"] = minVitaminB3;
    }
    if (maxVitaminB3 != nil) {
        queryParams[@"maxVitaminB3"] = maxVitaminB3;
    }
    if (minVitaminB6 != nil) {
        queryParams[@"minVitaminB6"] = minVitaminB6;
    }
    if (maxVitaminB6 != nil) {
        queryParams[@"maxVitaminB6"] = maxVitaminB6;
    }
    if (minVitaminB12 != nil) {
        queryParams[@"minVitaminB12"] = minVitaminB12;
    }
    if (maxVitaminB12 != nil) {
        queryParams[@"maxVitaminB12"] = maxVitaminB12;
    }
    if (minFiber != nil) {
        queryParams[@"minFiber"] = minFiber;
    }
    if (maxFiber != nil) {
        queryParams[@"maxFiber"] = maxFiber;
    }
    if (minFolate != nil) {
        queryParams[@"minFolate"] = minFolate;
    }
    if (maxFolate != nil) {
        queryParams[@"maxFolate"] = maxFolate;
    }
    if (minFolicAcid != nil) {
        queryParams[@"minFolicAcid"] = minFolicAcid;
    }
    if (maxFolicAcid != nil) {
        queryParams[@"maxFolicAcid"] = maxFolicAcid;
    }
    if (minIodine != nil) {
        queryParams[@"minIodine"] = minIodine;
    }
    if (maxIodine != nil) {
        queryParams[@"maxIodine"] = maxIodine;
    }
    if (minIron != nil) {
        queryParams[@"minIron"] = minIron;
    }
    if (maxIron != nil) {
        queryParams[@"maxIron"] = maxIron;
    }
    if (minMagnesium != nil) {
        queryParams[@"minMagnesium"] = minMagnesium;
    }
    if (maxMagnesium != nil) {
        queryParams[@"maxMagnesium"] = maxMagnesium;
    }
    if (minManganese != nil) {
        queryParams[@"minManganese"] = minManganese;
    }
    if (maxManganese != nil) {
        queryParams[@"maxManganese"] = maxManganese;
    }
    if (minPhosphorus != nil) {
        queryParams[@"minPhosphorus"] = minPhosphorus;
    }
    if (maxPhosphorus != nil) {
        queryParams[@"maxPhosphorus"] = maxPhosphorus;
    }
    if (minPotassium != nil) {
        queryParams[@"minPotassium"] = minPotassium;
    }
    if (maxPotassium != nil) {
        queryParams[@"maxPotassium"] = maxPotassium;
    }
    if (minSelenium != nil) {
        queryParams[@"minSelenium"] = minSelenium;
    }
    if (maxSelenium != nil) {
        queryParams[@"maxSelenium"] = maxSelenium;
    }
    if (minSodium != nil) {
        queryParams[@"minSodium"] = minSodium;
    }
    if (maxSodium != nil) {
        queryParams[@"maxSodium"] = maxSodium;
    }
    if (minSugar != nil) {
        queryParams[@"minSugar"] = minSugar;
    }
    if (maxSugar != nil) {
        queryParams[@"maxSugar"] = maxSugar;
    }
    if (minZinc != nil) {
        queryParams[@"minZinc"] = minZinc;
    }
    if (maxZinc != nil) {
        queryParams[@"maxZinc"] = maxZinc;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (random != nil) {
        queryParams[@"random"] = [random isEqual:@(YES)] ? @"true" : @"false";
    }
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Recipes Complex
/// Search through hundreds of thousands of recipes using advanced filtering and ranking. NOTE: Since this method combines searching by query, by ingredients, and by nutrients in one endpoint.
///  @param query The (natural language) recipe search query. 
///
///  @param cuisine The cuisine(s) of the recipes. One or more comma separated (will be iterpreted as 'OR'). See a full list of supported cuisines. (optional)
///
///  @param excludeCuisine The cuisine(s) the recipes must not match. One or more comma separated (will be iterpreted as 'AND'). See a full list of supported cuisines. (optional)
///
///  @param diet The diet to which the recipes must be compliant. See a full list of supported diets. (optional)
///
///  @param intolerances A comma-separated list of intolerances. All found recipes must not have ingredients that could cause problems for people with one of the given tolerances. See a full list of supported intolerances. (optional)
///
///  @param equipment The equipment required. Multiple values will be interpreted as 'or'. For example, value could be \"blender, frying pan, bowl\". (optional)
///
///  @param includeIngredients A comma-separated list of ingredients that should/must be contained in the recipe. (optional)
///
///  @param excludeIngredients A comma-separated list of ingredients or ingredient types that must not be contained in the recipes. (optional)
///
///  @param type The type of the recipes. See a full list of supported meal types. (optional)
///
///  @param instructionsRequired Whether the recipes must have instructions. (optional)
///
///  @param fillIngredients Add information about the used and missing ingredients in each recipe. (optional)
///
///  @param addRecipeInformation If set to true, you get more information about the recipes returned. This saves the calls to get recipe information. (optional)
///
///  @param author The username of the recipe author. (optional)
///
///  @param tags User defined tags that have to match. (optional)
///
///  @param titleMatch A text that has to match in the title of the recipes. (optional)
///
///  @param sort The strategy to sort recipes by. See a full list of supported sorting options. (optional)
///
///  @param sortDirection The direction in which to sort. Must be either 'asc' (ascending) or 'desc' (descending). (optional)
///
///  @param minCarbs The minimum number of carbohydrates in grams the recipe must have. (optional)
///
///  @param maxCarbs The maximum number of carbohydrates in grams the recipe can have. (optional)
///
///  @param minProtein The minimum number of protein in grams the recipe must have. (optional)
///
///  @param maxProtein The maximum number of protein in grams the recipe can have. (optional)
///
///  @param minCalories The minimum number of calories the recipe must have. (optional)
///
///  @param maxCalories The maximum number of calories the recipe can have. (optional)
///
///  @param minFat The minimum number of fat in grams the recipe must have. (optional)
///
///  @param maxFat The maximum number of fat in grams the recipe can have. (optional)
///
///  @param minAlcohol The minimum number of alcohol in grams the recipe must have. (optional)
///
///  @param maxAlcohol The maximum number of alcohol in grams the recipe must have. (optional)
///
///  @param minCaffeine The minimum number of milligrams of caffeine the recipe must have. (optional)
///
///  @param maxCaffeine The maximum number of alcohol in grams the recipe must have. (optional)
///
///  @param minCopper The minimum number of copper in milligrams the recipe must have. (optional)
///
///  @param maxCopper The maximum number of copper in milligrams the recipe must have. (optional)
///
///  @param minCalcium The minimum number of calcium in milligrams the recipe must have. (optional)
///
///  @param maxCalcium The maximum number of calcium in milligrams the recipe must have. (optional)
///
///  @param minCholine The minimum number of choline in milligrams the recipe must have. (optional)
///
///  @param maxCholine The maximum number of choline in milligrams the recipe can have. (optional)
///
///  @param minCholesterol The minimum number of cholesterol in milligrams the recipe must have. (optional)
///
///  @param maxCholesterol The maximum number of cholesterol in milligrams the recipe must have. (optional)
///
///  @param minFluoride The minimum number of fluoride in milligrams the recipe must have. (optional)
///
///  @param maxFluoride The maximum number of fluoride in milligrams the recipe can have. (optional)
///
///  @param minSaturatedFat The minimum number of saturated fat in grams the recipe must have. (optional)
///
///  @param maxSaturatedFat The maximum number of saturated fat in grams the recipe must have. (optional)
///
///  @param minVitaminA The minimum number of Vitamin A in IU the recipe must have. (optional)
///
///  @param maxVitaminA The maximum number of Vitamin A in IU the recipe must have. (optional)
///
///  @param minVitaminC The minimum number of Vitamin C milligrams the recipe must have. (optional)
///
///  @param maxVitaminC The maximum number of Vitamin C in milligrams the recipe can have. (optional)
///
///  @param minVitaminD The minimum number of Vitamin D in micrograms the recipe must have. (optional)
///
///  @param maxVitaminD The maximum number of Vitamin D in micrograms the recipe must have. (optional)
///
///  @param minVitaminE The minimum number of Vitamin E in milligrams the recipe must have. (optional)
///
///  @param maxVitaminE The maximum number of Vitamin E in milligrams the recipe must have. (optional)
///
///  @param minVitaminK The minimum number of Vitamin K in micrograms the recipe must have. (optional)
///
///  @param maxVitaminK The maximum number of Vitamin K in micrograms the recipe must have. (optional)
///
///  @param minVitaminB1 The minimum number of Vitamin B1 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB1 The maximum number of Vitamin B1 in milligrams the recipe must have. (optional)
///
///  @param minVitaminB2 The minimum number of Vitamin B2 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB2 The maximum number of Vitamin B2 in milligrams the recipe must have. (optional)
///
///  @param minVitaminB5 The minimum number of Vitamin B5 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB5 The maximum number of Vitamin B5 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB3 The minimum number of Vitamin B3 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB3 The maximum number of Vitamin B3 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB6 The minimum number of Vitamin B6 in milligrams the recipe must have. (optional)
///
///  @param maxVitaminB6 The maximum number of Vitamin B6 in milligrams the recipe can have. (optional)
///
///  @param minVitaminB12 The minimum number of Vitamin B12 in micrograms the recipe must have. (optional)
///
///  @param maxVitaminB12 The maximum number of Vitamin B12 in micrograms the recipe must have. (optional)
///
///  @param minFiber The minimum number of fiber in grams the recipe must have. (optional)
///
///  @param maxFiber The maximum number of fiber in grams the recipe must have. (optional)
///
///  @param minFolate The minimum number of folate in grams the recipe must have. (optional)
///
///  @param maxFolate The maximum number of folate in grams the recipe must have. (optional)
///
///  @param minFolicAcid The minimum number of folic acid in grams the recipe must have. (optional)
///
///  @param maxFolicAcid The maximum number of folic acid in grams the recipe must have. (optional)
///
///  @param minIodine The minimum number of Iodine in grams the recipe must have. (optional)
///
///  @param maxIodine The maximum number of iodine in grams the recipe must have. (optional)
///
///  @param minIron The minimum number of iron in milligrams the recipe must have. (optional)
///
///  @param maxIron The maximum number of iron in milligrams the recipe can have. (optional)
///
///  @param minMagnesium The minimum number of magnesium in milligrams the recipe must have. (optional)
///
///  @param maxMagnesium The maximum number of magnesium in milligrams the recipe can have. (optional)
///
///  @param minManganese The minimum number of manganese in milligrams the recipe must have. (optional)
///
///  @param maxManganese The maximum number of manganese in milligrams the recipe can have. (optional)
///
///  @param minPhosphorus The minimum number of phosphorus in milligrams the recipe must have. (optional)
///
///  @param maxPhosphorus The maximum number of phosphorus in milligrams the recipe can have. (optional)
///
///  @param minPotassium The minimum number of potassium in milligrams the recipe must have. (optional)
///
///  @param maxPotassium The maximum number of potassium in milligrams the recipe can have. (optional)
///
///  @param minSelenium The minimum number of selenium in grams the recipe must have. (optional)
///
///  @param maxSelenium The maximum number of selenium in grams the recipe must have. (optional)
///
///  @param minSodium The minimum number of sodium in milligrams the recipe must have. (optional)
///
///  @param maxSodium The maximum number of sodium in milligrams the recipe must have. (optional)
///
///  @param minSugar The minimum number of sugar in grams the recipe must have. (optional)
///
///  @param maxSugar The maximum number of sugar in grams the recipe must have. (optional)
///
///  @param minZinc The minimum number of zinc in milligrams the recipe must have. (optional)
///
///  @param maxZinc The maximum number of zinc in milligrams the recipe can have. (optional)
///
///  @param offset The offset number for paging (between 0 and 990). (optional)
///
///  @param number The number of expected results (between 1 and 10). (optional)
///
///  @param limitLicense Whether the recipes should have an open license that allows for displaying with proper attribution. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchRecipesComplexWithQuery: (NSString*) query
    cuisine: (NSString*) cuisine
    excludeCuisine: (NSString*) excludeCuisine
    diet: (NSString*) diet
    intolerances: (NSString*) intolerances
    equipment: (NSString*) equipment
    includeIngredients: (NSString*) includeIngredients
    excludeIngredients: (NSString*) excludeIngredients
    type: (NSString*) type
    instructionsRequired: (NSNumber*) instructionsRequired
    fillIngredients: (NSNumber*) fillIngredients
    addRecipeInformation: (NSNumber*) addRecipeInformation
    author: (NSString*) author
    tags: (NSString*) tags
    titleMatch: (NSString*) titleMatch
    sort: (NSString*) sort
    sortDirection: (NSString*) sortDirection
    minCarbs: (NSNumber*) minCarbs
    maxCarbs: (NSNumber*) maxCarbs
    minProtein: (NSNumber*) minProtein
    maxProtein: (NSNumber*) maxProtein
    minCalories: (NSNumber*) minCalories
    maxCalories: (NSNumber*) maxCalories
    minFat: (NSNumber*) minFat
    maxFat: (NSNumber*) maxFat
    minAlcohol: (NSNumber*) minAlcohol
    maxAlcohol: (NSNumber*) maxAlcohol
    minCaffeine: (NSNumber*) minCaffeine
    maxCaffeine: (NSNumber*) maxCaffeine
    minCopper: (NSNumber*) minCopper
    maxCopper: (NSNumber*) maxCopper
    minCalcium: (NSNumber*) minCalcium
    maxCalcium: (NSNumber*) maxCalcium
    minCholine: (NSNumber*) minCholine
    maxCholine: (NSNumber*) maxCholine
    minCholesterol: (NSNumber*) minCholesterol
    maxCholesterol: (NSNumber*) maxCholesterol
    minFluoride: (NSNumber*) minFluoride
    maxFluoride: (NSNumber*) maxFluoride
    minSaturatedFat: (NSNumber*) minSaturatedFat
    maxSaturatedFat: (NSNumber*) maxSaturatedFat
    minVitaminA: (NSNumber*) minVitaminA
    maxVitaminA: (NSNumber*) maxVitaminA
    minVitaminC: (NSNumber*) minVitaminC
    maxVitaminC: (NSNumber*) maxVitaminC
    minVitaminD: (NSNumber*) minVitaminD
    maxVitaminD: (NSNumber*) maxVitaminD
    minVitaminE: (NSNumber*) minVitaminE
    maxVitaminE: (NSNumber*) maxVitaminE
    minVitaminK: (NSNumber*) minVitaminK
    maxVitaminK: (NSNumber*) maxVitaminK
    minVitaminB1: (NSNumber*) minVitaminB1
    maxVitaminB1: (NSNumber*) maxVitaminB1
    minVitaminB2: (NSNumber*) minVitaminB2
    maxVitaminB2: (NSNumber*) maxVitaminB2
    minVitaminB5: (NSNumber*) minVitaminB5
    maxVitaminB5: (NSNumber*) maxVitaminB5
    minVitaminB3: (NSNumber*) minVitaminB3
    maxVitaminB3: (NSNumber*) maxVitaminB3
    minVitaminB6: (NSNumber*) minVitaminB6
    maxVitaminB6: (NSNumber*) maxVitaminB6
    minVitaminB12: (NSNumber*) minVitaminB12
    maxVitaminB12: (NSNumber*) maxVitaminB12
    minFiber: (NSNumber*) minFiber
    maxFiber: (NSNumber*) maxFiber
    minFolate: (NSNumber*) minFolate
    maxFolate: (NSNumber*) maxFolate
    minFolicAcid: (NSNumber*) minFolicAcid
    maxFolicAcid: (NSNumber*) maxFolicAcid
    minIodine: (NSNumber*) minIodine
    maxIodine: (NSNumber*) maxIodine
    minIron: (NSNumber*) minIron
    maxIron: (NSNumber*) maxIron
    minMagnesium: (NSNumber*) minMagnesium
    maxMagnesium: (NSNumber*) maxMagnesium
    minManganese: (NSNumber*) minManganese
    maxManganese: (NSNumber*) maxManganese
    minPhosphorus: (NSNumber*) minPhosphorus
    maxPhosphorus: (NSNumber*) maxPhosphorus
    minPotassium: (NSNumber*) minPotassium
    maxPotassium: (NSNumber*) maxPotassium
    minSelenium: (NSNumber*) minSelenium
    maxSelenium: (NSNumber*) maxSelenium
    minSodium: (NSNumber*) minSodium
    maxSodium: (NSNumber*) maxSodium
    minSugar: (NSNumber*) minSugar
    maxSugar: (NSNumber*) maxSugar
    minZinc: (NSNumber*) minZinc
    maxZinc: (NSNumber*) maxZinc
    offset: (NSNumber*) offset
    number: (NSNumber*) number
    limitLicense: (NSNumber*) limitLicense
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/complexSearch"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (cuisine != nil) {
        queryParams[@"cuisine"] = cuisine;
    }
    if (excludeCuisine != nil) {
        queryParams[@"excludeCuisine"] = excludeCuisine;
    }
    if (diet != nil) {
        queryParams[@"diet"] = diet;
    }
    if (intolerances != nil) {
        queryParams[@"intolerances"] = intolerances;
    }
    if (equipment != nil) {
        queryParams[@"equipment"] = equipment;
    }
    if (includeIngredients != nil) {
        queryParams[@"includeIngredients"] = includeIngredients;
    }
    if (excludeIngredients != nil) {
        queryParams[@"excludeIngredients"] = excludeIngredients;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (instructionsRequired != nil) {
        queryParams[@"instructionsRequired"] = [instructionsRequired isEqual:@(YES)] ? @"true" : @"false";
    }
    if (fillIngredients != nil) {
        queryParams[@"fillIngredients"] = [fillIngredients isEqual:@(YES)] ? @"true" : @"false";
    }
    if (addRecipeInformation != nil) {
        queryParams[@"addRecipeInformation"] = [addRecipeInformation isEqual:@(YES)] ? @"true" : @"false";
    }
    if (author != nil) {
        queryParams[@"author"] = author;
    }
    if (tags != nil) {
        queryParams[@"tags"] = tags;
    }
    if (titleMatch != nil) {
        queryParams[@"titleMatch"] = titleMatch;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (sortDirection != nil) {
        queryParams[@"sortDirection"] = sortDirection;
    }
    if (minCarbs != nil) {
        queryParams[@"minCarbs"] = minCarbs;
    }
    if (maxCarbs != nil) {
        queryParams[@"maxCarbs"] = maxCarbs;
    }
    if (minProtein != nil) {
        queryParams[@"minProtein"] = minProtein;
    }
    if (maxProtein != nil) {
        queryParams[@"maxProtein"] = maxProtein;
    }
    if (minCalories != nil) {
        queryParams[@"minCalories"] = minCalories;
    }
    if (maxCalories != nil) {
        queryParams[@"maxCalories"] = maxCalories;
    }
    if (minFat != nil) {
        queryParams[@"minFat"] = minFat;
    }
    if (maxFat != nil) {
        queryParams[@"maxFat"] = maxFat;
    }
    if (minAlcohol != nil) {
        queryParams[@"minAlcohol"] = minAlcohol;
    }
    if (maxAlcohol != nil) {
        queryParams[@"maxAlcohol"] = maxAlcohol;
    }
    if (minCaffeine != nil) {
        queryParams[@"minCaffeine"] = minCaffeine;
    }
    if (maxCaffeine != nil) {
        queryParams[@"maxCaffeine"] = maxCaffeine;
    }
    if (minCopper != nil) {
        queryParams[@"minCopper"] = minCopper;
    }
    if (maxCopper != nil) {
        queryParams[@"maxCopper"] = maxCopper;
    }
    if (minCalcium != nil) {
        queryParams[@"minCalcium"] = minCalcium;
    }
    if (maxCalcium != nil) {
        queryParams[@"maxCalcium"] = maxCalcium;
    }
    if (minCholine != nil) {
        queryParams[@"minCholine"] = minCholine;
    }
    if (maxCholine != nil) {
        queryParams[@"maxCholine"] = maxCholine;
    }
    if (minCholesterol != nil) {
        queryParams[@"minCholesterol"] = minCholesterol;
    }
    if (maxCholesterol != nil) {
        queryParams[@"maxCholesterol"] = maxCholesterol;
    }
    if (minFluoride != nil) {
        queryParams[@"minFluoride"] = minFluoride;
    }
    if (maxFluoride != nil) {
        queryParams[@"maxFluoride"] = maxFluoride;
    }
    if (minSaturatedFat != nil) {
        queryParams[@"minSaturatedFat"] = minSaturatedFat;
    }
    if (maxSaturatedFat != nil) {
        queryParams[@"maxSaturatedFat"] = maxSaturatedFat;
    }
    if (minVitaminA != nil) {
        queryParams[@"minVitaminA"] = minVitaminA;
    }
    if (maxVitaminA != nil) {
        queryParams[@"maxVitaminA"] = maxVitaminA;
    }
    if (minVitaminC != nil) {
        queryParams[@"minVitaminC"] = minVitaminC;
    }
    if (maxVitaminC != nil) {
        queryParams[@"maxVitaminC"] = maxVitaminC;
    }
    if (minVitaminD != nil) {
        queryParams[@"minVitaminD"] = minVitaminD;
    }
    if (maxVitaminD != nil) {
        queryParams[@"maxVitaminD"] = maxVitaminD;
    }
    if (minVitaminE != nil) {
        queryParams[@"minVitaminE"] = minVitaminE;
    }
    if (maxVitaminE != nil) {
        queryParams[@"maxVitaminE"] = maxVitaminE;
    }
    if (minVitaminK != nil) {
        queryParams[@"minVitaminK"] = minVitaminK;
    }
    if (maxVitaminK != nil) {
        queryParams[@"maxVitaminK"] = maxVitaminK;
    }
    if (minVitaminB1 != nil) {
        queryParams[@"minVitaminB1"] = minVitaminB1;
    }
    if (maxVitaminB1 != nil) {
        queryParams[@"maxVitaminB1"] = maxVitaminB1;
    }
    if (minVitaminB2 != nil) {
        queryParams[@"minVitaminB2"] = minVitaminB2;
    }
    if (maxVitaminB2 != nil) {
        queryParams[@"maxVitaminB2"] = maxVitaminB2;
    }
    if (minVitaminB5 != nil) {
        queryParams[@"minVitaminB5"] = minVitaminB5;
    }
    if (maxVitaminB5 != nil) {
        queryParams[@"maxVitaminB5"] = maxVitaminB5;
    }
    if (minVitaminB3 != nil) {
        queryParams[@"minVitaminB3"] = minVitaminB3;
    }
    if (maxVitaminB3 != nil) {
        queryParams[@"maxVitaminB3"] = maxVitaminB3;
    }
    if (minVitaminB6 != nil) {
        queryParams[@"minVitaminB6"] = minVitaminB6;
    }
    if (maxVitaminB6 != nil) {
        queryParams[@"maxVitaminB6"] = maxVitaminB6;
    }
    if (minVitaminB12 != nil) {
        queryParams[@"minVitaminB12"] = minVitaminB12;
    }
    if (maxVitaminB12 != nil) {
        queryParams[@"maxVitaminB12"] = maxVitaminB12;
    }
    if (minFiber != nil) {
        queryParams[@"minFiber"] = minFiber;
    }
    if (maxFiber != nil) {
        queryParams[@"maxFiber"] = maxFiber;
    }
    if (minFolate != nil) {
        queryParams[@"minFolate"] = minFolate;
    }
    if (maxFolate != nil) {
        queryParams[@"maxFolate"] = maxFolate;
    }
    if (minFolicAcid != nil) {
        queryParams[@"minFolicAcid"] = minFolicAcid;
    }
    if (maxFolicAcid != nil) {
        queryParams[@"maxFolicAcid"] = maxFolicAcid;
    }
    if (minIodine != nil) {
        queryParams[@"minIodine"] = minIodine;
    }
    if (maxIodine != nil) {
        queryParams[@"maxIodine"] = maxIodine;
    }
    if (minIron != nil) {
        queryParams[@"minIron"] = minIron;
    }
    if (maxIron != nil) {
        queryParams[@"maxIron"] = maxIron;
    }
    if (minMagnesium != nil) {
        queryParams[@"minMagnesium"] = minMagnesium;
    }
    if (maxMagnesium != nil) {
        queryParams[@"maxMagnesium"] = maxMagnesium;
    }
    if (minManganese != nil) {
        queryParams[@"minManganese"] = minManganese;
    }
    if (maxManganese != nil) {
        queryParams[@"maxManganese"] = maxManganese;
    }
    if (minPhosphorus != nil) {
        queryParams[@"minPhosphorus"] = minPhosphorus;
    }
    if (maxPhosphorus != nil) {
        queryParams[@"maxPhosphorus"] = maxPhosphorus;
    }
    if (minPotassium != nil) {
        queryParams[@"minPotassium"] = minPotassium;
    }
    if (maxPotassium != nil) {
        queryParams[@"maxPotassium"] = maxPotassium;
    }
    if (minSelenium != nil) {
        queryParams[@"minSelenium"] = minSelenium;
    }
    if (maxSelenium != nil) {
        queryParams[@"maxSelenium"] = maxSelenium;
    }
    if (minSodium != nil) {
        queryParams[@"minSodium"] = minSodium;
    }
    if (maxSodium != nil) {
        queryParams[@"maxSodium"] = maxSodium;
    }
    if (minSugar != nil) {
        queryParams[@"minSugar"] = minSugar;
    }
    if (maxSugar != nil) {
        queryParams[@"maxSugar"] = maxSugar;
    }
    if (minZinc != nil) {
        queryParams[@"minZinc"] = minZinc;
    }
    if (maxZinc != nil) {
        queryParams[@"maxZinc"] = maxZinc;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (number != nil) {
        queryParams[@"number"] = number;
    }
    if (limitLicense != nil) {
        queryParams[@"limitLicense"] = [limitLicense isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Search Site Content
/// Search spoonacular's site content. You'll be able to find everything that you could also find using the search suggests on spoonacular.com. This is a suggest API so you can send partial strings as queries.
///  @param query The query to search for. You can also use partial queries such as \"spagh\" to already find spaghetti recipes, articles, grocery products, and other content. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) searchSiteContentWithQuery: (NSString*) query
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/site/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Summarize Recipe
/// Summarize the recipe in a short text.
///  @param _id The recipe id. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) summarizeRecipeWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/summary"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Talk to Chatbot
/// This endpoint can be used to have a conversation about food with the spoonacular chat bot. Use the \"Get Conversation Suggests\" endpoint to show your user what he or she can say.
///  @param text The request / question / answer from the user to the chat bot. 
///
///  @param contextId An arbitrary globally unique id for your conversation. The conversation can contain states so you should pass your context id if you want the bot to be able to remember the conversation. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) talkToChatbotWithText: (NSString*) text
    contextId: (NSString*) contextId
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'text' is set
    if (text == nil) {
        NSParameterAssert(text);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"text"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/converse"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (text != nil) {
        queryParams[@"text"] = text;
    }
    if (contextId != nil) {
        queryParams[@"contextId"] = contextId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Visualize Equipment
/// Visualize the equipment used to make a recipe.
///  @param ingredientList The ingredient list of the recipe, one ingredient per line. 
///
///  @param servings The number of servings. 
///
///  @param view Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment. (optional)
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @param showBacklink Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeEquipmentWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    view: (NSString*) view
    defaultCss: (NSNumber*) defaultCss
    showBacklink: (NSNumber*) showBacklink
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'ingredientList' is set
    if (ingredientList == nil) {
        NSParameterAssert(ingredientList);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientList"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'servings' is set
    if (servings == nil) {
        NSParameterAssert(servings);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"servings"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizeEquipment"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (ingredientList) {
        formParams[@"ingredientList"] = ingredientList;
    }
    if (servings) {
        formParams[@"servings"] = servings;
    }
    if (view) {
        formParams[@"view"] = view;
    }
    if (defaultCss) {
        formParams[@"defaultCss"] = defaultCss;
    }
    if (showBacklink) {
        formParams[@"showBacklink"] = showBacklink;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Ingredients
/// Visualize ingredients of a recipe.
///  @param ingredientList The ingredient list of the recipe, one ingredient per line. 
///
///  @param servings The number of servings. 
///
///  @param measure The initial measure, either \\\"metric\\\" or \\\"us\\\". (optional)
///
///  @param view Either \\\"grid\\\" or \\\"list\\\" as visualization of the equipment. (optional)
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @param showBacklink Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeIngredientsWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    measure: (NSString*) measure
    view: (NSString*) view
    defaultCss: (NSNumber*) defaultCss
    showBacklink: (NSNumber*) showBacklink
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'ingredientList' is set
    if (ingredientList == nil) {
        NSParameterAssert(ingredientList);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientList"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'servings' is set
    if (servings == nil) {
        NSParameterAssert(servings);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"servings"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizeIngredients"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (ingredientList) {
        formParams[@"ingredientList"] = ingredientList;
    }
    if (servings) {
        formParams[@"servings"] = servings;
    }
    if (measure) {
        formParams[@"measure"] = measure;
    }
    if (view) {
        formParams[@"view"] = view;
    }
    if (defaultCss) {
        formParams[@"defaultCss"] = defaultCss;
    }
    if (showBacklink) {
        formParams[@"showBacklink"] = showBacklink;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Menu Item Nutrition by ID
/// Visualize a menu items' nutrition data.
///  @param _id The menu item id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeMenuItemNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/menuItems/{id}/nutritionWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Price Breakdown
/// Visualize the price breakdown of a recipe.
///  @param ingredientList The ingredient list of the recipe, one ingredient per line. 
///
///  @param servings The number of servings. 
///
///  @param mode The mode in which the widget should be delivered. 1 = separate views (compact), 2 = all in one view (full). (optional)
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @param showBacklink Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizePriceBreakdownWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    mode: (NSNumber*) mode
    defaultCss: (NSNumber*) defaultCss
    showBacklink: (NSNumber*) showBacklink
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'ingredientList' is set
    if (ingredientList == nil) {
        NSParameterAssert(ingredientList);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientList"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'servings' is set
    if (servings == nil) {
        NSParameterAssert(servings);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"servings"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizePriceEstimator"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (ingredientList) {
        formParams[@"ingredientList"] = ingredientList;
    }
    if (servings) {
        formParams[@"servings"] = servings;
    }
    if (mode) {
        formParams[@"mode"] = mode;
    }
    if (defaultCss) {
        formParams[@"defaultCss"] = defaultCss;
    }
    if (showBacklink) {
        formParams[@"showBacklink"] = showBacklink;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Product Nutrition by ID
/// Visualize a grocery product's nutritional information.
///  @param _id The id of the product. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeProductNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/food/products/{id}/nutritionWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Recipe Equipment by ID
/// Visualize a recipe's equipment list.
///  @param _id The recipe id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeEquipmentByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/equipmentWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Recipe Ingredients by ID
/// Visualize a recipe's ingredient list.
///  @param _id The recipe id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeIngredientsByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/ingredientWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Recipe Nutrition
/// Visualize a recipe's nutrition data.
///  @param ingredientList The ingredient list of the recipe, one ingredient per line. 
///
///  @param servings The number of servings. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @param showBacklink Whether to show a backlink to spoonacular. If set false, this call counts against your quota. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeNutritionWithIngredientList: (NSString*) ingredientList
    servings: (NSNumber*) servings
    defaultCss: (NSNumber*) defaultCss
    showBacklink: (NSNumber*) showBacklink
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter 'ingredientList' is set
    if (ingredientList == nil) {
        NSParameterAssert(ingredientList);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ingredientList"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'servings' is set
    if (servings == nil) {
        NSParameterAssert(servings);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"servings"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/visualizeNutrition"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (ingredientList) {
        formParams[@"ingredientList"] = ingredientList;
    }
    if (servings) {
        formParams[@"servings"] = servings;
    }
    if (defaultCss) {
        formParams[@"defaultCss"] = defaultCss;
    }
    if (showBacklink) {
        formParams[@"showBacklink"] = showBacklink;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Recipe Nutrition by ID
/// Visualize a recipe's nutritional information.
///  @param _id The id of the product. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipeNutritionByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/nutritionWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}

///
/// Visualize Recipe Price Breakdown by ID
/// Visualize a recipe's price breakdown.
///  @param _id The recipe id. 
///
///  @param defaultCss Whether the default CSS should be added to the response. (optional)
///
///  @returns NSString*
///
-(NSURLSessionTask*) visualizeRecipePriceBreakdownByIDWithId: (NSNumber*) _id
    defaultCss: (NSNumber*) defaultCss
    completionHandler: (void (^)(NSString* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/recipes/{id}/priceBreakdownWidget"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (defaultCss != nil) {
        queryParams[@"defaultCss"] = [defaultCss isEqual:@(YES)] ? @"true" : @"false";
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/html"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSString*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSString*)data, error);
                                }
                            }];
}



@end
