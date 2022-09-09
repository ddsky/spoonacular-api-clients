(ns spoonacular-api.specs.search-all-food-200-response-search-results-inner-results-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def search-all-food-200-response-search-results-inner-results-inner-data
  {
   (ds/req :id) string?
   (ds/req :name) string?
   (ds/req :image) string?
   (ds/req :link) string?
   (ds/req :type) string?
   (ds/req :relevance) float?
   (ds/req :content) string?
   })

(def search-all-food-200-response-search-results-inner-results-inner-spec
  (ds/spec
    {:name ::search-all-food-200-response-search-results-inner-results-inner
     :spec search-all-food-200-response-search-results-inner-results-inner-data}))
