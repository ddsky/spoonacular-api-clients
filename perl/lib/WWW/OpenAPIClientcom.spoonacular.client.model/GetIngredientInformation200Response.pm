=begin comment

spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

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
package WWW::OpenAPIClient::Object::GetIngredientInformation200Response;

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

use WWW::OpenAPIClient::Object::GetIngredientInformation200ResponseNutrition;
use WWW::OpenAPIClient::Object::ParseIngredients200ResponseInnerEstimatedCost;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

spoonacular API

The spoonacular Nutrition, Recipe, and Food API allows you to access over 380,000 recipes, thousands of ingredients, 800,000 food products, and 100,000 menu items. Our food ontology and semantic recipe search engine makes it possible to search for recipes using natural language queries, such as \"gluten free brownies without sugar\" or \"low fat vegan cupcakes.\" You can automatically calculate the nutritional information for any recipe, analyze recipe costs, visualize ingredient lists, find recipes for what's in your fridge, find recipes based on special diets, nutritional requirements, or favorite ingredients, classify recipes into types and cuisines, convert ingredient amounts, or even compute an entire meal plan. With our powerful API, you can create many kinds of food and especially nutrition apps.  Special diets/dietary requirements currently available include: vegan, vegetarian, pescetarian, gluten free, grain free, dairy free, high protein, whole 30, low sodium, low carb, Paleo, ketogenic, FODMAP, and Primal.

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
                                  class => 'GetIngredientInformation200Response',
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
    'original' => {
        datatype => 'string',
        base_name => 'original',
        description => '',
        format => '',
        read_only => '',
            },
    'original_name' => {
        datatype => 'string',
        base_name => 'originalName',
        description => '',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => '',
        format => '',
        read_only => '',
            },
    'name_clean' => {
        datatype => 'string',
        base_name => 'nameClean',
        description => '',
        format => '',
        read_only => '',
            },
    'amount' => {
        datatype => 'double',
        base_name => 'amount',
        description => '',
        format => '',
        read_only => '',
            },
    'unit' => {
        datatype => 'string',
        base_name => 'unit',
        description => '',
        format => '',
        read_only => '',
            },
    'unit_short' => {
        datatype => 'string',
        base_name => 'unitShort',
        description => '',
        format => '',
        read_only => '',
            },
    'unit_long' => {
        datatype => 'string',
        base_name => 'unitLong',
        description => '',
        format => '',
        read_only => '',
            },
    'possible_units' => {
        datatype => 'ARRAY[string]',
        base_name => 'possibleUnits',
        description => '',
        format => '',
        read_only => '',
            },
    'estimated_cost' => {
        datatype => 'ParseIngredients200ResponseInnerEstimatedCost',
        base_name => 'estimatedCost',
        description => '',
        format => '',
        read_only => '',
            },
    'consistency' => {
        datatype => 'string',
        base_name => 'consistency',
        description => '',
        format => '',
        read_only => '',
            },
    'shopping_list_units' => {
        datatype => 'ARRAY[string]',
        base_name => 'shoppingListUnits',
        description => '',
        format => '',
        read_only => '',
            },
    'aisle' => {
        datatype => 'string',
        base_name => 'aisle',
        description => '',
        format => '',
        read_only => '',
            },
    'image' => {
        datatype => 'string',
        base_name => 'image',
        description => '',
        format => '',
        read_only => '',
            },
    'meta' => {
        datatype => 'ARRAY[object]',
        base_name => 'meta',
        description => '',
        format => '',
        read_only => '',
            },
    'nutrition' => {
        datatype => 'GetIngredientInformation200ResponseNutrition',
        base_name => 'nutrition',
        description => '',
        format => '',
        read_only => '',
            },
    'category_path' => {
        datatype => 'ARRAY[string]',
        base_name => 'categoryPath',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'int',
    'original' => 'string',
    'original_name' => 'string',
    'name' => 'string',
    'name_clean' => 'string',
    'amount' => 'double',
    'unit' => 'string',
    'unit_short' => 'string',
    'unit_long' => 'string',
    'possible_units' => 'ARRAY[string]',
    'estimated_cost' => 'ParseIngredients200ResponseInnerEstimatedCost',
    'consistency' => 'string',
    'shopping_list_units' => 'ARRAY[string]',
    'aisle' => 'string',
    'image' => 'string',
    'meta' => 'ARRAY[object]',
    'nutrition' => 'GetIngredientInformation200ResponseNutrition',
    'category_path' => 'ARRAY[string]'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'original' => 'original',
    'original_name' => 'originalName',
    'name' => 'name',
    'name_clean' => 'nameClean',
    'amount' => 'amount',
    'unit' => 'unit',
    'unit_short' => 'unitShort',
    'unit_long' => 'unitLong',
    'possible_units' => 'possibleUnits',
    'estimated_cost' => 'estimatedCost',
    'consistency' => 'consistency',
    'shopping_list_units' => 'shoppingListUnits',
    'aisle' => 'aisle',
    'image' => 'image',
    'meta' => 'meta',
    'nutrition' => 'nutrition',
    'category_path' => 'categoryPath'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
