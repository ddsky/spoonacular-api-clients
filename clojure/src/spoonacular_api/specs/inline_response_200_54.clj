(ns spoonacular-api.specs.inline-response-200-54
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-54-data
  {
   (ds/req :text) string?
   })

(def inline-response-200-54-spec
  (ds/spec
    {:name ::inline-response-200-54
     :spec inline-response-200-54-data}))
