(ns spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.get-analyzed-recipe-instructions-200-response-inner-steps-inner :refer :all]
            )
  (:import (java.io File)))


(def get-analyzed-recipe-instructions-200-response-inner-data
  {
   (ds/req :name) string?
   (ds/opt :steps) (s/coll-of get-analyzed-recipe-instructions-200-response-inner-steps-inner-spec)
   })

(def get-analyzed-recipe-instructions-200-response-inner-spec
  (ds/spec
    {:name ::get-analyzed-recipe-instructions-200-response-inner
     :spec get-analyzed-recipe-instructions-200-response-inner-data}))
