=begin comment

spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 2.0.2
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::WineApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# get_dish_pairing_for_wine
#
# Dish Pairing for Wine
#
# @param string $wine The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
{
    my $params = {
    'wine' => {
        data_type => 'string',
        description => 'The type of wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_dish_pairing_for_wine' } = {
        summary => 'Dish Pairing for Wine',
        params => $params,
        returns => 'GetDishPairingForWine200Response',
        };
}
# @return GetDishPairingForWine200Response
#
sub get_dish_pairing_for_wine {
    my ($self, %args) = @_;

    # verify the required parameter 'wine' is set
    unless (exists $args{'wine'}) {
      croak("Missing the required parameter 'wine' when calling get_dish_pairing_for_wine");
    }

    # parse inputs
    my $_resource_path = '/food/wine/dishes';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'wine'}) {
        $query_params->{'wine'} = $self->{api_client}->to_query_value($args{'wine'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GetDishPairingForWine200Response', $response);
    return $_response_object;
}

#
# get_wine_description
#
# Wine Description
#
# @param string $wine The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;. (required)
{
    my $params = {
    'wine' => {
        data_type => 'string',
        description => 'The name of the wine that should be paired, e.g. \&quot;merlot\&quot;, \&quot;riesling\&quot;, or \&quot;malbec\&quot;.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_wine_description' } = {
        summary => 'Wine Description',
        params => $params,
        returns => 'GetWineDescription200Response',
        };
}
# @return GetWineDescription200Response
#
sub get_wine_description {
    my ($self, %args) = @_;

    # verify the required parameter 'wine' is set
    unless (exists $args{'wine'}) {
      croak("Missing the required parameter 'wine' when calling get_wine_description");
    }

    # parse inputs
    my $_resource_path = '/food/wine/description';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'wine'}) {
        $query_params->{'wine'} = $self->{api_client}->to_query_value($args{'wine'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GetWineDescription200Response', $response);
    return $_response_object;
}

#
# get_wine_pairing
#
# Wine Pairing
#
# @param string $food The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;). (required)
# @param double $max_price The maximum price for the specific wine recommendation in USD. (optional)
{
    my $params = {
    'food' => {
        data_type => 'string',
        description => 'The food to get a pairing for. This can be a dish (\&quot;steak\&quot;), an ingredient (\&quot;salmon\&quot;), or a cuisine (\&quot;italian\&quot;).',
        required => '1',
    },
    'max_price' => {
        data_type => 'double',
        description => 'The maximum price for the specific wine recommendation in USD.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_wine_pairing' } = {
        summary => 'Wine Pairing',
        params => $params,
        returns => 'GetWinePairing200Response',
        };
}
# @return GetWinePairing200Response
#
sub get_wine_pairing {
    my ($self, %args) = @_;

    # verify the required parameter 'food' is set
    unless (exists $args{'food'}) {
      croak("Missing the required parameter 'food' when calling get_wine_pairing");
    }

    # parse inputs
    my $_resource_path = '/food/wine/pairing';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'food'}) {
        $query_params->{'food'} = $self->{api_client}->to_query_value($args{'food'});
    }

    # query params
    if ( exists $args{'max_price'}) {
        $query_params->{'maxPrice'} = $self->{api_client}->to_query_value($args{'max_price'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GetWinePairing200Response', $response);
    return $_response_object;
}

#
# get_wine_recommendation
#
# Wine Recommendation
#
# @param string $wine The type of wine to get a specific product recommendation for. (required)
# @param double $max_price The maximum price for the specific wine recommendation in USD. (optional)
# @param double $min_rating The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars. (optional)
# @param double $number The number of wine recommendations expected (between 1 and 100). (optional, default to 10)
{
    my $params = {
    'wine' => {
        data_type => 'string',
        description => 'The type of wine to get a specific product recommendation for.',
        required => '1',
    },
    'max_price' => {
        data_type => 'double',
        description => 'The maximum price for the specific wine recommendation in USD.',
        required => '0',
    },
    'min_rating' => {
        data_type => 'double',
        description => 'The minimum rating of the recommended wine between 0 and 1. For example, 0.8 equals 4 out of 5 stars.',
        required => '0',
    },
    'number' => {
        data_type => 'double',
        description => 'The number of wine recommendations expected (between 1 and 100).',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'get_wine_recommendation' } = {
        summary => 'Wine Recommendation',
        params => $params,
        returns => 'GetWineRecommendation200Response',
        };
}
# @return GetWineRecommendation200Response
#
sub get_wine_recommendation {
    my ($self, %args) = @_;

    # verify the required parameter 'wine' is set
    unless (exists $args{'wine'}) {
      croak("Missing the required parameter 'wine' when calling get_wine_recommendation");
    }

    # parse inputs
    my $_resource_path = '/food/wine/recommendation';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'wine'}) {
        $query_params->{'wine'} = $self->{api_client}->to_query_value($args{'wine'});
    }

    # query params
    if ( exists $args{'max_price'}) {
        $query_params->{'maxPrice'} = $self->{api_client}->to_query_value($args{'max_price'});
    }

    # query params
    if ( exists $args{'min_rating'}) {
        $query_params->{'minRating'} = $self->{api_client}->to_query_value($args{'min_rating'});
    }

    # query params
    if ( exists $args{'number'}) {
        $query_params->{'number'} = $self->{api_client}->to_query_value($args{'number'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(apiKeyScheme )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GetWineRecommendation200Response', $response);
    return $_response_object;
}

1;
