#!/bin/bash
for file in api/plus/*.mdx; do
  sed -i '/^```$/{N;s/^```\n\(GET\|POST\|PUT\|DELETE\|PATCH\|\/api\)/```text\n\1/}' "$file"
done
