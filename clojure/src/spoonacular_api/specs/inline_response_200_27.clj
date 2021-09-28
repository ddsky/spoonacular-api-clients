(ns spoonacular-api.specs.inline-response-200-27
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-7 :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-27-data
  {
   (ds/req :products) (s/coll-of inline-response-200-7-spec)
   (ds/req :totalProducts) int?
   (ds/req :type) string?
   (ds/req :offset) int?
   (ds/req :number) int?
   })

(def inline-response-200-27-spec
  (ds/spec
    {:name ::inline-response-200-27
     :spec inline-response-200-27-data}))
