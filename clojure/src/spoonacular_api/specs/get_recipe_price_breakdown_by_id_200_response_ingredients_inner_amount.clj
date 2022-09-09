(ns spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric :refer :all]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-data
  {
   (ds/req :metric) get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric-spec
   (ds/req :us) get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-metric-spec
   })

(def get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-spec
  (ds/spec
    {:name ::get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount
     :spec get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-data}))
