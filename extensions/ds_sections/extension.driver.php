<?php

	require_once 'lib/sectionsdatasource.php';
	
	Class Extension_DS_Sections extends Extension {
		public function about() {
			return array(
				'name'			=> 'Sections',
				'version'		=> '1.0.0',
				'release-date'	=> '2010-03-02',
				'type'			=> array(
					'Data Source', 'Core'
				),
				'author'		=> array(
					'name'			=> 'Symphony Team',
					'website'		=> 'http://symphony-cms.com/',
					'email'			=> 'team@symphony-cms.com'
				),
				'provides'		=> array(
					'datasource_template'
				),
				'description'	=> 'Create data sources from an XML string.'
			);
		}
		
		public function prepare(array $data=NULL, DataSource $datasource=NULL) {

			if(is_null($datasource)){
				$datasource = new SectionsDataSource;
			}

			if(!is_null($data)){

				if(isset($data['about']['name'])) $datasource->about()->name = $data['about']['name'];
				$datasource->parameters()->section = $data['section'];
				
				if(isset($data['conditions']) && is_array($data['conditions'])){
					foreach($data['conditions']['parameter'] as $index => $parameter){
						$datasource->parameters()->conditions[$index] = array(
							'parameter' => $parameter,
							'logic' => $data['conditions']['logic'][$index], 
							'action' => $data['conditions']['action'][$index]
						);
					}
				}
				
				if(isset($data['filter']) && is_array($data['filter'])){
					$datasource->parameters()->filter = $data['filter'];
				}
				
				$datasource->parameters()->{'redirect-404-on-empty'} = (isset($data['redirect-404-on-empty']) && $data['redirect-404-on-empty'] == 'yes');
				$datasource->parameters()->{'append-pagination'} = (isset($data['append-pagination']) && $data['append-pagination'] == 'yes');
				$datasource->parameters()->{'append-associated-entry-count'} = (isset($data['append-associated-entry-count']) && $data['append-associated-entry-count'] == 'yes');
				$datasource->parameters()->{'html-encode'} = (isset($data['html-encode']) && $data['html-encode'] == 'yes');
				
				if(isset($data['sort-field'])) $datasource->parameters()->{'sort-field'} = $data['sort-field'];
				if(isset($data['sort-order'])) $datasource->parameters()->{'sort-order'} = $data['sort-order'];
				if(isset($data['limit'])) $datasource->parameters()->{'limit'} = $data['limit'];
				if(isset($data['page'])) $datasource->parameters()->{'page'} = $data['page'];

				$datasource->parameters()->{'included-elements'} = (array)$data['included-elements'];
				$datasource->parameters()->{'parameter-output'} = (array)$data['parameter-output'];

			}

			return $datasource;

		}
		
		public function view(Datasource $datasource, XMLElement &$wrapper, MessageStack $errors) {
			
			$page = Administration::instance()->Page;
			$page->addScriptToHead(URL . '/extensions/ds_sections/assets/view.js', 55533140);
			
		//	Essentials --------------------------------------------------------
			
			$fieldset = new XMLElement('fieldset');
			$fieldset->setAttribute('class', 'settings');
			$fieldset->appendChild(new XMLElement('legend', __('Essentials')));
			
			$group = new XMLElement('div');
			$group->setAttribute('class', 'group');
			
			// Name:
			$label = Widget::Label(__('Name'));
			$input = Widget::Input('fields[about][name]', General::sanitize($datasource->about()->name));
			$label->appendChild($input);

			if (isset($errors->{'about::name'})) {
				$label = Widget::wrapFormElementWithError($label, $errors->{'about::name'});
			}
			
			$group->appendChild($label);
			
			// Section:
			$sectionManager = SectionManager::instance();
		    $sections = $sectionManager->fetch(NULL, 'ASC', 'name');
			$field_groups = $options = array();
			
			if (is_array($sections) && !empty($sections)) {
				foreach ((array)$sections as $section) {
					$field_groups[$section->get('id')] = array(
						'fields'	=> $section->fetchFields(),
						'section'	=> $section
					);
				}
				
				foreach ($sections as $s) {
					$options[] = array($s->get('id'), ($datasource->parameters()->source == $s->get('id')), $s->get('name'));
				}
			}
			
			$label = Widget::Label(__('Section'));
			$label->appendChild(Widget::Select('fields[section]', $options, array('id' => 'context')));
			$group->appendChild($label);
			
			$fieldset->appendChild($group);
			$wrapper->appendChild($fieldset);
			
		//	Conditions ---------------------------------------------------------

			$fieldset = new XMLElement('fieldset');
			$fieldset->setAttribute('class', 'settings');
			$fieldset->appendChild(new XMLElement('legend', __('Conditions')));
		
			$help = new XMLElement('p');
			$help->setAttribute('class', 'help');
			$help->setValue('<code>$param</code>');
			$fieldset->appendChild($help);
		
			$conditionals_container = new XMLElement('div');
			$ol = new XMLElement('ol');
			$ol->setAttribute('class', 'filters-duplicator');
			
			if(is_array($datasource->parameters()->conditions) && !empty($datasource->parameters()->conditions)){
				foreach($datasource->parameters()->conditions as $condition){
					$li = new XMLElement('li');
					$li->setAttribute('class', 'unique');

					$li->appendChild(new XMLElement('h4', 'When'));
					$group = new XMLElement('div');
					$group->setAttribute('class', 'group triple');

					// Parameter
					$label = new XMLElement('label', 'Parameter');
					$label->appendChild(Widget::input('fields[conditions][parameter][]', $condition['parameter']));
					$group->appendChild($label);

					// Logic
					$label = new XMLElement('label', 'Logic');
					$label->appendChild(Widget::select('fields[conditions][logic][]', array(
						array('set', ($condition['logic'] == 'set'), 'is set'),
						array('not-set', ($condition['logic'] == 'not-set'), 'is not set'),
					), array('class' => 'filtered')));
					$group->appendChild($label);

					// Action
					$label = new XMLElement('label', 'Action');
					$label->appendChild(Widget::select('fields[conditions][action][]', array(
						//array('label' => 'Execution', 'options' => array(
							array('execute', ($condition['action'] == 'execute'), 'Execute'),
							array('do-not-execute', ($condition['action'] == 'do-not-execute'), 'Do not Execute'),
						//)),
						//array('label' => 'Redirect', 'options' => array(
						//	array('redirect:404', false, '404'),
						//	array('redirect:/about/me/', false, '/about/me/'),
						//)),
					), array('class' => 'filtered')));

					$group->appendChild($label);
					$li->appendChild($group);
					$ol->appendChild($li);
				}
			}
		
			// Conditionals Template:
			$li = new XMLElement('li');
			$li->setAttribute('class', 'unique template');
		
			$li->appendChild(new XMLElement('h4', 'When'));
			$group = new XMLElement('div');
			$group->setAttribute('class', 'group triple');
		
			// Parameter
			$label = new XMLElement('label', 'Parameter');
			$label->appendChild(Widget::input('fields[conditions][parameter][]'));
			$group->appendChild($label);
		
			// Logic
			$label = new XMLElement('label', 'Logic');
			$label->appendChild(Widget::select('fields[conditions][logic][]', array(
				array('set', false, 'is set'),
				array('not-set', false, 'is not set'),
			), array('class' => 'filtered')));
			$group->appendChild($label);
		
			// Action
			$label = new XMLElement('label', 'Action');
			$label->appendChild(Widget::select('fields[conditions][action][]', array(
				//array('label' => 'Execution', 'options' => array(
					array('execute', false, 'Execute'),
					array('do-not-execute', false, 'Do not Execute'),
				//)),
				//array('label' => 'Redirect', 'options' => array(
				//	array('redirect:404', false, '404'),
				//	array('redirect:/about/me/', false, '/about/me/'),
				//)),
			), array('class' => 'filtered')));
			
			$group->appendChild($label);
			$li->appendChild($group);
			$ol->appendChild($li);
		
			$conditionals_container->appendChild($ol);
			$fieldset->appendChild($conditionals_container);
		
			$wrapper->appendChild($fieldset);

		//	Filtering ---------------------------------------------------------
			
			$fieldset = new XMLElement('fieldset');
			$fieldset->setAttribute('class', 'settings');
			$fieldset->appendChild(new XMLElement('legend', __('Filtering')));
			
			$help = new XMLElement('p');
			$help->setAttribute('class', 'help');
			$help->setValue(__('<code>{$param}</code> or <code>Value</code>'));
			$fieldset->appendChild($help);
			
			$container_filter_results = new XMLElement('div');
			$fieldset->appendChild($container_filter_results);
			
		//	Redirect/404 ------------------------------------------------------
		/*	
			$label = Widget::Label(__('Required URL Parameter <i>Optional</i>'));
			$label->appendChild(Widget::Input('fields[required_url_param]', $datasource->parameters()->required_url_param));
			$fieldset->appendChild($label);
			
			$p = new XMLElement('p', __('An empty result will be returned when this parameter does not have a value. Do not wrap the parameter with curly-braces.'));
			$p->setAttribute('class', 'help');
			$fieldset->appendChild($p);
		*/	
			// Can redirect on empty:
			$fieldset->appendChild(Widget::Input('fields[redirect-404-on-empty]', 'no', 'hidden'));
			
			$label = Widget::Label();
			$input = Widget::Input('fields[redirect-404-on-empty]', 'yes', 'checkbox');
		
			if ($datasource->parameters()->{'redirect-404-on-empty'} == true) {
				$input->setAttribute('checked', 'checked');
			}
			
			$label->setValue(__('%s Redirect to 404 page when no results are found', array($input->generate(false))));
			$fieldset->appendChild($label);

			$wrapper->appendChild($fieldset);
		
			
		//	Sorting -----------------------------------------------------------
			
			$fieldset = new XMLElement('fieldset');
			$fieldset->setAttribute('class', 'settings');
			$fieldset->appendChild(new XMLElement('legend', __('Sorting')));
			
			$group = new XMLElement('div');
			$group->setAttribute('class', 'group');
			
			$container_sort_by = new XMLElement('div');
			$group->appendChild($container_sort_by);
			
			$label = Widget::Label(__('Sort Order'));
			
			$options = array(
				array('asc', ('asc' == $datasource->parameters()->{'sort-order'}), __('Acending')),
				array('desc', ('desc' == $datasource->parameters()->{'sort-order'}), __('Descending')),
				array('random', ('random' == $datasource->parameters()->{'sort-order'}), __('Random')),
			);
			
			$label->appendChild(Widget::Select('fields[sort-order]', $options));
			$group->appendChild($label);
			
			$fieldset->appendChild($group);
			$wrapper->appendChild($fieldset);
			
		//	Limiting ----------------------------------------------------------
			
			$fieldset = new XMLElement('fieldset');
			$fieldset->setAttribute('class', 'settings');
			$fieldset->appendChild(new XMLElement('legend', __('Limiting')));
			
			$help = new XMLElement('p');
			$help->setAttribute('class', 'help');
			$help->setValue(__('<code>{$param}</code> or <code>Value</code>'));
			$fieldset->appendChild($help);
			
			$group = new XMLElement('div');
			$group->setAttribute('class', 'group');
			
			$label = Widget::Label();
			$input = Widget::Input('fields[limit]', $datasource->parameters()->limit, NULL, array('size' => '6'));
			$label->setValue(__('Show a maximum of %s results', array($input->generate(false))));
			
			if (isset($errors->limit)) {
				$label = Widget::wrapFormElementWithError($label, $errors->limit);
			}
			
			$group->appendChild($label);
			
			$label = Widget::Label();
			$input = Widget::Input('fields[page]', $datasource->parameters()->page, NULL, array('size' => '6'));
			$label->setValue(__('Show page %s of results', array($input->generate(false))));
			
			if (isset($errors->page)) {
				$label = Widget::wrapFormElementWithError($label, $errors->page);
			}
			
			$group->appendChild($label);
			$fieldset->appendChild($group);

			$wrapper->appendChild($fieldset);
			
		//	Output options ----------------------------------------------------
			
			$fieldset = new XMLElement('fieldset');
			$fieldset->setAttribute('class', 'settings');
			$fieldset->appendChild(new XMLElement('legend', __('Output Options')));
			
			$group = new XMLElement('div');
			$group->setAttribute('class', 'group');
			
			$container_parameter_output = new XMLElement('div');
			$group->appendChild($container_parameter_output);
			
			$container_xml_output = new XMLElement('div');
			$group->appendChild($container_xml_output);

			$fieldset->appendChild($group);

			$group = new XMLElement('div');
			$group->setAttribute('class', 'group');

			$fieldset->appendChild(Widget::Input('fields[append-pagination]', 'no', 'hidden'));
			
			$label = Widget::Label();
			$input = Widget::Input('fields[append-pagination]', 'yes', 'checkbox');
			
			if ($datasource->parameters()->{'append-pagination'} == true) {
				$input->setAttribute('checked', 'checked');
			}
			
			$label->setValue(__('%s Append pagination data', array($input->generate(false))));
			$group->appendChild($label);
			
			$fieldset->appendChild(Widget::Input('fields[append-associated-entry-count]', 'no', 'hidden'));
			
			$label = Widget::Label();
			$input = Widget::Input('fields[append-associated-entry-count]', 'yes', 'checkbox');
			
			if ($datasource->parameters()->{'append-associated-entry-count'} == true) {
				$input->setAttribute('checked', 'checked');
			}
			
			$label->setValue(__('%s Append entry count', array($input->generate(false))));
			$group->appendChild($label);
			
			$label = Widget::Label();
			$input = Widget::Input('fields[html-encode]', 'yes', 'checkbox');
			
			if ($datasource->parameters()->{'html-encode'} == true) {
				$input->setAttribute('checked', 'checked');
			}
			
			$label->setValue(__('%s HTML-encode text', array($input->generate(false))));
			$group->appendChild($label);
						
			$fieldset->appendChild($group);
			
			$wrapper->appendChild($fieldset);
			
		//	Build contexts ----------------------------------------------------

			foreach ($field_groups as $section_id => $section_data) {
				$section = $section_data['section'];
				$section_handle = $section->get('handle');
				$section_active = ($datasource->parameters()->section == $section_id);
				$filter_data = $datasource->parameters()->filter;
				
				// Filters:
				$context = new XMLElement('div');
				$context->setAttribute('class', 'context context-' . $section_id);
				
				$ol = new XMLElement('ol');
				$ol->setAttribute('class', 'filters-duplicator');
				
				if (isset($filter_data['id'])) {
					$li = new XMLElement('li');
					$li->setAttribute('class', 'unique');
					$li->appendChild(new XMLElement('h4', __('System ID')));
					$label = Widget::Label(__('Value'));
					$label->appendChild(Widget::Input(
						"fields[filter][id]", General::sanitize($filter_data['id'])
					));
					$li->appendChild($label);
					$ol->appendChild($li);
				}
				
				$li = new XMLElement('li');
				$li->setAttribute('class', 'unique template');
				$li->appendChild(new XMLElement('h4', __('System ID')));
				$label = Widget::Label(__('Value'));
				$label->appendChild(Widget::Input("fields[filter][id]"));
				$li->appendChild($label);
				$ol->appendChild($li);
				
				if (is_array($section_data['fields']) && !empty($section_data['fields'])) {
					foreach ($section_data['fields'] as $input) {
						if (!$input->canFilter()) continue;
						
						$field_id = $input->get('id');
						
						if (isset($filter_data[$field_id])) {
							$filter = new XMLElement('li');
							$filter->setAttribute('class', 'unique');
							$input->displayDatasourceFilterPanel(
								$filter, $filter_data[$field_id],
								$errors->$field_id//, $section->get('id')
							);
							$ol->appendChild($filter);
						}
						
						$filter = new XMLElement('li');
						$filter->setAttribute('class', 'unique template');
						$input->displayDatasourceFilterPanel($filter, null, null); //, $section->get('id'));
						$ol->appendChild($filter);
					}
				}
				
				$context->appendChild($ol);
				$container_filter_results->appendChild($context);

				// Select boxes:
				$sort_by_options = array(
					array('system:id', ($section_active and $datasource->parameters()->{'sort-field'} == 'system:id'), __('System ID')),
					array('system:date', ($section_active and $datasource->parameters()->{'sort-field'} == 'system:date'), __('System Date')),
				);
				$options_parameter_output = array(				
					array(
						'system:id',
						($section_active and in_array('system:id', $datasource->parameters()->{'parameter-output'})),
						__('System ID')
					),
					array(
						'system:date',
						($section_active and in_array('system:date', $datasource->parameters()->{'parameter-output'})),
						__('System Date')
					),
					array(
						'system:user',
						($section_active and in_array('system:user', $datasource->parameters()->{'parameter-output'})),
						__('System User')
					)
				);
				$included_elements_options = array(
					// TODO: Determine what system fields will be included.
					array(
						'system:date',
						($section_active and in_array('system:date', $datasource->parameters()->{'included-elements'})),
						__('system:date')
					),
					array(
						'system:user',
						($section_active and in_array('system:user', $datasource->parameters()->{'included-elements'})),
						__('system:user')
					)
				);
				
				if (is_array($section_data['fields']) && !empty($section_data['fields'])) {
					foreach ($section_data['fields'] as $field) {
						$field_handle = $field->get('element_name');
						$field_label = $field->get('label');
						$modes = $field->fetchIncludableElements();
						
						if ($field->isSortable()) {
							$sort_by_options[] = array(
								$field_handle,
								($section_active and $field_handle == $datasource->parameters()->{'sort-field'}),
								$field_label
							);
						}
						
						if ($field->allowDatasourceParamOutput()) {
							$options_parameter_output[] = array(
								$field_handle,
								($section_active and in_array($field_handle, $datasource->parameters()->{'parameter-output'})), 
								$field_label
							);
						}
						
						if (is_array($modes)) foreach ($modes as $field_mode) {
							$included_elements_options[] = array(
								$field_mode,
								($section_active and in_array($field_mode, $datasource->parameters()->{'included-elements'})),
								$field_mode
							);
						}
					}
				}
				
				$label = Widget::Label(__('Sort By'));
				$label->setAttribute('class', 'context context-' . $section_id);
				
				$label->appendChild(Widget::Select('fields[sort-field]', $sort_by_options, array('class' => 'filtered')));
				$container_sort_by->appendChild($label);
				
				$label = Widget::Label(__('Parameter Output'));
				$label->setAttribute('class', 'context context-' . $section_id);
				
				$select = Widget::Select('fields[parameter-output][]', $options_parameter_output);
				$select->setAttribute('class', 'filtered');
				$select->setAttribute('multiple', 'multiple');
				
				$label->appendChild($select);
				$container_parameter_output->appendChild($label);
				
				$label = Widget::Label(__('Included XML Elements'));
				$label->setAttribute('class', 'context context-' . $section_id);
				
				$select = Widget::Select('fields[included-elements][]', $included_elements_options);
				$select->setAttribute('class', 'filtered');
				$select->setAttribute('multiple', 'multiple');
				
				$label->appendChild($select);
				$container_xml_output->appendChild($label);
			}
		}
	}
	