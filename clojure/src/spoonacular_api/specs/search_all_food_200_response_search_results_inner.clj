(ns spoonacular-api.specs.search-all-food-200-response-search-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-result :refer :all]
            )
  (:import (java.io File)))


(def search-all-food-200-response-search-results-inner-data
  {
   (ds/req :name) string?
   (ds/req :totalResults) int?
   (ds/opt :results) (s/coll-of search-result-spec)
   })

(def search-all-food-200-response-search-results-inner-spec
  (ds/spec
    {:name ::search-all-food-200-response-search-results-inner
     :spec search-all-food-200-response-search-results-inner-data}))
