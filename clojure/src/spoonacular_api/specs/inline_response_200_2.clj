(ns spoonacular-api.specs.inline-response-200-2
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-2-data
  {
   (ds/req :calories) float?
   (ds/req :carbs) string?
   (ds/req :fat) string?
   (ds/req :id) int?
   (ds/req :image) string?
   (ds/req :imageType) string?
   (ds/req :protein) string?
   (ds/req :title) string?
   })

(def inline-response-200-2-spec
  (ds/spec
    {:name ::inline-response-200-2
     :spec inline-response-200-2-data}))
