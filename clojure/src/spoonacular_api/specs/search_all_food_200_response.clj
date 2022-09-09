(ns spoonacular-api.specs.search-all-food-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-all-food-200-response-search-results-inner :refer :all]
            )
  (:import (java.io File)))


(def search-all-food-200-response-data
  {
   (ds/req :query) string?
   (ds/req :totalResults) int?
   (ds/req :limit) int?
   (ds/req :offset) int?
   (ds/req :searchResults) (s/coll-of search-all-food-200-response-search-results-inner-spec)
   })

(def search-all-food-200-response-spec
  (ds/spec
    {:name ::search-all-food-200-response
     :spec search-all-food-200-response-data}))
