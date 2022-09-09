(ns spoonacular-api.specs.search-food-videos-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-food-videos-200-response-videos-inner :refer :all]
            )
  (:import (java.io File)))


(def search-food-videos-200-response-data
  {
   (ds/req :videos) (s/coll-of search-food-videos-200-response-videos-inner-spec)
   (ds/req :totalResults) int?
   })

(def search-food-videos-200-response-spec
  (ds/spec
    {:name ::search-food-videos-200-response
     :spec search-food-videos-200-response-data}))
