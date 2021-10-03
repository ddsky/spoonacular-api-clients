(ns spoonacular-api.specs.inline-response-200-42
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-42-aisles :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-42-data
  {
   (ds/req :aisles) (s/coll-of inline-response-200-42-aisles-spec)
   (ds/req :cost) float?
   (ds/req :startDate) float?
   (ds/req :endDate) float?
   })

(def inline-response-200-42-spec
  (ds/spec
    {:name ::inline-response-200-42
     :spec inline-response-200-42-data}))
