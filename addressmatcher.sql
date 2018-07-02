select
	uprn,
	organisation_name,
	department_name,
	sub_building_name,
	building_name,
	building_number,
	dependent_thoroughfare,
	thoroughfare,
	post_town,
	postcode,
	last_update_date,
	entry_date
from
	addressbase.deliverypointaddress
where
	postcode ilike 'LS17 5%'
	and end_date is null
order by
	organisation_name desc,
	department_name desc,
	building_name desc,
	building_number,
	postcode,
	last_update_date