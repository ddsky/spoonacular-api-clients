(ns spoonacular-api.specs.inline-response-200-39
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-13-ingredients-1 :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-39-data
  {
   (ds/req :templates) (s/coll-of inline-response-200-13-ingredients-1-spec)
   })

(def inline-response-200-39-spec
  (ds/spec
    {:name ::inline-response-200-39
     :spec inline-response-200-39-data}))
