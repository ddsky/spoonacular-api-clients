(ns spoonacular-api.specs.compute-glycemic-load-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.compute-glycemic-load-200-response-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def compute-glycemic-load-200-response-data
  {
   (ds/req :totalGlycemicLoad) float?
   (ds/req :ingredients) (s/coll-of compute-glycemic-load-200-response-ingredients-inner-spec)
   })

(def compute-glycemic-load-200-response-spec
  (ds/spec
    {:name ::compute-glycemic-load-200-response
     :spec compute-glycemic-load-200-response-data}))
