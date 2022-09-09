(ns spoonacular-api.specs.get-recipe-information-200-response-extended-ingredients-inner-measures-metric
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-recipe-information-200-response-extended-ingredients-inner-measures-metric-data
  {
   (ds/req :amount) float?
   (ds/req :unitLong) string?
   (ds/req :unitShort) string?
   })

(def get-recipe-information-200-response-extended-ingredients-inner-measures-metric-spec
  (ds/spec
    {:name ::get-recipe-information-200-response-extended-ingredients-inner-measures-metric
     :spec get-recipe-information-200-response-extended-ingredients-inner-measures-metric-data}))
