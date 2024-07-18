(ns spoonacular-api.specs.search-site-content-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-result :refer :all]
            [spoonacular-api.specs.search-result :refer :all]
            [spoonacular-api.specs.search-result :refer :all]
            [spoonacular-api.specs.search-result :refer :all]
            )
  (:import (java.io File)))


(def search-site-content-200-response-data
  {
   (ds/req :Articles) (s/coll-of search-result-spec)
   (ds/req :GroceryProducts) (s/coll-of search-result-spec)
   (ds/req :MenuItems) (s/coll-of search-result-spec)
   (ds/req :Recipes) (s/coll-of search-result-spec)
   })

(def search-site-content-200-response-spec
  (ds/spec
    {:name ::search-site-content-200-response
     :spec search-site-content-200-response-data}))
