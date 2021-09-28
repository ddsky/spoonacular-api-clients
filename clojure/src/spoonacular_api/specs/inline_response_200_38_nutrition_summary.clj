(ns spoonacular-api.specs.inline-response-200-38-nutrition-summary
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-38-nutrition-summary-nutrients :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-38-nutrition-summary-data
  {
   (ds/req :nutrients) (s/coll-of inline-response-200-38-nutrition-summary-nutrients-spec)
   })

(def inline-response-200-38-nutrition-summary-spec
  (ds/spec
    {:name ::inline-response-200-38-nutrition-summary
     :spec inline-response-200-38-nutrition-summary-data}))
