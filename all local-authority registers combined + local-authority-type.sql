SELECT 
    "local-authority-eng".register,
    "local-authority-eng"."phase",
    "local-authority-eng"."index-entry-number",
    "local-authority-eng"."entry-number",
    "local-authority-eng"."entry-timestamp",
    "local-authority-eng"."key",
    "local-authority-eng"."local-authority-eng" AS "local-authority",
    "local-authority-type"."name" AS "local-authority-type",
    "local-authority-eng"."name",
    "local-authority-eng"."official-name",
    "local-authority-eng"."start-date",
    "local-authority-eng"."end-date"
FROM
    "local-authority-eng"
        LEFT JOIN
    "local-authority-type" ON "local-authority-eng"."local-authority-type" = "local-authority-type"."local-authority-type" 
UNION SELECT 
    "local-authority-sct".register,
    "local-authority-sct"."phase",
    "local-authority-sct"."index-entry-number",
    "local-authority-sct"."entry-number",
    "local-authority-sct"."entry-timestamp",
    "local-authority-sct"."key",
    "local-authority-sct"."local-authority-sct" AS "local-authority",
    "local-authority-type"."name" AS "local-authority-type",
    "local-authority-sct"."name",
    "local-authority-sct"."official-name",
    "local-authority-sct"."start-date",
    "local-authority-sct"."end-date"
FROM
    "local-authority-sct"
        LEFT JOIN
    "local-authority-type" ON "local-authority-sct"."local-authority-type" = "local-authority-type"."local-authority-type" 
UNION SELECT 
    "principal-local-authority".register,
    "principal-local-authority"."phase",
    "principal-local-authority"."index-entry-number",
    "principal-local-authority"."entry-number",
    "principal-local-authority"."entry-timestamp",
    "principal-local-authority"."key",
    "principal-local-authority"."principal-local-authority" AS "local-authority",
    NULL AS "local-authority-type",
    "principal-local-authority"."name",
    "principal-local-authority"."official-name",
    "principal-local-authority"."start-date",
    "principal-local-authority"."end-date"
FROM
    "principal-local-authority";