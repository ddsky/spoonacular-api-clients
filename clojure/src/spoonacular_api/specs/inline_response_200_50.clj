(ns spoonacular-api.specs.inline-response-200-50
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-50-data
  {
   (ds/req :annotations) (s/coll-of any?)
   })

(def inline-response-200-50-spec
  (ds/spec
    {:name ::inline-response-200-50
     :spec inline-response-200-50-data}))
