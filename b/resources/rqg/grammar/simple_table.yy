query:
 	select ;

select:
	SELECT * FROM BUCKET WHERE condition;

condition:
	numeric_condition | string_condition | (numeric_condition) AND (string_condition) | (string_condition) OR (numeric_condition) | (condition) AND (condition) | (condition) OR (condition);

order_by:
	string_field_list | numeric_field_list | string_field_list,numeric_field_list;

numeric_condition:
	numeric_field < numeric_value |
	numeric_field = numeric_value |
	numeric_field > numeric_value |
	numeric_field  >= numeric_value |
	numeric_field  <= numeric_value |
	(numeric_condition) AND (numeric_condition)|
	(numeric_condition) OR (numeric_condition)|
	NOT (numeric_condition) |
	numeric_between_condition |
	numeric_is_not_null |
	numeric_not_equals_condition |
	numeric_is_null |
	numeric_in_conidtion |
	numeric_is_not_missing |
	numeric_is_missing |
	numeric_is_valued |
	numeric_is_not_valued;

numeric_equals_condition:
	numeric_field EQUALS numeric_value | numeric_field = numeric_value | numeric_field == numeric_value ;

numeric_not_equals_condition:
	numeric_field NOT EQUALS numeric_value | numeric_field != numeric_value ;

numeric_in_conidtion:
	numeric_field IN [ numeric_field_list ];

numeric_between_condition:
	NUMERIC_FIELD BETWEEN LOWER_BOUND_VALUE and UPPER_BOUND_VALUE;

numeric_not_between_condition:
	NUMERIC_FIELD NOT BETWEEN LOWER_BOUND_VALUE and UPPER_BOUND_VALUE;

numeric_is_not_null:
	NUMERIC_FIELD IS NOT NULL;

numeric_is_missing:
	NUMERIC_FIELD IS MISSING;

numeric_is_not_missing:
	NUMERIC_FIELD IS NOT MISSING;

numeric_is_valued:
	NUMERIC_FIELD IS VALUED;

numeric_is_not_valued:
	NUMERIC_FIELD IS NOT VALUED;

numeric_is_null:
	NUMERIC_FIELD IS NULL;

numeric_field_list:
	LIST;

numeric_field:
	NUMERIC_FIELD;

numeric_value:
	NUMERIC_VALUE;

string_condition:
	string_field < string_values |
	string_field > string_values |
	string_field  >= string_values |
	string_field  <= string_values |
	(string_condition) AND (string_condition) |
	(string_condition) OR (string_condition) |
	string_not_between_condition |
	NOT (string_condition) |
	string_is_not_null |
	string_is_null |
	string_not_equals_condition |
	string_in_conidtion |
	string_like_condition |
	string_equals_condition |
	string_not_like_condition |
	string_is_not_missing |
	string_is_missing |
	string_is_valued |
	string_is_not_valued;

string_equals_condition:
	string_field EQUALS string_values | string_field = string_values | string_field == string_values;

string_not_equals_condition:
	string_field != string_values | string_field <> string_values ;

string_field:
	string_field IN [ string_field_list ];

string_between_condition:
	string_field BETWEEN LOWER_BOUND_VALUE and UPPER_BOUND_VALUE;

string_not_between_condition:
	string_field NOT BETWEEN LOWER_BOUND_VALUE and UPPER_BOUND_VALUE;

string_is_not_null:
	string_field IS NOT NULL;

string_in_conidtion:
	string_field IN [ string_field_list ];

string_is_null:
	string_field IS NULL;

string_like_condition:
	string_field LIKE 'STRING_VALUES%' | string_field LIKE '%STRING_VALUES' | string_field LIKE STRING_VALUES | string_field LIKE '%STRING_VALUES%';

string_not_like_condition:
	string_field NOT LIKE 'STRING_VALUES%' | string_field NOT LIKE '%STRING_VALUES' | string_field NOT LIKE STRING_VALUES |  string_field NOT LIKE '%STRING_VALUES%';

string_field_list:
	LIST;

string_is_missing:
	STRING_FIELD IS MISSING;

string_is_not_missing:
	STRING_FIELD IS NOT MISSING;

string_is_valued:
	STRING_FIELD IS VALUED;

string_is_not_valued:
	STRING_FIELD IS NOT VALUED;

string_field:
	STRING_FIELD;

string_values:
	STRING_VALUES;

bool_condition:
	bool_equals_condition | bool_not_equals_condition;

bool_equals_condition:
	bool_field EQUALS bool_value | bool_field = bool_value | bool_field == bool_value ;

bool_not_equals_condition:
	bool_field NOT EQUALS bool_value | bool_field != bool_value ;

bool_field:
	BOOL_FIELD;

bool_value:
	true | false;

