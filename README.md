# OpenAPI definition for OpenStreetMap

This repository aims at providing a Swagger definition for OpenStreetMap
which can then be used to auto-generate API clients for it.

[View the documentation here][1]

## How to contribute

You can contribute by extending the `swagger.yaml` file. To do this, you may
use the [online Swagger editor][2].

After you're done making changes, simply copy the contents to the `swagger.yaml`
file and create a pull request.

## Bundling the API definition into one single file

The API definition is split across multiple files
in order to improve maintainability. In order to have
it in one single file, use `swagger-cli`, like so:

    % swagger-cli bundle swagger.yaml -o _build/swagger.yaml -t yaml

Find the bundled API definition at `_build/swagger.yaml`.

## Regenerating the Swift client

Install `openapi-generator` and run:

    % rm -rf swift5-client; openapi-generator generate -i swagger.yaml -g swift5 -c config.json -o swift5-client

[1]: https://wtimme.github.io/openstreetmap-openapi/
[2]: https://editor.swagger.io/?url=https://wtimme.github.io/openstreetmap-openapi/swagger.yaml
