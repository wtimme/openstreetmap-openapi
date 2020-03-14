# Swagger definition for OpenStreetMap

This repository aims at providing a Swagger definition for OpenStreetMap
which can then be used to auto-generate API clients for it.

[View the documentation here][1]

## How to contribute

You can contribute by extending the `swagger.yaml` file. To do this, you may
use the [online Swagger editor][2].

After you're done making changes, simply copy the contents to the `swagger.yaml`
file and create a pull request.

### Regenerating the API client

Make sure you are using `swagger-codegen` **3.0.18 or later** and run:

    % swagger-codegen generate -i swagger.yml -l swift5 -c config.json -o swift5-client

[1]: https://wtimme.github.io/osm-swagger/
[2]: https://editor.swagger.io/?url=https://wtimme.github.io/osm-swagger/swagger.yaml
