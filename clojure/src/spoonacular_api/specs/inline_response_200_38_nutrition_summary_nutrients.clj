(ns spoonacular-api.specs.inline-response-200-38-nutrition-summary-nutrients
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-38-nutrition-summary-nutrients-data
  {
   (ds/req :name) string?
   (ds/req :amount) float?
   (ds/req :unit) string?
   (ds/req :percentDailyNeeds) float?
   })

(def inline-response-200-38-nutrition-summary-nutrients-spec
  (ds/spec
    {:name ::inline-response-200-38-nutrition-summary-nutrients
     :spec inline-response-200-38-nutrition-summary-nutrients-data}))
