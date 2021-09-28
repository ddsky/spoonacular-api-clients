(ns spoonacular-api.specs.inline-response-200-49
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-49-data
  {
   (ds/req :answer) string?
   (ds/req :image) string?
   })

(def inline-response-200-49-spec
  (ds/spec
    {:name ::inline-response-200-49
     :spec inline-response-200-49-data}))
