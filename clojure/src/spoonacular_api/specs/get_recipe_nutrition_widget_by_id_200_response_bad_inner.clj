(ns spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-bad-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-recipe-nutrition-widget-by-id-200-response-bad-inner-data
  {
   (ds/req :title) string?
   (ds/req :amount) string?
   (ds/req :indented) boolean?
   (ds/req :percentOfDailyNeeds) float?
   })

(def get-recipe-nutrition-widget-by-id-200-response-bad-inner-spec
  (ds/spec
    {:name ::get-recipe-nutrition-widget-by-id-200-response-bad-inner
     :spec get-recipe-nutrition-widget-by-id-200-response-bad-inner-data}))
