(ns spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-price-breakdown-by-id-200-response-ingredients-inner-data
  {
   (ds/opt :amount) get-recipe-price-breakdown-by-id-200-response-ingredients-inner-amount-spec
   (ds/req :image) string?
   (ds/req :name) string?
   (ds/req :price) float?
   })

(def get-recipe-price-breakdown-by-id-200-response-ingredients-inner-spec
  (ds/spec
    {:name ::get-recipe-price-breakdown-by-id-200-response-ingredients-inner
     :spec get-recipe-price-breakdown-by-id-200-response-ingredients-inner-data}))
