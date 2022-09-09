(ns spoonacular-api.specs.get-recipe-ingredients-by-id-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-recipe-ingredients-by-id-200-response-ingredients-inner :refer :all]
            )
  (:import (java.io File)))


(def get-recipe-ingredients-by-id-200-response-data
  {
   (ds/req :ingredients) (s/coll-of get-recipe-ingredients-by-id-200-response-ingredients-inner-spec)
   })

(def get-recipe-ingredients-by-id-200-response-spec
  (ds/spec
    {:name ::get-recipe-ingredients-by-id-200-response
     :spec get-recipe-ingredients-by-id-200-response-data}))
