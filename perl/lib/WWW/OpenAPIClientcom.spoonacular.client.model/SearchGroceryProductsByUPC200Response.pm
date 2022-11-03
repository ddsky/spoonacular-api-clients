=begin comment

spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.1
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::Object::SearchGroceryProductsByUPC200Response;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::OpenAPIClient::Object::SearchGroceryProductsByUPC200ResponseIngredientsInner;
use WWW::OpenAPIClient::Object::SearchGroceryProductsByUPC200ResponseNutrition;
use WWW::OpenAPIClient::Object::SearchGroceryProductsByUPC200ResponseServings;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over thousands of recipes, thousands of ingredients, 800,000 food products, over 100,000 menu items, and restaurants. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

The version of the OpenAPI document: 1.1
Contact: mail@spoonacular.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => '',
                                  class => 'SearchGroceryProductsByUPC200Response',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'int',
        base_name => 'id',
        description => '',
        format => '',
        read_only => '',
            },
    'title' => {
        datatype => 'string',
        base_name => 'title',
        description => '',
        format => '',
        read_only => '',
            },
    'badges' => {
        datatype => 'ARRAY[string]',
        base_name => 'badges',
        description => '',
        format => '',
        read_only => '',
            },
    'important_badges' => {
        datatype => 'ARRAY[string]',
        base_name => 'importantBadges',
        description => '',
        format => '',
        read_only => '',
            },
    'breadcrumbs' => {
        datatype => 'ARRAY[string]',
        base_name => 'breadcrumbs',
        description => '',
        format => '',
        read_only => '',
            },
    'generated_text' => {
        datatype => 'string',
        base_name => 'generatedText',
        description => '',
        format => '',
        read_only => '',
            },
    'image_type' => {
        datatype => 'string',
        base_name => 'imageType',
        description => '',
        format => '',
        read_only => '',
            },
    'ingredient_count' => {
        datatype => 'int',
        base_name => 'ingredientCount',
        description => '',
        format => '',
        read_only => '',
            },
    'ingredient_list' => {
        datatype => 'string',
        base_name => 'ingredientList',
        description => '',
        format => '',
        read_only => '',
            },
    'ingredients' => {
        datatype => 'ARRAY[SearchGroceryProductsByUPC200ResponseIngredientsInner]',
        base_name => 'ingredients',
        description => '',
        format => '',
        read_only => '',
            },
    'likes' => {
        datatype => 'double',
        base_name => 'likes',
        description => '',
        format => '',
        read_only => '',
            },
    'nutrition' => {
        datatype => 'SearchGroceryProductsByUPC200ResponseNutrition',
        base_name => 'nutrition',
        description => '',
        format => '',
        read_only => '',
            },
    'price' => {
        datatype => 'double',
        base_name => 'price',
        description => '',
        format => '',
        read_only => '',
            },
    'servings' => {
        datatype => 'SearchGroceryProductsByUPC200ResponseServings',
        base_name => 'servings',
        description => '',
        format => '',
        read_only => '',
            },
    'spoonacular_score' => {
        datatype => 'double',
        base_name => 'spoonacularScore',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'int',
    'title' => 'string',
    'badges' => 'ARRAY[string]',
    'important_badges' => 'ARRAY[string]',
    'breadcrumbs' => 'ARRAY[string]',
    'generated_text' => 'string',
    'image_type' => 'string',
    'ingredient_count' => 'int',
    'ingredient_list' => 'string',
    'ingredients' => 'ARRAY[SearchGroceryProductsByUPC200ResponseIngredientsInner]',
    'likes' => 'double',
    'nutrition' => 'SearchGroceryProductsByUPC200ResponseNutrition',
    'price' => 'double',
    'servings' => 'SearchGroceryProductsByUPC200ResponseServings',
    'spoonacular_score' => 'double'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'title' => 'title',
    'badges' => 'badges',
    'important_badges' => 'importantBadges',
    'breadcrumbs' => 'breadcrumbs',
    'generated_text' => 'generatedText',
    'image_type' => 'imageType',
    'ingredient_count' => 'ingredientCount',
    'ingredient_list' => 'ingredientList',
    'ingredients' => 'ingredients',
    'likes' => 'likes',
    'nutrition' => 'nutrition',
    'price' => 'price',
    'servings' => 'servings',
    'spoonacular_score' => 'spoonacularScore'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
