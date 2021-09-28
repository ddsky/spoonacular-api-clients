(ns spoonacular-api.specs.inline-response-200-12
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-12-data
  {
   (ds/req :calories) string?
   (ds/req :carbs) string?
   (ds/req :fat) string?
   (ds/req :protein) string?
   (ds/req :bad) (s/coll-of any?)
   (ds/req :good) (s/coll-of any?)
   })

(def inline-response-200-12-spec
  (ds/spec
    {:name ::inline-response-200-12
     :spec inline-response-200-12-data}))
