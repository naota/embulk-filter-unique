# Unique filter plugin for Embulk

This filter drop duplicated entries. The uniqueness is checked over
selected columns.

TODO: Write short description here and embulk-filter-unique.gemspec file.

## Overview

* **Plugin type**: filter

## Configuration

- **columns**: list of columns to check uniqueness (required)

## Example

```yaml
filters:
  - type: unique
    columns:
      - foo
      - bar
      - baz
```


## Build

```
$ rake
```
