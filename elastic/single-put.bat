curl -X PUT "http://localhost:9200/customer/_doc/1?pretty" -H "Content-Type: application/json" --data-binary "@single-put.json"
@PAUSE