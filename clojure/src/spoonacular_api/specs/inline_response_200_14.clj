(ns spoonacular-api.specs.inline-response-200-14
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-14-data
  {
   (ds/req :id) int?
   (ds/req :summary) string?
   (ds/req :title) string?
   })

(def inline-response-200-14-spec
  (ds/spec
    {:name ::inline-response-200-14
     :spec inline-response-200-14-data}))
