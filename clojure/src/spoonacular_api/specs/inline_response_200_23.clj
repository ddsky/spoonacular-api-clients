(ns spoonacular-api.specs.inline-response-200-23
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-23-ingredients :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-23-data
  {
   (ds/req :totalGlycemicLoad) float?
   (ds/req :ingredients) (s/coll-of inline-response-200-23-ingredients-spec)
   })

(def inline-response-200-23-spec
  (ds/spec
    {:name ::inline-response-200-23
     :spec inline-response-200-23-data}))
