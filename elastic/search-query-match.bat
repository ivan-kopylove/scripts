curl -X GET "localhost:9200/bank/_search?pretty" -H "Content-Type: application/json" --data-binary "@search-query-match.json"
@PAUSE