(ns spoonacular-api.specs.search-result
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-result-data-points-inner :refer :all]
            )
  (:import (java.io File)))


(def search-result-data
  {
   (ds/opt :dataPoints) (s/coll-of search-result-data-points-inner-spec)
   (ds/opt :image) string?
   (ds/opt :link) string?
   (ds/req :name) string?
   (ds/opt :type) string?
   (ds/opt :kvtable) string?
   (ds/opt :content) string?
   (ds/opt :id) int?
   (ds/opt :relevance) float?
   })

(def search-result-spec
  (ds/spec
    {:name ::search-result
     :spec search-result-data}))
