(ns spoonacular-api.specs.get-recipe-equipment-by-id-200-response-equipment-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def get-recipe-equipment-by-id-200-response-equipment-inner-data
  {
   (ds/req :image) string?
   (ds/req :name) string?
   })

(def get-recipe-equipment-by-id-200-response-equipment-inner-spec
  (ds/spec
    {:name ::get-recipe-equipment-by-id-200-response-equipment-inner
     :spec get-recipe-equipment-by-id-200-response-equipment-inner-data}))
