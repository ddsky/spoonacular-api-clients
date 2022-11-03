(ns spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            [spoonacular-api.specs.search-restaurants-200-response-restaurants-inner-local-hours-operational :refer :all]
            )
  (:import (java.io File)))


(def search-restaurants-200-response-restaurants-inner-local-hours-data
  {
   (ds/opt :operational) search-restaurants-200-response-restaurants-inner-local-hours-operational-spec
   (ds/opt :delivery) search-restaurants-200-response-restaurants-inner-local-hours-operational-spec
   (ds/opt :pickup) search-restaurants-200-response-restaurants-inner-local-hours-operational-spec
   (ds/opt :dine_in) search-restaurants-200-response-restaurants-inner-local-hours-operational-spec
   })

(def search-restaurants-200-response-restaurants-inner-local-hours-spec
  (ds/spec
    {:name ::search-restaurants-200-response-restaurants-inner-local-hours
     :spec search-restaurants-200-response-restaurants-inner-local-hours-data}))
