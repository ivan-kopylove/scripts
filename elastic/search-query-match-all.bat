curl -X GET "http://localhost:9200/myindex001/_search?pretty" -H "Content-Type: application/json" --data-binary "@search-query-match-all.json"
@PAUSE