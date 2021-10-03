(ns spoonacular-api.specs.inline-response-200-49
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.inline-response-200-49-nutrition :refer :all]
            [spoonacular-api.specs.inline-response-200-49-category :refer :all]
            [spoonacular-api.specs.inline-response-200-49-recipes :refer :all]
            )
  (:import (java.io File)))


(def inline-response-200-49-data
  {
   (ds/req :nutrition) inline-response-200-49-nutrition-spec
   (ds/req :category) inline-response-200-49-category-spec
   (ds/req :recipes) (s/coll-of inline-response-200-49-recipes-spec)
   })

(def inline-response-200-49-spec
  (ds/spec
    {:name ::inline-response-200-49
     :spec inline-response-200-49-data}))
