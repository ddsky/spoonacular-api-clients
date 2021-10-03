(ns spoonacular-api.specs.inline-response-200-54
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-54-videos :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-54-data
  {
   (ds/req :videos) (s/coll-of inline-response-200-54-videos-spec)
   (ds/req :totalResults) int?
   })

(def inline-response-200-54-spec
  (ds/spec
    {:name ::inline-response-200-54
     :spec inline-response-200-54-data}))
