
-- *** STRUCTURE: `sym_cache` ***
DROP TABLE IF EXISTS `sym_cache`;
CREATE TABLE `sym_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `creation` int(14) NOT NULL DEFAULT '0',
  `expiry` int(14) unsigned DEFAULT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `expiry` (`expiry`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** STRUCTURE: `sym_entries` ***
DROP TABLE IF EXISTS `sym_entries`;
CREATE TABLE `sym_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section_id` int(11) unsigned NOT NULL,
  `author_id` int(11) unsigned NOT NULL,
  `creation_date` datetime NOT NULL,
  `creation_date_gmt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `section_id` (`section_id`),
  KEY `author_id` (`author_id`),
  KEY `creation_date` (`creation_date`),
  KEY `creation_date_gmt` (`creation_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries` ***
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (1, 1, 1, '2012-04-20 10:34:38', '2012-04-20 17:34:38');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (2, 1, 1, '2012-04-20 10:34:44', '2012-04-20 17:34:44');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (3, 1, 1, '2012-04-20 10:34:51', '2012-04-20 17:34:51');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (4, 1, 1, '2012-04-20 10:35:00', '2012-04-20 17:35:00');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (5, 2, 1, '2012-04-20 11:17:38', '2012-04-20 18:17:38');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (6, 2, 1, '2012-04-20 13:02:09', '2012-04-20 20:02:09');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (7, 2, 1, '2012-04-20 13:33:42', '2012-04-20 20:33:42');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (8, 2, 1, '2012-04-20 13:37:36', '2012-04-20 20:37:36');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (9, 2, 1, '2012-04-20 13:38:11', '2012-04-20 20:38:11');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (10, 2, 1, '2012-04-20 13:39:54', '2012-04-20 20:39:54');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (11, 2, 1, '2012-04-20 13:40:31', '2012-04-20 20:40:31');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (12, 2, 1, '2012-04-20 13:44:54', '2012-04-20 20:44:54');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (13, 2, 1, '2012-04-20 13:46:14', '2012-04-20 20:46:14');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (14, 2, 1, '2012-04-20 13:46:43', '2012-04-20 20:46:43');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (15, 2, 1, '2012-04-20 13:47:22', '2012-04-20 20:47:22');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (16, 2, 1, '2012-04-20 13:47:49', '2012-04-20 20:47:49');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (17, 2, 1, '2012-04-20 15:58:09', '2012-04-20 22:58:09');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (18, 2, 1, '2012-04-20 15:58:41', '2012-04-20 22:58:41');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (19, 2, 1, '2012-04-20 15:59:11', '2012-04-20 22:59:11');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (20, 2, 1, '2012-04-20 16:08:29', '2012-04-20 23:08:29');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (21, 2, 1, '2012-04-20 16:13:25', '2012-04-20 23:13:25');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (22, 2, 1, '2012-04-20 16:14:35', '2012-04-20 23:14:35');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (23, 2, 1, '2012-04-20 16:15:05', '2012-04-20 23:15:05');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (24, 2, 1, '2012-04-20 16:15:32', '2012-04-20 23:15:32');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (25, 2, 1, '2012-04-20 16:16:08', '2012-04-20 23:16:08');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (26, 2, 1, '2012-04-20 16:16:41', '2012-04-20 23:16:41');
INSERT INTO `sym_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`) VALUES (27, 2, 1, '2012-04-20 16:17:14', '2012-04-20 23:17:14');

-- *** STRUCTURE: `sym_entries_data_1` ***
DROP TABLE IF EXISTS `sym_entries_data_1`;
CREATE TABLE `sym_entries_data_1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_1` ***
INSERT INTO `sym_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 1, 'content', 'Content');
INSERT INTO `sym_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 2, 'forms', 'Forms');
INSERT INTO `sym_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 3, 'lists', 'Lists');
INSERT INTO `sym_entries_data_1` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 4, 'navigation', 'Navigation');

-- *** STRUCTURE: `sym_entries_data_10` ***
DROP TABLE IF EXISTS `sym_entries_data_10`;
CREATE TABLE `sym_entries_data_10` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_10` ***
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 5, 'welcome', 'Welcome');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (4, 6, 'article', 'Article');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 7, 'data-table', 'Data Table');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 8, 'footer', 'Footer');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 9, 'slats-html5', 'Slats (HTML5)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 10, 'slats-text-only', 'Slats (text only)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 11, 'slats-thumbnails', 'Slats (thumbnails)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 12, 'thumbnail-grid', 'Thumbnail Grid');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 13, 'multi-left-labels', 'Multi (left labels)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 14, 'multi-top-labels', 'Multi (top labels)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 15, 'search', 'Search');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 16, 'simple-top-labels', 'Simple (top labels)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (20, 17, 'definition', 'Definition');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (21, 18, 'stats-tabs', 'Stats Tabs');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (22, 19, 'tags-buttons', 'Tags (buttons)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (23, 20, 'tags-buttons', 'Tags (buttons)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (24, 21, 'tags-vertical', 'Tags (vertical)');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (25, 22, 'breadcrumb', 'Breadcrumb');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (26, 23, 'horizontal-buttons', 'Horizontal Buttons');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (27, 24, 'horizontal-links', 'Horizontal Links');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (28, 25, 'horizontal-tabs', 'Horizontal Tabs');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (29, 26, 'pagination', 'Pagination');
INSERT INTO `sym_entries_data_10` (`id`, `entry_id`, `handle`, `value`) VALUES (30, 27, 'vertical-links', 'Vertical Links');

-- *** STRUCTURE: `sym_entries_data_11` ***
DROP TABLE IF EXISTS `sym_entries_data_11`;
CREATE TABLE `sym_entries_data_11` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_11` ***
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 5, '<p class=\"welcome\">\r\nCollect, test, and experiment with <strong>interface pattern pairings</strong> of <abbr>CSS</abbr> & <abbr>HTML</abbr>. <strong>Pears</strong> is an <a href=\"https://github.com/simplebits/Pears\">open source WordPress theme</a>, enabling people like you to get your own pattern library up and running quickly.\r\n</p>\r\n<ol class=\"steps\">\r\n	<li><a href=\"https://github.com/simplebits/Pears\">Grab the theme at Github</a>.</li>\r\n	<li>Install the theme.</li>\r\n	<li>Create markup & style patterns.</li>\r\n	<li>Learn.</li>\r\n</ol>', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 6, '<article>\r\n	<header>\r\n		<h2>The Title Goes Here</h2>	\r\n	</header>\r\n	\r\n	<aside>\r\n		This is aside text lorem ipsum dolor sit amet consectetur adipisicing.\r\n	</aside>\r\n	\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis <a href=\"#\">nostrud exercitation</a> ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod <a href=\"#\">tempor incididunt</a> ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>\r\n	<footer>\r\n		Posted August 22, 2011\r\n	</footer>\r\n</article>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 7, '<table>\r\n	<tr>\r\n		<th>Type</th>\r\n		<th>Date</th>\r\n		<th>Rating</th>\r\n	</tr>\r\n	<tr>\r\n		<td>Cheddar</td>\r\n		<td>Jan 3, 2012</td>\r\n		<td>★★★</td>\r\n	</tr>\r\n	<tr>\r\n		<td>Havarti</td>\r\n		<td>Jan 12, 2012</td>\r\n		<td>★★★★</td>\r\n	</tr>\r\n	<tr>\r\n		<td>Muenster</td>\r\n		<td>Jan 20, 2012</td>\r\n		<td>★★</td>\r\n	</tr>\r\n	<tr>\r\n		<td>Swiss</td>\r\n		<td>Jan 22, 2012</td>\r\n		<td>★</td>\r\n	</tr>\r\n	<tr>\r\n		<td>Gouda</td>\r\n		<td>Jan 25, 2012</td>\r\n		<td>★★★★★</td>\r\n	</tr>\r\n	<tr>\r\n		<td>Emmentaler</td>\r\n		<td>Jan 27, 2012</td>\r\n		<td>★★★</td>\r\n	</tr>\r\n</table>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 8, '<footer role=\"contentinfo\">\r\n	<nav role=\"navigation\">\r\n		<ul>\r\n			<li><a href=\"#\">This is a link</a></li>\r\n			<li><a href=\"#\">Active Link</a></li>\r\n			<li><a href=\"#\">Lorem link</a></li>\r\n			<li><a href=\"#\">Dolor link two</a></li>\r\n			<li><a href=\"#\">Here is a link</a></li>\r\n		</ul>\r\n	</nav>		\r\n	<p>Copyright © 2012 Company Co. All rights reserved.</p>\r\n</footer>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 9, '<ol class=\"slats\">\r\n	<li class=\"group\">\r\n		<a href=\"#\">\r\n			<img src=\"/workspace/assets/images/thumb.png\" alt=\"thumbnail\" />\r\n			<h3>This is the title</h3>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n		</a>\r\n	</li>\r\n	<li class=\"group\">\r\n		<a href=\"#\">\r\n			<img src=\"/workspace/assets/images/thumb.png\" alt=\"thumbnail\" />\r\n			<h3>This is the title</h3>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n		</a>\r\n	</li>\r\n	<li class=\"group\">\r\n		<a href=\"#\">\r\n			<img src=\"/workspace/assets/images/thumb.png\" alt=\"thumbnail\" />\r\n			<h3>This is the title</h3>\r\n			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n		</a>\r\n	</li>\r\n</ol>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 10, '<ol class=\"slats\">\r\n	<li class=\"group\">\r\n		<h3><a href=\"#\">This is the title</a></h3>\r\n		\r\n		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n	</li>\r\n	<li class=\"group\">\r\n		<h3><a href=\"#\">This is the title</a></h3>\r\n		\r\n		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n	</li>\r\n	<li class=\"group\">\r\n		<h3><a href=\"#\">This is the title</a></h3>\r\n		\r\n		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n	</li>\r\n</ol>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 11, '<ol class=\"slats\">\r\n	<li class=\"group\">\r\n		<h3>\r\n			<a href=\"#\">\r\n				<img src=\"/workspace/assets/images/thumb.png\" alt=\"thumbnail\" />\r\n				This is the title\r\n			</a>\r\n		</h3>\r\n		\r\n		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n	</li>\r\n	<li class=\"group\">\r\n		<h3>\r\n			<a href=\"#\">\r\n				<img src=\"/workspace/assets/images/thumb.png\" alt=\"thumbnail\" />\r\n				This is the title\r\n			</a>\r\n		</h3>\r\n		\r\n		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n	</li>\r\n	<li class=\"group\">\r\n		<h3>\r\n			<a href=\"#\">\r\n				<img src=\"/workspace/assets/images/thumb.png\" alt=\"thumbnail\" />\r\n				This is the title\r\n			</a>\r\n		</h3>\r\n		\r\n		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. <span class=\"meta\">August 10, 2011</span></p>\r\n	</li>\r\n</ol>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 12, '<ol class=\"thumb-grid group\">\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n	<li><a href=\"#\"><img src=\"/workspace/assets/images/temp-img.png\" alt=\"thumbnail\" /></a></li>\r\n</ol>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 17, '<dl>\r\n	<dt>The title is here</dt>\r\n	<dd>Lorem ipsum definition goes here dolor sit amet.</dd>\r\n	<dt>The title is here</dt>\r\n	<dd>Lorem ipsum definition goes here dolor sit amet.</dd>\r\n	<dt>The title is here</dt>\r\n	<dd>Lorem ipsum definition goes here dolor sit amet.</dd>\r\n</dl>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 13, '<form action=\"/\">\r\n	<fieldset>\r\n		<label for=\"name\">Name</label>\r\n		<input type=\"text\" id=\"name\" class=\"form-text\" />\r\n		<p class=\"form-help\">This is help text under the form field.</p>\r\n	</fieldset>\r\n	\r\n	<fieldset>\r\n		<label for=\"email\">Email</label>\r\n		<input type=\"email\" id=\"email\" class=\"form-text\" />\r\n	</fieldset>\r\n	\r\n	<fieldset>\r\n		<label for=\"gender\">Gender</label>\r\n		<select id=\"gender\">\r\n			<option>Male</option>\r\n			<option>Female</option>\r\n			<option>Cylon</option>\r\n		</select>\r\n	</fieldset>\r\n\r\n	<fieldset class=\"radio\">\r\n		<label for=\"notifications\">Notifications</label>\r\n		<ul>\r\n			<li><label><input type=\"radio\" name=\"notifications\" /> Send me email</label></li>\r\n			<li><label><input type=\"radio\" name=\"notifications\" /> Don\'t send me email</label></li>\r\n			<li><label><input type=\"radio\" name=\"notifications\" /> Send me flowers</label></li>\r\n		</ul>\r\n	</fieldset>\r\n\r\n	<fieldset>\r\n		<label for=\"url\">URL</label>\r\n		<input type=\"url\" id=\"url\" class=\"form-text\" placeholder=\"http://yourdomain.com\" />\r\n	</fieldset>\r\n\r\n	<fieldset>\r\n		<label for=\"bio\">Bio</label>\r\n		<textarea id=\"bio\"></textarea>\r\n	</fieldset>\r\n	\r\n	<fieldset class=\"check\">\r\n		<label><input type=\"checkbox\" /> I accept the terms of service and lorem ipsum.</label>\r\n	</fieldset>\r\n\r\n	<fieldset class=\"form-actions\">\r\n		<input type=\"submit\" value=\"Submit\" />\r\n	</fieldset>\r\n</form>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 14, '<form action=\"/\">\r\n	<fieldset>\r\n		<label for=\"name\">Name</label>\r\n		<input type=\"text\" id=\"name\" class=\"form-text\" />\r\n		<p class=\"form-help\">This is help text under the form field.</p>\r\n	</fieldset>\r\n	\r\n	<fieldset>\r\n		<label for=\"email\">Email</label>\r\n		<input type=\"email\" id=\"email\" class=\"form-text\" />\r\n	</fieldset>\r\n	\r\n	<fieldset>\r\n		<label for=\"gender\">Gender</label>\r\n		<select id=\"gender\">\r\n			<option>Male</option>\r\n			<option>Female</option>\r\n			<option>Cylon</option>\r\n		</select>\r\n	</fieldset>\r\n\r\n	<fieldset class=\"radio\">\r\n		<label for=\"notifications\">Notifications</label>\r\n		<ul>\r\n			<li><label><input type=\"radio\" name=\"notifications\" /> Send me email</label></li>\r\n			<li><label><input type=\"radio\" name=\"notifications\" /> Don\'t send me email</label></li>\r\n			<li><label><input type=\"radio\" name=\"notifications\" /> Send me flowers</label></li>\r\n		</ul>\r\n	</fieldset>\r\n\r\n	<fieldset>\r\n		<label for=\"url\">URL</label>\r\n		<input type=\"url\" id=\"url\" class=\"form-text\" placeholder=\"http://yourdomain.com\" />\r\n	</fieldset>\r\n\r\n	<fieldset>\r\n		<label for=\"bio\">Bio</label>\r\n		<textarea id=\"bio\"></textarea>\r\n	</fieldset>\r\n	\r\n	<fieldset class=\"check\">\r\n		<label><input type=\"checkbox\" /> I accept the terms of service and lorem ipsum.</label>\r\n	</fieldset>\r\n\r\n	<fieldset class=\"form-actions\">\r\n		<input type=\"submit\" value=\"Submit\" />\r\n	</fieldset>\r\n</form>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 15, '<form action=\"/\" class=\"search\">\r\n	<fieldset>\r\n		<input type=\"text\" placeholder=\"Search\" />\r\n		<input type=\"submit\" value=\"Go\" />\r\n	</fieldset>\r\n</form>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 16, '<form action=\"/\">\r\n	<fieldset>\r\n		<label for=\"name\">Name</label>\r\n		<input type=\"text\" id=\"name\" class=\"form-text\" />\r\n		<p class=\"form-help\">This is help text under the form field.</p>\r\n	</fieldset>\r\n	\r\n	<fieldset>\r\n		<label for=\"email\">Email</label>\r\n		<input type=\"email\" id=\"email\" class=\"form-text\" />\r\n	</fieldset>\r\n\r\n	<fieldset class=\"form-actions\">\r\n		<input type=\"submit\" value=\"Submit\" />\r\n	</fieldset>\r\n</form>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 18, '<ul class=\"stats-tabs\">\r\n	<li><a href=\"#\">1,234 <span>donuts</span></a></li>\r\n	<li><a href=\"#\">567 <span>kayaks</span></a></li>\r\n	<li><a href=\"#\">23,456 <span>kittens</span></a></li>\r\n</ul>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 19, '<ol class=\"tags\">\r\n	<li><a href=\"#\">cheddar</a></li>\r\n	<li><a href=\"#\">swiss</a></li>\r\n	<li><a href=\"#\">havarti</a></li>\r\n	<li><a href=\"#\">gouda</a></li>\r\n	<li><a href=\"#\">manchego</a></li>\r\n</ol>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 20, '<ol class=\"tags\">\r\n	<li><a href=\"#\">cheddar</a></li>\r\n	<li><a href=\"#\">swiss</a></li>\r\n	<li><a href=\"#\">havarti</a></li>\r\n	<li><a href=\"#\">gouda</a></li>\r\n	<li><a href=\"#\">manchego</a></li>\r\n</ol>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 21, '<ol class=\"tags\">\r\n	<li><a href=\"#\"><span class=\"meta\">123</span> cheddar</a></li>\r\n	<li><a href=\"#\"><span class=\"meta\">34</span> swiss</a></li>\r\n	<li><a href=\"#\"><span class=\"meta\">1,234</span> havarti</a></li>\r\n	<li><a href=\"#\"><span class=\"meta\">8</span> gouda</a></li>\r\n	<li><a href=\"#\"><span class=\"meta\">56</span> manchego</a></li>\r\n</ol>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 22, '<nav class=\"breadcrumb\">\r\n	<a href=\"#\">This is a link</a> /\r\n	<a href=\"#\">Lorem link</a> / \r\n	<a href=\"#\">Dolor link two</a> /\r\n	<a href=\"#\">Here is a link</a> /\r\n	<strong>Active Link</strong>\r\n</nav>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 23, '<nav role=\"navigation\">\r\n	<ul>\r\n		<li><a href=\"#\">This is a link</a></li>\r\n		<li class=\"active\"><a href=\"#\">Active Button</a></li>\r\n		<li><a href=\"#\">Lorem link</a></li>\r\n		<li><a href=\"#\">Dolor link two</a></li>\r\n		<li><a href=\"#\">Here is a link</a></li>\r\n	</ul>\r\n</nav>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 24, '<nav role=\"navigation\">\r\n	<ul>\r\n		<li><a href=\"#\">This is a link</a></li>\r\n		<li class=\"active\"><a href=\"#\">Active Link</a></li>\r\n		<li><a href=\"#\">Lorem link</a></li>\r\n		<li><a href=\"#\">Dolor link two</a></li>\r\n		<li><a href=\"#\">Here is a link</a></li>\r\n	</ul>\r\n</nav>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 25, '<nav role=\"navigation\">\r\n	<ul>\r\n		<li><a href=\"#\">This is a link</a></li>\r\n		<li class=\"active\"><a href=\"#\">Active Tab</a></li>\r\n		<li><a href=\"#\">Lorem link</a></li>\r\n		<li><a href=\"#\">Dolor link two</a></li>\r\n		<li><a href=\"#\">Here is a link</a></li>\r\n	</ul>\r\n</nav>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 26, '<nav class=\"page\">\r\n	<ul>\r\n		<li class=\"page-prev\"><a href=\"#\">← Prev</a></li>\r\n		<li><a href=\"#\">1</a></li>\r\n		<li><a href=\"#\">2</a></li>\r\n		<li><a href=\"#\">3</a></li>\r\n		<li class=\"page-next\"><a href=\"#\">Next →</a></li>\r\n	</ul>\r\n</nav>			\r\n				', NULL);
INSERT INTO `sym_entries_data_11` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 27, '<nav role=\"navigation\">\r\n	<ul>\r\n		<li><a href=\"#\">This is a link</a></li>\r\n		<li class=\"active\"><a href=\"#\">Active Link</a></li>\r\n		<li><a href=\"#\">Lorem link</a></li>\r\n		<li><a href=\"#\">Dolor link two</a></li>\r\n		<li><a href=\"#\">Here is a link</a></li>\r\n	</ul>\r\n</nav>			\r\n				', NULL);

-- *** STRUCTURE: `sym_entries_data_12` ***
DROP TABLE IF EXISTS `sym_entries_data_12`;
CREATE TABLE `sym_entries_data_12` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext,
  `value_formatted` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_12` ***
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 5, 'p.welcome,\r\nol.steps {\r\n	font-size: 1.6em;\r\n	line-height: 1.4;\r\n	}\r\np.welcome {\r\n	margin: 0 0 1.4em;\r\n	}\r\np.welcome abbr {\r\n	letter-spacing: 3px;\r\n	}\r\nol.steps li {\r\n	list-style: decimal;\r\n	margin-left: 1.4em;\r\n	}', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 6, 'article {\r\n	margin: 0 0 20px 20%;\r\n	}\r\narticle header h2 {\r\n	margin: 0 0 15px 0;\r\n	font-size: 20px;\r\n	font-weight: normal;\r\n	line-height: 1.3;\r\n	}\r\narticle aside {\r\n	float: left;\r\n	width: 20%;\r\n	margin-left: -25%;\r\n	font-size: 12px;\r\n	line-height: 1.8;\r\n	color: #999;\r\n	}\r\n@media screen and (max-width: 700px) {\r\n	article aside {\r\n		float: none;\r\n		width: auto;\r\n		margin: 0 0 20px 0;\r\n		line-height: 1.5;\r\n		}\r\n	}\r\narticle p {\r\n	margin: 0 0 20px 0;\r\n	font-size: 14px;\r\n	line-height: 1.5;\r\n	color: #666;\r\n	}\r\narticle footer {\r\n	font-size: 14px;\r\n	color: #999;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 7, 'table {\r\n	margin: 0;\r\n	padding: 0;\r\n	}\r\ntable th,\r\ntable td {\r\n	padding: 10px 20px;\r\n	text-align: left;\r\n	border-bottom: 1px solid #ccc;\r\n	}\r\ntable th {\r\n	border-width: 2px;\r\n	}\r\ntable td {\r\n	color: #666;\r\n	}\r\ntable tr:last-child th,\r\ntable tr:last-child td {\r\n	border-bottom: none;\r\n	}\r\ntable tr:nth-child(even) {\r\n	background: #eee;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 8, 'footer[role=\"contentinfo\"] {\r\n	padding: 15px 0 0 0;\r\n	font-size: 14px;\r\n	border-top: 1px solid #ddd;\r\n	}\r\nfooter[role=\"contentinfo\"] nav ul li {\r\n	display: inline;\r\n	margin: 0 10px 0 0;\r\n	padding: 0 10px 0 0;\r\n	font-weight: bold;\r\n	border-right: 1px solid #ccc;\r\n	}\r\nfooter[role=\"contentinfo\"] nav ul li:last-child {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: none;\r\n	}\r\nfooter[role=\"contentinfo\"] p {\r\n	margin: 10px 0;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 9, 'ol.slats li {\r\n	margin: 0 0 10px 0;\r\n	padding: 0 0 10px 0;\r\n	border-bottom: 1px solid #eee;\r\n	}\r\nol.slats li:last-child {\r\n	margin: 0;\r\n	padding: 0;\r\n	border-bottom: none;\r\n	}\r\nol.slats li a h3 {\r\n	font-size: 18px;\r\n	font-weight: bold;\r\n	line-height: 1.1;\r\n	}\r\nol.slats li a img {\r\n	float: left;\r\n	margin: 0 10px 0 0;\r\n	padding: 4px;\r\n	border: 1px solid #eee;\r\n	}\r\nol.slats li a:hover img {\r\n	background: #eee;\r\n	}\r\nol.slats li a p {\r\n	margin: 0 0 0 76px;\r\n	font-size: 14px;\r\n	line-height: 1.4;\r\n	color: #555;\r\n	}\r\nol.slats li a p span.meta {\r\n	display: block;\r\n	font-size: 12px;\r\n	color: #999;\r\n	}\r\n@media screen and (max-width: 700px) {\r\n	ol.slats li a img {\r\n		display: block;\r\n		float: none;\r\n		margin: 0 0 5px 0;\r\n		}		\r\n	ol.slats li a p {\r\n		margin: 0;\r\n		}\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 10, 'ol.slats li {\r\n	margin: 0 0 10px 0;\r\n	padding: 0 0 10px 0;\r\n	border-bottom: 1px solid #eee;\r\n	}\r\nol.slats li:last-child {\r\n	margin: 0;\r\n	padding: 0;\r\n	border-bottom: none;\r\n	}\r\nol.slats li h3 {\r\n	font-size: 16px;\r\n	font-weight: bold;\r\n	line-height: 1.1;\r\n	}\r\nol.slats li p {\r\n	font-size: 14px;\r\n	line-height: 1.4;\r\n	}\r\nol.slats li p span.meta {\r\n	display: block;\r\n	font-size: 12px;\r\n	color: #999;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 11, 'ol.slats li {\r\n	margin: 0 0 10px 0;\r\n	padding: 0 0 10px 0;\r\n	border-bottom: 1px solid #eee;\r\n	}\r\nol.slats li:last-child {\r\n	margin: 0;\r\n	padding: 0;\r\n	border-bottom: none;\r\n	}\r\nol.slats li h3 {\r\n	font-size: 18px;\r\n	font-weight: bold;\r\n	line-height: 1.1;\r\n	}\r\nol.slats li h3 a img {\r\n	float: left;\r\n	margin: 0 10px 0 0;\r\n	padding: 4px;\r\n	border: 1px solid #eee;\r\n	}\r\nol.slats li h3 a:hover img {\r\n	background: #eee;\r\n	}\r\nol.slats li p {\r\n	margin: 0 0 0 76px;\r\n	font-size: 14px;\r\n	line-height: 1.4;\r\n	}\r\nol.slats li p span.meta {\r\n	display: block;\r\n	font-size: 12px;\r\n	color: #999;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 12, 'ol.thumb-grid li {\r\n	float: left;\r\n	width: 15%;\r\n	margin: 0 5% 5% 0;\r\n	}\r\nol.thumb-grid li:nth-child(5n) {\r\n	margin-right: 0;\r\n	}\r\nol.thumb-grid li a img {\r\n	width: 100%;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 13, 'form fieldset {\r\n	margin: 0 0 10px 0;\r\n	padding: 0 0 10px 0;\r\n	font-size: 14px;\r\n	border-bottom: 1px solid #eee;\r\n	}\r\nform fieldset.form-actions {\r\n	margin: 0 0 0 20%;\r\n	padding: 0;\r\n	border: none;\r\n	}\r\nform fieldset.check {\r\n	padding-left: 20%;	\r\n	}\r\nform fieldset label {\r\n	float: left;\r\n	width: 20%;\r\n	margin: 4px 0 5px 0;\r\n	font-weight: bold;\r\n	}\r\nform fieldset.check label {\r\n	display: inline;\r\n	float: none;\r\n	width: auto;\r\n	font-weight: normal;\r\n	}\r\nform fieldset.radio ul li label {\r\n	display: inline;\r\n	float: none;\r\n	width: auto;\r\n	font-weight: normal;\r\n	}\r\nform fieldset input.form-text,\r\nform fieldset textarea {\r\n	display: block;\r\n	width: 50%;\r\n	padding: 5px;\r\n	font-size: 14px;\r\n	border: 1px solid #ddd;\r\n	background: #f5f5f5;\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}\r\nform fieldset input.form-text:focus {\r\n	border: 1px solid #ccc;\r\n	background: #fff;\r\n	}\r\nform fieldset textarea {\r\n	height: 150px;\r\n	}\r\nform fieldset select {\r\n	min-width: 25%;\r\n	margin: 0;\r\n	}\r\nform fieldset.radio ul {\r\n	margin: 5px 0 0 20%;\r\n	}\r\nform fieldset.radio ul li {\r\n	margin: 0 0 5px 0;\r\n	}\r\nform fieldset.radio ul li:last-child {\r\n	margin: 0;\r\n	}\r\nform fieldset p.form-help {\r\n	margin: 5px 0 0 20%;\r\n	font-size: 12px;\r\n	color: #999;\r\n	}\r\nform input[type=\"submit\"] {\r\n	margin: 0;\r\n	padding: 5px 10px;\r\n	font-size: 12px;	\r\n	font-weight: bold;\r\n	border: 1px solid #ccc;\r\n	background: #eee;\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}\r\nform input[type=\"submit\"]:hover,\r\nform input[type=\"submit\"]:focus {\r\n	border: 1px solid #bbb;\r\n	background: #e5e5e5;\r\n	}\r\nform input[type=\"submit\"]:active {\r\n	border: 1px solid #ccc;\r\n	background: #eee;\r\n	}\r\n@media screen and (max-width: 600px) {\r\n	form fieldset label {\r\n		display: block;\r\n		float: none;\r\n		width: auto;\r\n		margin: 0 0 5px 0;\r\n		}\r\n	form fieldset.form-actions,\r\n	form fieldset.check,\r\n	form fieldset.radio ul,\r\n	form fieldset p.form-help {\r\n		margin-left: 0;\r\n		padding-left: 0;\r\n		}\r\n	form fieldset input.form-text,\r\n	form fieldset textarea {\r\n		width: 100%;\r\n		-webkit-box-sizing: border-box;\r\n		-moz-box-sizing: border-box;\r\n		box-sizing: border-box;\r\n		}\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 14, 'form fieldset {\r\n	margin: 0 0 20px 0;\r\n	font-size: 14px;\r\n	}\r\nform fieldset.form-actions {\r\n	margin: 0;\r\n	}\r\nform fieldset label {\r\n	display: block;\r\n	margin: 0 0 5px 0;\r\n	font-weight: bold;\r\n	}\r\nform fieldset.check label {\r\n	display: inline;\r\n	font-weight: normal;\r\n	}\r\nform fieldset.radio ul li label {\r\n	display: inline;\r\n	font-weight: normal;\r\n	}\r\nform fieldset input.form-text,\r\nform fieldset textarea {\r\n	display: block;\r\n	width: 50%;\r\n	padding: 5px;\r\n	font-size: 14px;\r\n	border: 1px solid #ddd;\r\n	background: #f5f5f5;\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}\r\nform fieldset input.form-text:focus {\r\n	border: 1px solid #ccc;\r\n	background: #fff;\r\n	}\r\nform fieldset textarea {\r\n	height: 150px;\r\n	}\r\nform fieldset select {\r\n	min-width: 25%;\r\n	margin: 0;\r\n	}\r\nform fieldset.radio ul {\r\n	margin-top: 5px;\r\n	}\r\nform fieldset.radio ul li {\r\n	margin: 0 0 5px 0;\r\n	}\r\nform fieldset.radio ul li:last-child {\r\n	margin: 0;\r\n	}\r\nform fieldset p.form-help {\r\n	margin: 5px 0 0 0;\r\n	font-size: 12px;\r\n	color: #999;\r\n	}\r\nform input[type=\"submit\"] {\r\n	margin: 0;\r\n	padding: 5px 10px;\r\n	font-size: 12px;	\r\n	font-weight: bold;\r\n	border: 1px solid #ccc;\r\n	background: #eee;\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}\r\nform input[type=\"submit\"]:hover,\r\nform input[type=\"submit\"]:focus {\r\n	border: 1px solid #bbb;\r\n	background: #e5e5e5;\r\n	}\r\nform input[type=\"submit\"]:active {\r\n	border: 1px solid #ccc;\r\n	background: #eee;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 15, 'form.search fieldset input[type=\"text\"] {\r\n	width: 50%;\r\n	padding: 10px 14px;\r\n	font-size: 18px;\r\n	border: 1px solid #ddd;\r\n	background: #f5f5f5;\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}\r\nform.search fieldset input[type=\"submit\"] {\r\n	padding: 10px 14px;\r\n	font-size: 18px;\r\n	color: #fff;\r\n	border: none;\r\n	background: #999;\r\n	border-radius: 4px;\r\n	}\r\nform.search fieldset input[type=\"submit\"]:hover,\r\nform.search fieldset input[type=\"submit\"]:focus {\r\n	background: #777;\r\n	}\r\nform.search fieldset input[type=\"submit\"]:active {\r\n	background: #666;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 16, 'form fieldset {\r\n	margin: 0 0 20px 0;\r\n	font-size: 14px;\r\n	}\r\nform fieldset.form-actions {\r\n	margin: 0;\r\n	}\r\nform fieldset label {\r\n	display: block;\r\n	margin: 0 0 5px 0;\r\n	font-weight: bold;\r\n	}\r\nform fieldset input.form-text {\r\n	display: block;\r\n	width: 50%;\r\n	padding: 5px;\r\n	font-size: 14px;\r\n	border: 1px solid #ddd;\r\n	background: #f5f5f5;\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-moz-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.05);\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}\r\nform fieldset input.form-text:focus {\r\n	border: 1px solid #ccc;\r\n	background: #fff;\r\n	}\r\nform fieldset p.form-help {\r\n	margin: 5px 0 0 0;\r\n	font-size: 12px;\r\n	color: #999;\r\n	}\r\nform input[type=\"submit\"] {\r\n	margin: 0;\r\n	padding: 5px 10px;\r\n	font-size: 12px;	\r\n	font-weight: bold;\r\n	border: 1px solid #ccc;\r\n	background: #eee;\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}\r\nform input[type=\"submit\"]:hover,\r\nform input[type=\"submit\"]:focus {\r\n	border: 1px solid #bbb;\r\n	background: #e5e5e5;\r\n	}\r\nform input[type=\"submit\"]:active {\r\n	border: 1px solid #ccc;\r\n	background: #eee;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 17, 'dl dt {\r\n	font-size: 16px;\r\n	font-weight: bold;\r\n	line-height: 1.2;\r\n	}\r\ndl dd {\r\n	margin: 0 0 10px 0;\r\n	font-size: 14px;\r\n	line-height: 1.4;\r\n	color: #666;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 18, 'ul.stats-tabs li {\r\n	float: left;\r\n	margin: 0 10px 0 0;\r\n	padding: 0 10px 0 0;\r\n	border-right: 1px solid #ccc;\r\n	}\r\nul.stats-tabs li:last-child {\r\n	margin: 0;\r\n	padding: 0;\r\n	border: none;\r\n	}\r\nul.stats-tabs li a {	\r\n	display: block;\r\n	float: left;\r\n	font-size: 18px;\r\n	font-weight: bold;\r\n	}\r\nul.stats-tabs li a span {\r\n	display: block;\r\n	margin-top: 2px;\r\n	font-size: 13px;\r\n	font-weight: normal;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 19, 'ol.tags li {\r\n	float: left;\r\n	margin: 0 5px 5px 0;\r\n	font-size: 14px;\r\n	}\r\nol.tags li a {\r\n	float: left;\r\n	padding: 5px 10px 6px 25px;\r\n	font-weight: normal;\r\n	color: #fff;\r\n	background: #bbb url(/wp-content/themes/pears/images/tag-bg.png) no-repeat 0 50%;\r\n	-webkit-border-radius: 3px;\r\n	-moz-border-radius: 3px;\r\n	border-radius: 3px;\r\n	-webkit-transition: background-color .2s ease-in-out;\r\n	-moz-transition: background-color .2s ease-in-out;\r\n	transition: background-color .2s ease-in-out;\r\n	}\r\nol.tags li a:hover,\r\nol.tags li a:focus {\r\n	background-color: #999;\r\n	}\r\nol.tags li a:active {\r\n	background-color: #ccc;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 20, 'ol.tags li {\r\n	float: left;\r\n	margin: 0 5px 5px 0;\r\n	font-size: 14px;\r\n	}\r\nol.tags li a {\r\n	float: left;\r\n	padding: 5px 10px 6px 25px;\r\n	font-weight: normal;\r\n	color: #fff;\r\n	background: #bbb url(/wp-content/themes/pears/images/tag-bg.png) no-repeat 0 50%;\r\n	-webkit-border-radius: 3px;\r\n	-moz-border-radius: 3px;\r\n	border-radius: 3px;\r\n	-webkit-transition: background-color .2s ease-in-out;\r\n	-moz-transition: background-color .2s ease-in-out;\r\n	transition: background-color .2s ease-in-out;\r\n	}\r\nol.tags li a:hover,\r\nol.tags li a:focus {\r\n	background-color: #999;\r\n	}\r\nol.tags li a:active {\r\n	background-color: #ccc;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 21, 'ol.tags {\r\n	width: 25%;\r\n	}\r\nol.tags li a {\r\n	display: block;\r\n	padding: 4px 8px;\r\n	}\r\nol.tags li a span.meta {\r\n	float: right;\r\n	color: #bbb;\r\n	}\r\nol.tags li a:hover {\r\n	background: #f0f0f0;\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 22, 'nav.breadcrumb {\r\n	font-size: 14px;\r\n	color: #ccc;\r\n	}\r\nnav.breadcrumb a {\r\n	margin: 0 5px;\r\n	text-decoration: none;\r\n	color: #999;\r\n	}\r\nnav.breadcrumb a:first-child {\r\n	margin-left: 0;\r\n	}\r\nnav.breadcrumb a:hover,\r\nnav.breadcrumb a:focus {\r\n	color: #333;\r\n	}\r\nnav.breadcrumb a:active {\r\n	color: #666;\r\n	}\r\nnav.breadcrumb strong {\r\n	margin-left: 5px;\r\n	font-weight: bold;\r\n	color: #333;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 23, 'nav[role=\"navigation\"] li {\r\n	float: left;\r\n	margin: 0 4px 0 0;\r\n	font-size: 14px;\r\n	}\r\nnav[role=\"navigation\"] li a {\r\n	float: left;\r\n	padding: 8px 12px;\r\n	text-decoration: none;\r\n	color: #fff;\r\n	background: #bbb;\r\n	-webkit-border-radius: 4px;\r\n	-moz-border-radius: 4px;\r\n	border-radius: 4px;\r\n	}\r\nnav[role=\"navigation\"] li a:hover,\r\nnav[role=\"navigation\"] li a:focus {\r\n	background: #999;\r\n	}\r\nnav[role=\"navigation\"] li a:active {\r\n	background: #888;\r\n	}\r\nnav[role=\"navigation\"] li.active a {\r\n	color: #fff;\r\n	background: #666;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 24, 'nav[role=\"navigation\"] li {\r\n	float: left;\r\n	font-size: 14px;\r\n	border-right: 1px solid #ddd;\r\n	}\r\nnav[role=\"navigation\"] li:last-child {\r\n	border-right: none;\r\n	}\r\nnav[role=\"navigation\"] li a {\r\n	float: left;\r\n	padding: 0 10px;\r\n	text-decoration: none;\r\n	color: #999;\r\n	border-radius: 4px;\r\n	}\r\nnav[role=\"navigation\"] li a:hover,\r\nnav[role=\"navigation\"] li a:focus {\r\n	color: #333;\r\n	}\r\nnav[role=\"navigation\"] li a:active {\r\n	color: #666;\r\n	}\r\nnav[role=\"navigation\"] li.active a {\r\n	font-weight: bold;\r\n	color: #333;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 25, 'nav[role=\"navigation\"] li {\r\n	float: left;\r\n	margin: 0 4px 0 0;\r\n	font-size: 14px;\r\n	}\r\nnav[role=\"navigation\"] li a {\r\n	float: left;\r\n	padding: 10px 15px;\r\n	text-decoration: none;\r\n	color: #fff;\r\n	background: #bbb;\r\n	-webkit-border-top-left-radius: 6px;\r\n	-webkit-border-top-right-radius: 6px;\r\n	-moz-border-radius-topleft: 6px;\r\n	-moz-border-radius-topright: 6px;\r\n	border-top-left-radius: 6px;\r\n	border-top-right-radius: 6px;\r\n	}\r\nnav[role=\"navigation\"] li a:hover,\r\nnav[role=\"navigation\"] li a:focus {\r\n	background: #999;\r\n	}\r\nnav[role=\"navigation\"] li a:active {\r\n	background: #888;\r\n	}\r\nnav[role=\"navigation\"] li.active a {\r\n	color: #fff;\r\n	background: #666;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 26, 'nav.page ul {\r\n	text-align: center;\r\n	}\r\nnav.page ul li {\r\n	display: inline;\r\n	margin: 0 4px 0 0;\r\n	}\r\nnav.page ul li a {\r\n	padding: 3px 8px;\r\n	font-size: 14px;\r\n	font-weight: bold;\r\n	border: 1px solid #ddd;\r\nbackground: #fff;\r\n	border-radius: 4px;\r\n	}\r\nnav.page ul li a:hover,\r\nnav.page ul li a:focus {\r\n	background: #f0f0f0;\r\n	border-color: #ccc;\r\n	}\r\nnav.page ul li a:active {\r\n	background: #fff;\r\n	border-color: #ddd;\r\n	}				', NULL);
INSERT INTO `sym_entries_data_12` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 27, 'nav[role=\"navigation\"] ul {\r\n	width: 25%;\r\n	}\r\nnav[role=\"navigation\"] ul li a {\r\n	display: block;\r\n	padding: 5px 15px;\r\n	font-size: 14px;\r\n	font-weight: bold;\r\n	line-height: 1;\r\n	}\r\nnav[role=\"navigation\"] ul li a:focus,\r\nnav[role=\"navigation\"] ul li a:hover {\r\n	background: #eee;\r\n	}\r\nnav[role=\"navigation\"] ul li a:active {\r\n	background: #ddd;\r\n	}				', NULL);

-- *** STRUCTURE: `sym_entries_data_2` ***
DROP TABLE IF EXISTS `sym_entries_data_2`;
CREATE TABLE `sym_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_2` ***
INSERT INTO `sym_entries_data_2` (`id`, `entry_id`, `value`) VALUES (1, 1, 1);
INSERT INTO `sym_entries_data_2` (`id`, `entry_id`, `value`) VALUES (2, 2, 2);
INSERT INTO `sym_entries_data_2` (`id`, `entry_id`, `value`) VALUES (3, 3, 3);
INSERT INTO `sym_entries_data_2` (`id`, `entry_id`, `value`) VALUES (4, 4, 4);

-- *** STRUCTURE: `sym_entries_data_4` ***
DROP TABLE IF EXISTS `sym_entries_data_4`;
CREATE TABLE `sym_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_entries_data_4` ***
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (5, 5, NULL);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (6, 6, 1);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (7, 7, 1);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (21, 8, 1);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (19, 9, 1);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (10, 10, 1);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (20, 11, 1);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (18, 12, 1);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (13, 13, 2);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (14, 14, 2);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (15, 15, 2);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (16, 16, 2);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (22, 17, 3);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (23, 18, 3);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (24, 19, 3);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (25, 20, 3);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (26, 21, 3);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (27, 22, 4);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (28, 23, 4);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (29, 24, 4);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (30, 25, 4);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (31, 26, 4);
INSERT INTO `sym_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (32, 27, 4);

-- *** STRUCTURE: `sym_entries_data_5` ***
DROP TABLE IF EXISTS `sym_entries_data_5`;
CREATE TABLE `sym_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(80) DEFAULT NULL,
  `local` int(11) DEFAULT NULL,
  `gmt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_5` ***
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (5, 5, '2012-04-20T11:16:00-07:00', 1334945760, 1334945760);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (6, 6, '2012-04-20T13:01:00-07:00', 1334952060, 1334952060);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (7, 7, '2012-04-20T13:33:00-07:00', 1334953980, 1334953980);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (21, 8, '2012-04-20T13:37:00-07:00', 1334954220, 1334954220);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (19, 9, '2012-04-20T13:37:00-07:00', 1334954220, 1334954220);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (10, 10, '2012-04-20T13:39:00-07:00', 1334954340, 1334954340);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (20, 11, '2012-04-20T13:40:00-07:00', 1334954400, 1334954400);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (18, 12, '2012-04-20T13:44:00-07:00', 1334954640, 1334954640);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (13, 13, '2012-04-20T13:45:00-07:00', 1334954700, 1334954700);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (14, 14, '2012-04-20T13:46:00-07:00', 1334954760, 1334954760);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (15, 15, '2012-04-20T13:47:00-07:00', 1334954820, 1334954820);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (16, 16, '2012-04-20T13:47:00-07:00', 1334954820, 1334954820);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (22, 17, '2012-04-20T15:57:00-07:00', 1334962620, 1334962620);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (23, 18, '2012-04-20T15:58:00-07:00', 1334962680, 1334962680);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (24, 19, '2012-04-20T15:58:00-07:00', 1334962680, 1334962680);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (25, 20, '2012-04-20T16:08:00-07:00', 1334963280, 1334963280);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (26, 21, '2012-04-20T16:13:00-07:00', 1334963580, 1334963580);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (27, 22, '2012-04-20T16:14:00-07:00', 1334963640, 1334963640);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (28, 23, '2012-04-20T16:14:00-07:00', 1334963640, 1334963640);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (29, 24, '2012-04-20T16:15:00-07:00', 1334963700, 1334963700);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (30, 25, '2012-04-20T16:15:00-07:00', 1334963700, 1334963700);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (31, 26, '2012-04-20T16:16:00-07:00', 1334963760, 1334963760);
INSERT INTO `sym_entries_data_5` (`id`, `entry_id`, `value`, `local`, `gmt`) VALUES (32, 27, '2012-04-20T16:16:00-07:00', 1334963760, 1334963760);

-- *** STRUCTURE: `sym_entries_data_6` ***
DROP TABLE IF EXISTS `sym_entries_data_6`;
CREATE TABLE `sym_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_6` ***
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (5, 5, 'no');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (6, 6, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (7, 7, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (21, 8, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (19, 9, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (10, 10, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (20, 11, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (18, 12, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (13, 13, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (14, 14, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (15, 15, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (16, 16, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (22, 17, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (23, 18, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (24, 19, 'no');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (25, 20, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (26, 21, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (27, 22, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (28, 23, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (29, 24, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (30, 25, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (31, 26, 'yes');
INSERT INTO `sym_entries_data_6` (`id`, `entry_id`, `value`) VALUES (32, 27, 'yes');

-- *** STRUCTURE: `sym_entries_data_9` ***
DROP TABLE IF EXISTS `sym_entries_data_9`;
CREATE TABLE `sym_entries_data_9` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`),
  KEY `order` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_entries_data_9` ***
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (5, 5, 'yes', 1334951212);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (6, 6, 'no', 1334952129);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (7, 7, 'no', 1334954022);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (10, 10, 'no', 1334954394);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (13, 13, 'no', 1334954774);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (14, 14, 'no', 1334954803);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (15, 15, 'no', 1334954842);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (16, 16, 'no', 1334954869);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (18, 12, 'no', 1334961957);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (19, 9, 'no', 1334962036);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (20, 11, 'no', 1334962097);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (21, 8, 'no', 1334962365);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (22, 17, 'no', 1334962689);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (23, 18, 'no', 1334962721);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (24, 19, 'no', 1334962751);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (25, 20, 'no', 1334963309);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (26, 21, 'no', 1334963605);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (27, 22, 'no', 1334963675);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (28, 23, 'no', 1334963705);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (29, 24, 'no', 1334963732);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (30, 25, 'no', 1334963768);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (31, 26, 'no', 1334963801);
INSERT INTO `sym_entries_data_9` (`id`, `entry_id`, `value`, `order`) VALUES (32, 27, 'no', 1334963834);

-- *** STRUCTURE: `sym_extensions` ***
DROP TABLE IF EXISTS `sym_extensions`;
CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') NOT NULL DEFAULT 'enabled',
  `version` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_extensions` ***
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (1, 'xssfilter', 'enabled', 1.1);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (2, 'debugdevkit', 'enabled', '1.2.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (3, 'dump_db', 'enabled', 1.09);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (4, 'export_ensemble', 'enabled', 1.16);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (5, 'selectbox_link_field', 'enabled', 1.22);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (6, 'jit_image_manipulation', 'enabled', 1.14);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (7, 'maintenance_mode', 'enabled', 1.5);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (8, 'profiledevkit', 'enabled', '1.0.4');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (9, 'markdown', 'enabled', 1.13);
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (10, 'edui', 'enabled', '0.6.1');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (11, 'html5_doctype', 'enabled', '1.2.5');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (12, 'order_entries', 'enabled', '1.9.8');
INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`) VALUES (14, 'uniquecheckboxfield', 'enabled', 1.1);

-- *** STRUCTURE: `sym_extensions_delegates` ***
DROP TABLE IF EXISTS `sym_extensions_delegates`;
CREATE TABLE `sym_extensions_delegates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` int(11) NOT NULL,
  `page` varchar(100) NOT NULL,
  `delegate` varchar(100) NOT NULL,
  `callback` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `extension_id` (`extension_id`),
  KEY `page` (`page`),
  KEY `delegate` (`delegate`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_extensions_delegates` ***
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (1, 1, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (2, 1, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (3, 1, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (4, 2, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (5, 2, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (6, 3, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (7, 3, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (8, 3, '/backend/', 'AppendPageAlert', 'appendAlert');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (9, 4, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (10, 6, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (11, 6, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (12, 7, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (13, 7, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (14, 7, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (15, 7, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (16, 7, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (17, 7, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (18, 7, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (19, 8, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (20, 8, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (21, 10, '/backend/', 'NavigationPreRender', 'deleteComponentsItem');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (22, 10, '/backend/', 'AdminPagePreGenerate', 'setRedirects');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (23, 11, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (24, 12, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');

-- *** STRUCTURE: `sym_fields` ***
DROP TABLE IF EXISTS `sym_fields`;
CREATE TABLE `sym_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `element_name` varchar(50) NOT NULL,
  `type` varchar(32) NOT NULL,
  `parent_section` int(11) NOT NULL DEFAULT '0',
  `required` enum('yes','no') NOT NULL DEFAULT 'yes',
  `sortorder` int(11) NOT NULL DEFAULT '1',
  `location` enum('main','sidebar') NOT NULL DEFAULT 'main',
  `show_column` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `index` (`element_name`,`type`,`parent_section`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields` ***
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (1, 'Category', 'category', 'input', 1, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Sort', 'sort', 'order_entries', 1, 'no', 1, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (12, 'CSS', 'css', 'textarea', 2, 'yes', 5, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Category', 'category', 'selectbox_link', 2, 'no', 1, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Date', 'date', 'date', 2, 'no', 2, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Publish', 'publish', 'checkbox', 2, 'no', 3, 'sidebar', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (11, 'HTML', 'html', 'textarea', 2, 'yes', 4, 'main', 'no');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (10, 'Title', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (9, 'Welcome', 'welcome', 'uniquecheckbox', 2, 'no', 6, 'sidebar', 'yes');

-- *** STRUCTURE: `sym_fields_author` ***
DROP TABLE IF EXISTS `sym_fields_author`;
CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_author_change` enum('yes','no') NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_author` ***

-- *** STRUCTURE: `sym_fields_checkbox` ***
DROP TABLE IF EXISTS `sym_fields_checkbox`;
CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') NOT NULL DEFAULT 'on',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_checkbox` ***
INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (5, 6, 'off', NULL);

-- *** STRUCTURE: `sym_fields_date` ***
DROP TABLE IF EXISTS `sym_fields_date`;
CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_date` ***
INSERT INTO `sym_fields_date` (`id`, `field_id`, `pre_populate`) VALUES (5, 5, 'yes');

-- *** STRUCTURE: `sym_fields_input` ***
DROP TABLE IF EXISTS `sym_fields_input`;
CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_input` ***
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (4, 1, NULL);
INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`) VALUES (5, 10, NULL);

-- *** STRUCTURE: `sym_fields_order_entries` ***
DROP TABLE IF EXISTS `sym_fields_order_entries`;
CREATE TABLE `sym_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_order_entries` ***
INSERT INTO `sym_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (3, 2, NULL, 'no');

-- *** STRUCTURE: `sym_fields_select` ***
DROP TABLE IF EXISTS `sym_fields_select`;
CREATE TABLE `sym_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') NOT NULL DEFAULT 'no',
  `static_options` text,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_select` ***

-- *** STRUCTURE: `sym_fields_selectbox_link` ***
DROP TABLE IF EXISTS `sym_fields_selectbox_link`;
CREATE TABLE `sym_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA: `sym_fields_selectbox_link` ***
INSERT INTO `sym_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`) VALUES (5, 4, 'no', 'yes', 1, 20);

-- *** STRUCTURE: `sym_fields_taglist` ***
DROP TABLE IF EXISTS `sym_fields_taglist`;
CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) DEFAULT NULL,
  `pre_populate_source` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_taglist` ***

-- *** STRUCTURE: `sym_fields_textarea` ***
DROP TABLE IF EXISTS `sym_fields_textarea`;
CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_textarea` ***
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (1, 11, NULL, 15);
INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (2, 12, NULL, 15);

-- *** STRUCTURE: `sym_fields_uniquecheckbox` ***
DROP TABLE IF EXISTS `sym_fields_uniquecheckbox`;
CREATE TABLE `sym_fields_uniquecheckbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') NOT NULL DEFAULT 'on',
  `description` varchar(255) DEFAULT NULL,
  `unique_entries` int(11) unsigned NOT NULL DEFAULT '1',
  `unique_steal` enum('on','off') NOT NULL DEFAULT 'on',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_uniquecheckbox` ***
INSERT INTO `sym_fields_uniquecheckbox` (`id`, `field_id`, `default_state`, `description`, `unique_entries`, `unique_steal`) VALUES (4, 9, 'off', 'Welcome (display on home page)', 1, 'on');

-- *** STRUCTURE: `sym_fields_upload` ***
DROP TABLE IF EXISTS `sym_fields_upload`;
CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) NOT NULL,
  `validator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- *** DATA: `sym_fields_upload` ***

-- *** STRUCTURE: `sym_pages` ***
DROP TABLE IF EXISTS `sym_pages`;
CREATE TABLE `sym_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `handle` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `data_sources` text,
  `events` text,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_pages` ***
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (1, NULL, 'Home', 'home', NULL, NULL, 'nav,welcome_pattern', NULL, 1);
INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (2, NULL, 'Patterns', 'patterns', NULL, 'category/title', 'nav,patterns', NULL, 2);

-- *** STRUCTURE: `sym_pages_types` ***
DROP TABLE IF EXISTS `sym_pages_types`;
CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_pages_types` ***
INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`) VALUES (4, 1, 'index');

-- *** STRUCTURE: `sym_sections` ***
DROP TABLE IF EXISTS `sym_sections`;
CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `handle` varchar(255) NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `entry_order` varchar(7) DEFAULT NULL,
  `entry_order_direction` enum('asc','desc') DEFAULT 'asc',
  `hidden` enum('yes','no') NOT NULL DEFAULT 'no',
  `navigation_group` varchar(255) NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_sections` ***
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (1, 'Categories', 'categories', 2, 2, 'asc', 'no', 'Content');
INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `entry_order`, `entry_order_direction`, `hidden`, `navigation_group`) VALUES (2, 'Patterns', 'patterns', 1, 10, 'asc', 'no', 'Content');

-- *** STRUCTURE: `sym_sections_association` ***
DROP TABLE IF EXISTS `sym_sections_association`;
CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- *** DATA: `sym_sections_association` ***
INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (5, 1, 1, 2, 4, 'no');
