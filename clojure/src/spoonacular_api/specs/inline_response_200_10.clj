(ns spoonacular-api.specs.inline-response-200-10
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-10-ingredients :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-10-data
  {
   (ds/req :ingredients) (s/coll-of inline-response-200-10-ingredients-spec)
   (ds/req :totalCost) float?
   (ds/req :totalCostPerServing) float?
   })

(def inline-response-200-10-spec
  (ds/spec
    {:name ::inline-response-200-10
     :spec inline-response-200-10-data}))
