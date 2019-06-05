# README

### Create index

`bundle exec rake food:create_new_index`

### Import data

`bundle exec rake food:es_bulk_import`

### Geo Location and Search

```cassandraql
GET /development-foods/_search
{
  "sort" : [
    {
      "_geo_distance" : {
        "location" : [106.70526, 10.772069],
        "order" : "asc",
        "unit" : "km"
      }
    }
  ],
  "query" : {
    "match_all" : {}
  }
}
```

