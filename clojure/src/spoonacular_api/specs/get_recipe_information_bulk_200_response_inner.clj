(ns spoonacular-api.specs.get-recipe-information-bulk-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner :refer :all]
            [spoonacular-api.specs.get-recipe-information-200-response-wine-pairing :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-information-bulk-200-response-inner-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/req :servings) float?
   (ds/req :readyInMinutes) int?
   (ds/req :license) string?
   (ds/req :sourceName) string?
   (ds/req :sourceUrl) string?
   (ds/req :spoonacularSourceUrl) string?
   (ds/req :aggregateLikes) int?
   (ds/req :healthScore) float?
   (ds/req :spoonacularScore) float?
   (ds/req :pricePerServing) float?
   (ds/req :analyzedInstructions) (s/coll-of string?)
   (ds/req :cheap) boolean?
   (ds/req :creditsText) string?
   (ds/req :cuisines) (s/coll-of string?)
   (ds/req :dairyFree) boolean?
   (ds/req :diets) (s/coll-of string?)
   (ds/req :gaps) string?
   (ds/req :glutenFree) boolean?
   (ds/req :instructions) string?
   (ds/req :ketogenic) boolean?
   (ds/req :lowFodmap) boolean?
   (ds/req :occasions) (s/coll-of string?)
   (ds/req :sustainable) boolean?
   (ds/req :vegan) boolean?
   (ds/req :vegetarian) boolean?
   (ds/req :veryHealthy) boolean?
   (ds/req :veryPopular) boolean?
   (ds/req :whole30) boolean?
   (ds/req :weightWatcherSmartPoints) float?
   (ds/req :dishTypes) (s/coll-of string?)
   (ds/req :extendedIngredients) (s/coll-of get-recipe-information-200-response-extended-ingredients-inner-spec)
   (ds/req :summary) string?
   (ds/req :winePairing) get-recipe-information-200-response-wine-pairing-spec
   })

(def get-recipe-information-bulk-200-response-inner-spec
  (ds/spec
    {:name ::get-recipe-information-bulk-200-response-inner
     :spec get-recipe-information-bulk-200-response-inner-data}))
