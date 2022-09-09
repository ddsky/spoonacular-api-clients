#import "OAIMealPlanningApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIAddMealPlanTemplate200Response.h"
#import "OAIAddToMealPlanRequest.h"
#import "OAIAddToMealPlanRequest1.h"
#import "OAIAddToShoppingListRequest.h"
#import "OAIClearMealPlanDayRequest.h"
#import "OAIConnectUser200Response.h"
#import "OAIConnectUserRequest.h"
#import "OAIDeleteFromMealPlanRequest.h"
#import "OAIGenerateMealPlan200Response.h"
#import "OAIGenerateShoppingList200Response.h"
#import "OAIGenerateShoppingListRequest.h"
#import "OAIGetMealPlanTemplate200Response.h"
#import "OAIGetMealPlanTemplates200Response.h"
#import "OAIGetMealPlanWeek200Response.h"
#import "OAIGetShoppingList200Response.h"


@interface OAIMealPlanningApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIMealPlanningApi

NSString* kOAIMealPlanningApiErrorDomain = @"OAIMealPlanningApiErrorDomain";
NSInteger kOAIMealPlanningApiMissingParamErrorCode = 234513;

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
/// Add Meal Plan Template
/// Add a meal plan template for a user.
///  @param username The username. 
///
///  @param hash The private hash for the username. 
///
///  @param addToMealPlanRequest  
///
///  @returns OAIAddMealPlanTemplate200Response*
///
-(NSURLSessionTask*) addMealPlanTemplateWithUsername: (NSString*) username
    hash: (NSString*) hash
    addToMealPlanRequest: (OAIAddToMealPlanRequest*) addToMealPlanRequest
    completionHandler: (void (^)(OAIAddMealPlanTemplate200Response* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'addToMealPlanRequest' is set
    if (addToMealPlanRequest == nil) {
        NSParameterAssert(addToMealPlanRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addToMealPlanRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/templates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@""]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = addToMealPlanRequest;

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
                              responseType: @"OAIAddMealPlanTemplate200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIAddMealPlanTemplate200Response*)data, error);
                                }
                            }];
}

///
/// Add to Meal Plan
/// Add an item to the user's meal plan.
///  @param username The username. 
///
///  @param hash The private hash for the username. 
///
///  @param addToMealPlanRequest  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) addToMealPlanWithUsername: (NSString*) username
    hash: (NSString*) hash
    addToMealPlanRequest: (OAIAddToMealPlanRequest*) addToMealPlanRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'addToMealPlanRequest' is set
    if (addToMealPlanRequest == nil) {
        NSParameterAssert(addToMealPlanRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addToMealPlanRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/items"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"", @"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = addToMealPlanRequest;

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
/// Add to Shopping List
/// Add an item to the current shopping list of a user.
///  @param username The username. 
///
///  @param hash The private hash for the username. 
///
///  @param addToMealPlanRequest  
///
///  @returns OAIGenerateShoppingList200Response*
///
-(NSURLSessionTask*) addToShoppingListWithUsername: (NSString*) username
    hash: (NSString*) hash
    addToMealPlanRequest: (OAIAddToMealPlanRequest*) addToMealPlanRequest
    completionHandler: (void (^)(OAIGenerateShoppingList200Response* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'addToMealPlanRequest' is set
    if (addToMealPlanRequest == nil) {
        NSParameterAssert(addToMealPlanRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addToMealPlanRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/shopping-list/items"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"", @"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = addToMealPlanRequest;

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
                              responseType: @"OAIGenerateShoppingList200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateShoppingList200Response*)data, error);
                                }
                            }];
}

///
/// Clear Meal Plan Day
/// Delete all planned items from the user's meal plan for a specific day.
///  @param username The username. 
///
///  @param date The date in the format yyyy-mm-dd. 
///
///  @param hash The private hash for the username. 
///
///  @param clearMealPlanDayRequest  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) clearMealPlanDayWithUsername: (NSString*) username
    date: (NSString*) date
    hash: (NSString*) hash
    clearMealPlanDayRequest: (OAIClearMealPlanDayRequest*) clearMealPlanDayRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'date' is set
    if (date == nil) {
        NSParameterAssert(date);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"date"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'clearMealPlanDayRequest' is set
    if (clearMealPlanDayRequest == nil) {
        NSParameterAssert(clearMealPlanDayRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"clearMealPlanDayRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/day/{date}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (date != nil) {
        pathParams[@"date"] = date;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@""]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = clearMealPlanDayRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
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
/// Connect User
/// In order to call user-specific endpoints, you need to connect your app's users to spoonacular users.
///  @param body  
///
///  @returns OAIConnectUser200Response*
///
-(NSURLSessionTask*) connectUserWithBody: (NSObject*) body
    completionHandler: (void (^)(OAIConnectUser200Response* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/users/connect"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"", @"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

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
                              responseType: @"OAIConnectUser200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIConnectUser200Response*)data, error);
                                }
                            }];
}

///
/// Delete from Meal Plan
/// Delete an item from the user's meal plan.
///  @param username The username. 
///
///  @param _id The shopping list item id. 
///
///  @param hash The private hash for the username. 
///
///  @param deleteFromMealPlanRequest  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) deleteFromMealPlanWithUsername: (NSString*) username
    _id: (NSNumber*) _id
    hash: (NSString*) hash
    deleteFromMealPlanRequest: (OAIDeleteFromMealPlanRequest*) deleteFromMealPlanRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deleteFromMealPlanRequest' is set
    if (deleteFromMealPlanRequest == nil) {
        NSParameterAssert(deleteFromMealPlanRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deleteFromMealPlanRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/items/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@""]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deleteFromMealPlanRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
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
/// Delete from Shopping List
/// Delete an item from the current shopping list of the user.
///  @param username The username. 
///
///  @param _id The item's id. 
///
///  @param hash The private hash for the username. 
///
///  @param deleteFromMealPlanRequest  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) deleteFromShoppingListWithUsername: (NSString*) username
    _id: (NSNumber*) _id
    hash: (NSString*) hash
    deleteFromMealPlanRequest: (OAIDeleteFromMealPlanRequest*) deleteFromMealPlanRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deleteFromMealPlanRequest' is set
    if (deleteFromMealPlanRequest == nil) {
        NSParameterAssert(deleteFromMealPlanRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deleteFromMealPlanRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/shopping-list/items/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@""]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deleteFromMealPlanRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
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
/// Delete Meal Plan Template
/// Delete a meal plan template for a user.
///  @param username The username. 
///
///  @param _id The item's id. 
///
///  @param hash The private hash for the username. 
///
///  @param deleteFromMealPlanRequest  
///
///  @returns NSObject*
///
-(NSURLSessionTask*) deleteMealPlanTemplateWithUsername: (NSString*) username
    _id: (NSNumber*) _id
    hash: (NSString*) hash
    deleteFromMealPlanRequest: (OAIDeleteFromMealPlanRequest*) deleteFromMealPlanRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deleteFromMealPlanRequest' is set
    if (deleteFromMealPlanRequest == nil) {
        NSParameterAssert(deleteFromMealPlanRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deleteFromMealPlanRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/templates/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@""]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deleteFromMealPlanRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
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
///  @returns OAIGenerateMealPlan200Response*
///
-(NSURLSessionTask*) generateMealPlanWithTimeFrame: (NSString*) timeFrame
    targetCalories: (NSNumber*) targetCalories
    diet: (NSString*) diet
    exclude: (NSString*) exclude
    completionHandler: (void (^)(OAIGenerateMealPlan200Response* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/generate"];

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
    NSArray *authSettings = @[@"apiKeyScheme"];

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
                              responseType: @"OAIGenerateMealPlan200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateMealPlan200Response*)data, error);
                                }
                            }];
}

///
/// Generate Shopping List
/// Generate the shopping list for a user from the meal planner in a given time frame.
///  @param username The username. 
///
///  @param startDate The start date in the format yyyy-mm-dd. 
///
///  @param endDate The end date in the format yyyy-mm-dd. 
///
///  @param hash The private hash for the username. 
///
///  @param generateShoppingListRequest  
///
///  @returns OAIGenerateShoppingList200Response*
///
-(NSURLSessionTask*) generateShoppingListWithUsername: (NSString*) username
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    hash: (NSString*) hash
    generateShoppingListRequest: (OAIGenerateShoppingListRequest*) generateShoppingListRequest
    completionHandler: (void (^)(OAIGenerateShoppingList200Response* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startDate' is set
    if (startDate == nil) {
        NSParameterAssert(startDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startDate"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'endDate' is set
    if (endDate == nil) {
        NSParameterAssert(endDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"endDate"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'generateShoppingListRequest' is set
    if (generateShoppingListRequest == nil) {
        NSParameterAssert(generateShoppingListRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"generateShoppingListRequest"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/shopping-list/{start-date}/{end-date}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (startDate != nil) {
        pathParams[@"start-date"] = startDate;
    }
    if (endDate != nil) {
        pathParams[@"end-date"] = endDate;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@""]];

    // Authentication setting
    NSArray *authSettings = @[@"apiKeyScheme"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = generateShoppingListRequest;

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
                              responseType: @"OAIGenerateShoppingList200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGenerateShoppingList200Response*)data, error);
                                }
                            }];
}

///
/// Get Meal Plan Template
/// Get information about a meal plan template.
///  @param username The username. 
///
///  @param _id The item's id. 
///
///  @param hash The private hash for the username. 
///
///  @returns OAIGetMealPlanTemplate200Response*
///
-(NSURLSessionTask*) getMealPlanTemplateWithUsername: (NSString*) username
    _id: (NSNumber*) _id
    hash: (NSString*) hash
    completionHandler: (void (^)(OAIGetMealPlanTemplate200Response* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/templates/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSArray *authSettings = @[@"apiKeyScheme"];

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
                              responseType: @"OAIGetMealPlanTemplate200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetMealPlanTemplate200Response*)data, error);
                                }
                            }];
}

///
/// Get Meal Plan Templates
/// Get meal plan templates from user or public ones.
///  @param username The username. 
///
///  @param hash The private hash for the username. 
///
///  @returns OAIGetMealPlanTemplates200Response*
///
-(NSURLSessionTask*) getMealPlanTemplatesWithUsername: (NSString*) username
    hash: (NSString*) hash
    completionHandler: (void (^)(OAIGetMealPlanTemplates200Response* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/templates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSArray *authSettings = @[@"apiKeyScheme"];

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
                              responseType: @"OAIGetMealPlanTemplates200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetMealPlanTemplates200Response*)data, error);
                                }
                            }];
}

///
/// Get Meal Plan Week
/// Retrieve a meal planned week for the given user. The username must be a spoonacular user and the hash must the the user's hash that can be found in his/her account.
///  @param username The username. 
///
///  @param startDate The start date of the meal planned week in the format yyyy-mm-dd. 
///
///  @param hash The private hash for the username. 
///
///  @returns OAIGetMealPlanWeek200Response*
///
-(NSURLSessionTask*) getMealPlanWeekWithUsername: (NSString*) username
    startDate: (NSString*) startDate
    hash: (NSString*) hash
    completionHandler: (void (^)(OAIGetMealPlanWeek200Response* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'startDate' is set
    if (startDate == nil) {
        NSParameterAssert(startDate);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"startDate"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/week/{start-date}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (startDate != nil) {
        pathParams[@"start-date"] = startDate;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSArray *authSettings = @[@"apiKeyScheme"];

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
                              responseType: @"OAIGetMealPlanWeek200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetMealPlanWeek200Response*)data, error);
                                }
                            }];
}

///
/// Get Shopping List
/// Get the current shopping list for the given user.
///  @param username The username. 
///
///  @param hash The private hash for the username. 
///
///  @returns OAIGetShoppingList200Response*
///
-(NSURLSessionTask*) getShoppingListWithUsername: (NSString*) username
    hash: (NSString*) hash
    completionHandler: (void (^)(OAIGetShoppingList200Response* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'hash' is set
    if (hash == nil) {
        NSParameterAssert(hash);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"hash"] };
            NSError* error = [NSError errorWithDomain:kOAIMealPlanningApiErrorDomain code:kOAIMealPlanningApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mealplanner/{username}/shopping-list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hash != nil) {
        queryParams[@"hash"] = hash;
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
    NSArray *authSettings = @[@"apiKeyScheme"];

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
                              responseType: @"OAIGetShoppingList200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIGetShoppingList200Response*)data, error);
                                }
                            }];
}



@end
