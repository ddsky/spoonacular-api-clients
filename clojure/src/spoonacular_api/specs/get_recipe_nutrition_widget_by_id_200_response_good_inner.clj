(ns spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-good-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-recipe-nutrition-widget-by-id-200-response-good-inner-data
  {
   (ds/req :amount) string?
   (ds/req :indented) boolean?
   (ds/req :percentOfDailyNeeds) float?
   (ds/req :title) string?
   })

(def get-recipe-nutrition-widget-by-id-200-response-good-inner-spec
  (ds/spec
    {:name ::get-recipe-nutrition-widget-by-id-200-response-good-inner
     :spec get-recipe-nutrition-widget-by-id-200-response-good-inner-data}))
