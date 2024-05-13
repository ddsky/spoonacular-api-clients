/*
spoonacular API

Testing DefaultAPIService

*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech);

package spoonacular

import (
	"context"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
	"testing"
	openapiclient "github.com/ddsky/spoonacular-api-clients/go"
)

func Test_spoonacular_DefaultAPIService(t *testing.T) {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)

	t.Run("Test DefaultAPIService AnalyzeRecipe", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		resp, httpRes, err := apiClient.DefaultAPI.AnalyzeRecipe(context.Background()).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test DefaultAPIService CreateRecipeCardGet", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		var id float32

		resp, httpRes, err := apiClient.DefaultAPI.CreateRecipeCardGet(context.Background(), id).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

	t.Run("Test DefaultAPIService SearchRestaurants", func(t *testing.T) {

		t.Skip("skip test")  // remove to run test

		resp, httpRes, err := apiClient.DefaultAPI.SearchRestaurants(context.Background()).Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

	})

}
