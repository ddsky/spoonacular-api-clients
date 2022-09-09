(ns spoonacular-api.specs.generate-meal-plan-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-similar-recipes-200-response-inner :refer :all]
            [spoonacular-api.specs.generate-meal-plan-200-response-nutrients :refer :all]
            )
  (:import (java.io File)))


(def generate-meal-plan-200-response-data
  {
   (ds/req :meals) (s/coll-of get-similar-recipes-200-response-inner-spec)
   (ds/req :nutrients) generate-meal-plan-200-response-nutrients-spec
   })

(def generate-meal-plan-200-response-spec
  (ds/spec
    {:name ::generate-meal-plan-200-response
     :spec generate-meal-plan-200-response-data}))
