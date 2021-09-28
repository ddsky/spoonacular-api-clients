(ns spoonacular-api.specs.inline-response-200-37
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-5 :refer :all]
            [spoonacular-api.specs.inline-response-200-37-nutrients :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-37-data
  {
   (ds/req :meals) (s/coll-of inline-response-200-5-spec)
   (ds/req :nutrients) inline-response-200-37-nutrients-spec
   })

(def inline-response-200-37-spec
  (ds/spec
    {:name ::inline-response-200-37
     :spec inline-response-200-37-data}))
