(ns spoonacular-api.specs.inline-response-200-5
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-5-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :imageType) string?
   (ds/req :readyInMinutes) int?
   (ds/req :servings) float?
   (ds/req :sourceUrl) string?
   })

(def inline-response-200-5-spec
  (ds/spec
    {:name ::inline-response-200-5
     :spec inline-response-200-5-data}))
