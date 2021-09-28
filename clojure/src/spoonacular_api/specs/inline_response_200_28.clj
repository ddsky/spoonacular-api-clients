(ns spoonacular-api.specs.inline-response-200-28
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-28-ingredients :refer :all]
            [spoonacular-api.specs.inline-response-200-28-nutrition :refer :all]
            [spoonacular-api.specs.inline-response-200-28-servings :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-28-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :badges) (s/coll-of string?)
   (ds/req :importantBadges) (s/coll-of string?)
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/req :generatedText) string?
   (ds/req :imageType) string?
   (ds/opt :ingredientCount) int?
   (ds/req :ingredientList) string?
   (ds/req :ingredients) (s/coll-of inline-response-200-28-ingredients-spec)
   (ds/req :likes) float?
   (ds/req :nutrition) inline-response-200-28-nutrition-spec
   (ds/req :price) float?
   (ds/req :servings) inline-response-200-28-servings-spec
   (ds/req :spoonacularScore) float?
   })

(def inline-response-200-28-spec
  (ds/spec
    {:name ::inline-response-200-28
     :spec inline-response-200-28-data}))
