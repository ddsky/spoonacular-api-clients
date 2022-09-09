(ns spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric-data
  {
   (ds/req :unit) string?
   (ds/req :value) float?
   })

(def get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric-spec
  (ds/spec
    {:name ::get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric
     :spec get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric-data}))
