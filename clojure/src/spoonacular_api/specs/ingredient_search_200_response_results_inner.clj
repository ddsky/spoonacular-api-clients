(ns spoonacular-api.specs.ingredient-search-200-response-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ingredient-search-200-response-results-inner-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   (ds/req :image) string?
   })

(def ingredient-search-200-response-results-inner-spec
  (ds/spec
    {:name ::ingredient-search-200-response-results-inner
     :spec ingredient-search-200-response-results-inner-data}))
