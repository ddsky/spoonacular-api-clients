(ns spoonacular-api.specs.get-shopping-list-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-shopping-list-200-response-aisles-inner :refer :all]
            )
  (:import (java.io File)))


(def get-shopping-list-200-response-data
  {
   (ds/req :aisles) (s/coll-of get-shopping-list-200-response-aisles-inner-spec)
   (ds/req :cost) float?
   (ds/req :startDate) float?
   (ds/req :endDate) float?
   })

(def get-shopping-list-200-response-spec
  (ds/spec
    {:name ::get-shopping-list-200-response
     :spec get-shopping-list-200-response-data}))
