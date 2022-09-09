(ns spoonacular-api.specs.get-recipe-equipment-by-id-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-equipment-by-id-200-response-equipment-inner :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-equipment-by-id-200-response-data
  {
   (ds/req :equipment) (s/coll-of get-recipe-equipment-by-id-200-response-equipment-inner-spec)
   })

(def get-recipe-equipment-by-id-200-response-spec
  (ds/spec
    {:name ::get-recipe-equipment-by-id-200-response
     :spec get-recipe-equipment-by-id-200-response-data}))
