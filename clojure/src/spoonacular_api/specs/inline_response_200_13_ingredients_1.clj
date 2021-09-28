(ns spoonacular-api.specs.inline-response-200-13-ingredients-1
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-13-ingredients-1-data
  {
   (ds/req :id) int?
   (ds/req :name) string?
   })

(def inline-response-200-13-ingredients-1-spec
  (ds/spec
    {:name ::inline-response-200-13-ingredients-1
     :spec inline-response-200-13-ingredients-1-data}))
