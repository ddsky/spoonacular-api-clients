(ns spoonacular-api.specs.inline-response-200-6-recipes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-3-extended-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-3-wine-pairing :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-6-recipes-data
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
   (ds/req :aggregateLikes) float?
   (ds/req :healthScore) float?
   (ds/req :spoonacularScore) float?
   (ds/req :pricePerServing) float?
   (ds/opt :analyzedInstructions) (s/coll-of any?)
   (ds/req :cheap) boolean?
   (ds/req :creditsText) string?
   (ds/opt :cuisines) (s/coll-of string?)
   (ds/req :dairyFree) boolean?
   (ds/opt :diets) (s/coll-of string?)
   (ds/req :gaps) string?
   (ds/req :glutenFree) boolean?
   (ds/req :instructions) string?
   (ds/req :ketogenic) boolean?
   (ds/req :lowFodmap) boolean?
   (ds/opt :occasions) (s/coll-of string?)
   (ds/req :sustainable) boolean?
   (ds/req :vegan) boolean?
   (ds/req :vegetarian) boolean?
   (ds/req :veryHealthy) boolean?
   (ds/req :veryPopular) boolean?
   (ds/req :whole30) boolean?
   (ds/req :weightWatcherSmartPoints) float?
   (ds/opt :dishTypes) (s/coll-of string?)
   (ds/opt :extendedIngredients) (s/coll-of inline-response-200-3-extended-ingredients-spec)
   (ds/req :summary) string?
   (ds/opt :winePairing) inline-response-200-3-wine-pairing-spec
   })

(def inline-response-200-6-recipes-spec
  (ds/spec
    {:name ::inline-response-200-6-recipes
     :spec inline-response-200-6-recipes-data}))
