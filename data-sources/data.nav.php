<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcenav extends Datasource{

		public $dsParamROOTELEMENT = 'nav';
		public $dsParamORDER = 'asc';
		public $dsParamGROUP = '4';
		public $dsParamPAGINATERESULTS = 'no';
		public $dsParamLIMIT = '1';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'title';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

		public $dsParamFILTERS = array(
				'6' => 'yes',
		);

		public $dsParamINCLUDEDELEMENTS = array(
				'title'
		);


		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Nav',
				'author' => array(
					'name' => 'Stephen Bau',
					'website' => 'http://home/sym/pears',
					'email' => 'stephen@domain7.com'),
				'version' => 'Symphony 2.2.5',
				'release-date' => '2012-04-20T20:34:18+00:00'
			);
		}

		public function getSource(){
			return '2';
		}

		public function allowEditorToParse(){
			return true;
		}

		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			

			return $result;
		}

	}
