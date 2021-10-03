(ns spoonacular-api.specs.inline-response-200-48
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-48-data
  {
   (ds/req :category) string?
   (ds/req :probability) float?
   })

(def inline-response-200-48-spec
  (ds/spec
    {:name ::inline-response-200-48
     :spec inline-response-200-48-data}))
