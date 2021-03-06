copy (select
	"date",
	"cs-uri-stem",
	count( "x-edge-request-id" ),
	"x-host-header"
from
	logs.allregisterstrimmed
where
	"cs-uri-stem" ilike '/records.csv'
	or "cs-uri-stem" ilike '/records.tsv'
	or "cs-uri-stem" ilike '/records.json'
	or "cs-uri-stem" ilike '/records.xlsx'
	or "cs-uri-stem" ilike '/records.yaml'
	or "cs-uri-stem" ilike '/records.ttl'
	or "cs-uri-stem" ilike '/download-rsf'
group by
	date,
	"cs-uri-stem",
	"x-host-header") to '/tmp/cliff.csv' DELIMITER ',' CSV HEADER;