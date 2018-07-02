select
	"date",
	--"c-ip",
	"cs-uri-stem",
	count("x-edge-request-id"),
	"x-host-header"
from
	logs.allregisterstrimmed
	where "cs-uri-stem" ilike '/records.ttl' or
	 "cs-uri-stem" ilike '/records.yaml' or
	 "cs-uri-stem" ilike '/records.csv' or
	 "cs-uri-stem" ilike '/records.xlsx' or
	 "cs-uri-stem" ilike '/records.json' or
	 "cs-uri-stem" ilike '/records.tsv' or
	 "cs-uri-stem" ilike '/download-rsf'
	group by date, "x-host-header", "cs-uri-stem"
	order by date desc