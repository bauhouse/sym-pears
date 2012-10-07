<?php
	$settings = array(


		###### ADMIN ######
		'admin' => array(
			'max_upload_size' => '5242880',
		),
		########


		###### SYMPHONY ######
		'symphony' => array(
			'pagination_maximum_rows' => '20',
			'lang' => 'en',
			'pages_table_nest_children' => 'no',
			'session_gc_divisor' => '10',
			'version' => '2.3',
			'cookie_prefix' => 'sym-',
		),
		########


		###### LOG ######
		'log' => array(
			'archive' => '1',
			'maxsize' => '102400',
		),
		########


		###### IMAGE ######
		'image' => array(
			'cache' => '1',
			'quality' => '90',
		),
		########


		###### DATABASE ######
		'database' => array(
			'query_caching' => 'on',
			'host' => 'localhost',
			'port' => '3306',
			'user' => null,
			'password' => null,
			'db' => null,
			'tbl_prefix' => 'sym_',
		),
		########


		###### PUBLIC ######
		'public' => array(
			'display_event_xml_in_source' => 'no',
		),
		########


		###### GENERAL ######
		'general' => array(
			'useragent' => 'Symphony/2.3',
			'sitename' => 'Pears',
		),
		########


		###### FILE ######
		'file' => array(
			'write_mode' => '0644',
		),
		########


		###### DIRECTORY ######
		'directory' => array(
			'write_mode' => '0755',
		),
		########


		###### REGION ######
		'region' => array(
			'time_format' => 'g:i a',
			'date_format' => 'd F Y',
			'datetime_separator' => ' ',
			'timezone' => 'America/Vancouver',
		),
		########


		###### MAINTENANCE_MODE ######
		'maintenance_mode' => array(
			'enabled' => 'no',
		),
		########


		###### DUMP_DB ######
		'dump_db' => array(
			'last_sync' => '2012-10-07T07:33:28-07:00',
		),
		########


		###### SORTING ######
		'sorting' => array(
			'section_categories_sortby' => '2',
			'section_categories_order' => 'asc',
			'section_patterns_sortby' => '10',
			'section_patterns_order' => 'asc',
		),
		########
	);
