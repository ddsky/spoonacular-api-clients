(ns spoonacular-api.specs.analyze-a-recipe-search-query-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response-dishes-inner :refer :all]
            [spoonacular-api.specs.analyze-a-recipe-search-query-200-response-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def analyze-a-recipe-search-query-200-response-data
  {
   (ds/req :dishes) (s/coll-of analyze-a-recipe-search-query-200-response-dishes-inner-spec)
   (ds/req :ingredients) (s/coll-of analyze-a-recipe-search-query-200-response-ingredients-inner-spec)
   (ds/req :cuisines) (s/coll-of string?)
   (ds/req :modifiers) (s/coll-of string?)
   })

(def analyze-a-recipe-search-query-200-response-spec
  (ds/spec
    {:name ::analyze-a-recipe-search-query-200-response
     :spec analyze-a-recipe-search-query-200-response-data}))
