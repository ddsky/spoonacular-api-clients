(ns spoonacular-api.specs.inline-response-200-32
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-32-results :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-32-data
  {
   (ds/req :results) (s/coll-of inline-response-200-32-results-spec)
   })

(def inline-response-200-32-spec
  (ds/spec
    {:name ::inline-response-200-32
     :spec inline-response-200-32-data}))
