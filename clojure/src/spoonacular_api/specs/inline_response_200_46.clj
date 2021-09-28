(ns spoonacular-api.specs.inline-response-200-46
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-46-recommended-wines :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-46-data
  {
   (ds/req :recommendedWines) (s/coll-of inline-response-200-46-recommended-wines-spec)
   (ds/req :totalFound) int?
   })

(def inline-response-200-46-spec
  (ds/spec
    {:name ::inline-response-200-46
     :spec inline-response-200-46-data}))
