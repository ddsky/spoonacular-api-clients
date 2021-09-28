(ns spoonacular-api.specs.inline-response-200-13-parsed-instructions
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-13-steps :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-13-parsed-instructions-data
  {
   (ds/req :name) string?
   (ds/opt :steps) (s/coll-of inline-response-200-13-steps-spec)
   })

(def inline-response-200-13-parsed-instructions-spec
  (ds/spec
    {:name ::inline-response-200-13-parsed-instructions
     :spec inline-response-200-13-parsed-instructions-data}))
