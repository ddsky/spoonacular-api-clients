(ns spoonacular-api.specs.get-ingredient-substitutes-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-ingredient-substitutes-200-response-data
  {
   (ds/req :ingredient) string?
   (ds/req :substitutes) (s/coll-of string?)
   (ds/req :message) string?
   })

(def get-ingredient-substitutes-200-response-spec
  (ds/spec
    {:name ::get-ingredient-substitutes-200-response
     :spec get-ingredient-substitutes-200-response-data}))
