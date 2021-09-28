(ns spoonacular-api.specs.inline-response-200-33
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-33-data
  {
   (ds/req :cleanTitle) string?
   (ds/req :image) string?
   (ds/req :category) string?
   (ds/req :breadcrumbs) (s/coll-of string?)
   (ds/req :usdaCode) int?
   })

(def inline-response-200-33-spec
  (ds/spec
    {:name ::inline-response-200-33
     :spec inline-response-200-33-data}))
