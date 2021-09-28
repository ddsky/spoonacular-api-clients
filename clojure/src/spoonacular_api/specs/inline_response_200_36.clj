(ns spoonacular-api.specs.inline-response-200-36
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-28-nutrition :refer :all]
            [spoonacular-api.specs.inline-response-200-28-servings :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-36-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :restaurantChain) string?
   (ds/req :nutrition) inline-response-200-28-nutrition-spec
   (ds/req :badges) (s/coll-of string?)
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/opt :generatedText) string?
   (ds/req :imageType) string?
   (ds/req :likes) float?
   (ds/req :servings) inline-response-200-28-servings-spec
   (ds/opt :price) float?
   (ds/opt :spoonacularScore) float?
   })

(def inline-response-200-36-spec
  (ds/spec
    {:name ::inline-response-200-36
     :spec inline-response-200-36-data}))
