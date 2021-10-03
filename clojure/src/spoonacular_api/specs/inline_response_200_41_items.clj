(ns spoonacular-api.specs.inline-response-200-41-items
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-41-value :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-41-items-data
  {
   (ds/req :id) int?
   (ds/req :slot) int?
   (ds/req :position) int?
   (ds/req :type) string?
   (ds/opt :value) inline-response-200-41-value-spec
   })

(def inline-response-200-41-items-spec
  (ds/spec
    {:name ::inline-response-200-41-items
     :spec inline-response-200-41-items-data}))
