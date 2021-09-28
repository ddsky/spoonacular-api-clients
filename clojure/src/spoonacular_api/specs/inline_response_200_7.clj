(ns spoonacular-api.specs.inline-response-200-7
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-7-data
  {
   (ds/req :id) int?
   (ds/req :title) string?
   (ds/req :imageType) string?
   })

(def inline-response-200-7-spec
  (ds/spec
    {:name ::inline-response-200-7
     :spec inline-response-200-7-data}))
