(ns spoonacular-api.specs.search-site-content-200-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [spoonacular-api.specs.search-site-content-200-response-articles-inner :refer :all]
            [spoonacular-api.specs.search-site-content-200-response-articles-inner :refer :all]
            [spoonacular-api.specs.search-site-content-200-response-articles-inner :refer :all]
            [spoonacular-api.specs.search-site-content-200-response-articles-inner :refer :all]
            )
  (:import (java.io File)))


(def search-site-content-200-response-data
  {
   (ds/req :Articles) (s/coll-of search-site-content-200-response-articles-inner-spec)
   (ds/req :GroceryProducts) (s/coll-of search-site-content-200-response-articles-inner-spec)
   (ds/req :MenuItems) (s/coll-of search-site-content-200-response-articles-inner-spec)
   (ds/req :Recipes) (s/coll-of search-site-content-200-response-articles-inner-spec)
   })

(def search-site-content-200-response-spec
  (ds/spec
    {:name ::search-site-content-200-response
     :spec search-site-content-200-response-data}))
