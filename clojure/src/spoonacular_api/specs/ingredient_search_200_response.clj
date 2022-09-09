(ns spoonacular-api.specs.ingredient-search-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.ingredient-search-200-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def ingredient-search-200-response-data
  {
   (ds/req :results) (s/coll-of ingredient-search-200-response-results-inner-spec)
   (ds/req :offset) int?
   (ds/req :number) int?
   (ds/req :totalResults) int?
   })

(def ingredient-search-200-response-spec
  (ds/spec
    {:name ::ingredient-search-200-response
     :spec ingredient-search-200-response-data}))
