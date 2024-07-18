(ns spoonacular-api.specs.search-result-data-points-inner
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs. :refer :all]
            )
  (:import (java.io File)))


(def search-result-data-points-inner-data
  {
   (ds/req :key) string?
   (ds/req :value) any-type-spec
   (ds/opt :show) boolean?
   })

(def search-result-data-points-inner-spec
  (ds/spec
    {:name ::search-result-data-points-inner
     :spec search-result-data-points-inner-data}))
