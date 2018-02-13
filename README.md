# Con-pletionist App Solution

A JSON-only Rails back-end.

Routes are as follows:

```
     Prefix Verb   URI Pattern                Controller#Action
      talks GET    /talks(.:format)           talks#index
            POST   /talks(.:format)           talks#create
       talk GET    /talks/:id(.:format)       talks#show
            PATCH  /talks/:id(.:format)       talks#update
            PUT    /talks/:id(.:format)       talks#update
            DELETE /talks/:id(.:format)       talks#destroy
conferences GET    /conferences(.:format)     conferences#index
            POST   /conferences(.:format)     conferences#create
 conference GET    /conferences/:id(.:format) conferences#show
            PATCH  /conferences/:id(.:format) conferences#update
            PUT    /conferences/:id(.:format) conferences#update
            DELETE /conferences/:id(.:format) conferences#destroy
```

Important note: JSON endpoints must be specified with the `.:format` suffix – i.e. `localhost:3000/talks.json`.