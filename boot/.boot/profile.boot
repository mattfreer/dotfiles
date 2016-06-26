(deftask cider "CIDER profile"
  []
  (require 'boot.repl)
  (swap! @(resolve 'boot.repl/*default-dependencies*)
         concat '[[org.clojure/tools.nrepl "0.2.12"]
                 [cider/cider-nrepl "0.10.0"]
                 [refactor-nrepl "2.0.0-SNAPSHOT"]])
  (swap! @(resolve 'boot.repl/*default-middleware*)
           concat '[cider.nrepl/cider-middleware
                   refactor-nrepl.middleware/wrap-refactor])
  identity)

