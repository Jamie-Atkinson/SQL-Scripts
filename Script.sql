copy(
	select
		dss_key,
		code,
		"name",
		address_line_1,
		address_line_2,
		address_line_3,
		address_line_4,
		address_line_5,
		postcode,
		open_date as "start-date",
		close_date as "end-date",
		organisation_sub_type_code,
		dss_record_start_date,
		dss_record_end_date,
		dss_system_created_date,
		dss_system_updated_date
	from
		newdata.ods_ccg
) to '/tmp/ccg.csv' delimiter ',' CSV HEADER;

