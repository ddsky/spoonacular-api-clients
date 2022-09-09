(ns spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-bad-inner :refer :all]
            [spoonacular-api.specs.get-recipe-nutrition-widget-by-id-200-response-good-inner :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-nutrition-widget-by-id-200-response-data
  {
   (ds/req :calories) string?
   (ds/req :carbs) string?
   (ds/req :fat) string?
   (ds/req :protein) string?
   (ds/req :bad) (s/coll-of get-recipe-nutrition-widget-by-id-200-response-bad-inner-spec)
   (ds/req :good) (s/coll-of get-recipe-nutrition-widget-by-id-200-response-good-inner-spec)
   })

(def get-recipe-nutrition-widget-by-id-200-response-spec
  (ds/spec
    {:name ::get-recipe-nutrition-widget-by-id-200-response
     :spec get-recipe-nutrition-widget-by-id-200-response-data}))
