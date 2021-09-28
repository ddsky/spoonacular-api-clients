(ns spoonacular-api.specs.inline-response-200-38
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-38-days :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-38-data
  {
   (ds/req :days) (s/coll-of inline-response-200-38-days-spec)
   })

(def inline-response-200-38-spec
  (ds/spec
    {:name ::inline-response-200-38
     :spec inline-response-200-38-data}))
