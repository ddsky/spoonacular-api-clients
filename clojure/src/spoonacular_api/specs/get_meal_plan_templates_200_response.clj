(ns spoonacular-api.specs.get-meal-plan-templates-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def get-meal-plan-templates-200-response-data
  {
   (ds/req :templates) (s/coll-of get-analyzed-recipe-instructions-200-response-ingredients-inner-spec)
   })

(def get-meal-plan-templates-200-response-spec
  (ds/spec
    {:name ::get-meal-plan-templates-200-response
     :spec get-meal-plan-templates-200-response-data}))
