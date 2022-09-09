(ns spoonacular-api.specs.compute-glycemic-load-200-response-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def compute-glycemic-load-200-response-ingredients-inner-data
  {
   (ds/req :id) int?
   (ds/req :original) string?
   (ds/req :glycemicIndex) float?
   (ds/req :glycemicLoad) float?
   })

(def compute-glycemic-load-200-response-ingredients-inner-spec
  (ds/spec
    {:name ::compute-glycemic-load-200-response-ingredients-inner
     :spec compute-glycemic-load-200-response-ingredients-inner-data}))
