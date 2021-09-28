(ns spoonacular-api.specs.inline-response-200-29
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-29-custom-foods :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-29-data
  {
   (ds/req :customFoods) (s/coll-of inline-response-200-29-custom-foods-spec)
   (ds/req :type) string?
   (ds/req :offset) int?
   (ds/req :number) int?
   })

(def inline-response-200-29-spec
  (ds/spec
    {:name ::inline-response-200-29
     :spec inline-response-200-29-data}))
