(ns spoonacular-api.specs.inline-response-200-15
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-15-data
  {
   (ds/req :url) string?
   })

(def inline-response-200-15-spec
  (ds/spec
    {:name ::inline-response-200-15
     :spec inline-response-200-15-data}))
