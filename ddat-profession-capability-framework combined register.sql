 copy(
	select
		"ddat-profession-capability-framework"."ddat-profession-capability-framework",
		"ddat-profession-capability-framework"."profession-capability-framework-skill-type",
		"ddat-profession-capability-framework-skill-type".name,
		"ddat-profession-capability-framework"."profession-capability-framework-job-family",
		"ddat-profession-capability-framework-job-family".name,
		"ddat-profession-capability-framework"."profession-capability-framework-role",
		"ddat-profession-capability-framework-role".name,
		"ddat-profession-capability-framework"."profession-capability-framework-role-level",
		"ddat-profession-capability-framework-role-level".name,
		"ddat-profession-capability-framework"."profession-capability-framework-skill",
		"ddat-profession-capability-framework-skill".description,
		"ddat-profession-capability-framework-skill".name,
		"ddat-profession-capability-framework"."profession-capability-framework-level",
		"ddat-profession-capability-framework-level".name,
		"ddat-profession-capability-framework-skill-level"."ddat-profession-capability-framework-skill-level",
		"ddat-profession-capability-framework-skill-level".description as "skill-level-description",
		"ddat-profession-capability-framework"."start-date",
		"ddat-profession-capability-framework"."end-date"
	from
		registers."ddat-profession-capability-framework"
	left outer join registers."ddat-profession-capability-framework-skill-type" on
		concat('ddat-profession-capability-framework-skill-type:',registers."ddat-profession-capability-framework-skill-type"."ddat-profession-capability-framework-skill-type") = "ddat-profession-capability-framework"."profession-capability-framework-skill-type"
	left outer join registers."ddat-profession-capability-framework-job-family" on
		concat('ddat-profession-capability-framework-job-family:',registers."ddat-profession-capability-framework-job-family"."ddat-profession-capability-framework-job-family") = "ddat-profession-capability-framework"."profession-capability-framework-job-family"
	left outer join registers."ddat-profession-capability-framework-role" on
		concat('ddat-profession-capability-framework-role:',registers."ddat-profession-capability-framework-role"."ddat-profession-capability-framework-role") = "ddat-profession-capability-framework"."profession-capability-framework-role"
	left outer join registers."ddat-profession-capability-framework-role-level" on
		concat('ddat-profession-capability-framework-role-level:',registers."ddat-profession-capability-framework-role-level"."ddat-profession-capability-framework-role-level") = "ddat-profession-capability-framework"."profession-capability-framework-role-level"
	left outer join registers."ddat-profession-capability-framework-skill" on
		concat('ddat-profession-capability-framework-skill:',registers."ddat-profession-capability-framework-skill"."ddat-profession-capability-framework-skill") = "ddat-profession-capability-framework"."profession-capability-framework-skill"
	left outer join registers."ddat-profession-capability-framework-level" on
		concat('ddat-profession-capability-framework-level:',registers."ddat-profession-capability-framework-level"."ddat-profession-capability-framework-level") = "ddat-profession-capability-framework"."profession-capability-framework-level"
	left outer join registers."ddat-profession-capability-framework-skill-level" on
		registers."ddat-profession-capability-framework-skill-level"."profession-capability-framework-level" = "ddat-profession-capability-framework"."profession-capability-framework-level"
		and registers."ddat-profession-capability-framework-skill-level"."profession-capability-framework-skill" = "ddat-profession-capability-framework"."profession-capability-framework-skill"
) to '/tmp/clean-data.csv' delimiter ',' CSV HEADER;