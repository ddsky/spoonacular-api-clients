(ns spoonacular-api.specs.search-recipes-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-recipes-200-response-results-inner :refer :all]
            )
  (:import (java.io File)))


(def search-recipes-200-response-data
  {
   (ds/req :offset) int?
   (ds/req :number) int?
   (ds/req :results) (s/coll-of search-recipes-200-response-results-inner-spec)
   (ds/req :totalResults) int?
   })

(def search-recipes-200-response-spec
  (ds/spec
    {:name ::search-recipes-200-response
     :spec search-recipes-200-response-data}))
