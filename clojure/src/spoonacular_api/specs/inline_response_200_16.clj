(ns spoonacular-api.specs.inline-response-200-16
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def inline-response-200-16-data
  {
   (ds/req :parsedInstructions) (s/coll-of any?)
   (ds/req :ingredients) (s/coll-of any?)
   (ds/req :equipment) (s/coll-of any?)
   })

(def inline-response-200-16-spec
  (ds/spec
    {:name ::inline-response-200-16
     :spec inline-response-200-16-data}))
