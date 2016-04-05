# rancher-metadata-proxy

A reverse proxy to expose Rancher's Metadata Service publicly.

## Usage

### Build

    $ docker build -t rancher-metadata-proxy .

### Run

Typically:

    $ docker run -itd rancher-metadata-proxy

#### Runtime Environment Variables

There should be a reasonable amount of flexibility using the available variables. If not please raise an issue so your use case can be covered!

- `HTTP_USER` - The HTTP basic auth user, default `rancher`
- `HTTP_PASSWORD` - The HTTP basic auth user's password, default `rancher`

### Tag and Push

    $ docker tag -f rancher-metadata-proxy flaccid/rancher-metadata-proxy
    $ docker push flaccid/rancher-metadata-proxy

License and Authors
-------------------
- Author: Chris Fordham (<chris@fordham-nagy.id.au>)

```text
Copyright 2016, Chris Fordham

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
