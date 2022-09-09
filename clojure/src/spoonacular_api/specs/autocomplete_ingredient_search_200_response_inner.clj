(ns spoonacular-api.specs.autocomplete-ingredient-search-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def autocomplete-ingredient-search-200-response-inner-data
  {
   (ds/req :name) string?
   (ds/req :image) string?
   (ds/opt :id) int?
   (ds/opt :aisle) string?
   (ds/opt :possibleUnits) (s/coll-of string?)
   })

(def autocomplete-ingredient-search-200-response-inner-spec
  (ds/spec
    {:name ::autocomplete-ingredient-search-200-response-inner
     :spec autocomplete-ingredient-search-200-response-inner-data}))
