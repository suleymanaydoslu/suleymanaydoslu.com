<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/* ADMIN PANEL */

$route['panel'] = 'admin/HomeController';

$route['panel/users'] = "admin/UsersController/all";
$route['panel/user/add'] = "admin/UsersController/add";
$route['panel/user/delete/(:num)'] = "admin/UsersController/delete/$1";
$route['panel/user/show/(:num)'] = "admin/UsersController/show/$1";
$route['panel/user/edit/(:num)'] = "admin/UsersController/edit/$1";

$route['panel/posts'] = "admin/PostsController/index";
$route['panel/post/create'] = "admin/PostsController/create";
$route['panel/post/store'] = "admin/PostsController/store";
$route['panel/post/edit/(:num)'] = "admin/PostsController/edit/$1";
$route['panel/post/update/(:num)'] = "admin/PostsController/update/$1";
$route['panel/post/delete/(:num)'] = "admin/PostsController/delete/$1";

$route['panel/pages'] = "admin/PagesController/all";
$route['panel/page/add'] = "admin/PagesController/add";
$route['panel/page/delete/(:num)'] = "admin/PagesController/delete/$1";
$route['panel/page/edit/(:num)'] = "admin/PagesController/edit/$1";

$route['panel/settings'] = "admin/SettingsController/all";
$route['panel/setting/edit/(:num)'] = "admin/SettingsController/edit/$1";

$route['panel/messages'] = "admin/ContactsController/home";
$route['panel/message/show/(:num)'] = "admin/ContactsController/show/$1";
$route['panel/message/delete/(:num)'] = "admin/ContactsController/delete/$1";

/* ONLY USERS */

//$route['profilim'] = "user/profile";

/* EVERYBODY */

$route['giris'] = "home/login";
$route['kaydol'] = "home/signup";
$route['panel/login'] = "home/adminLogin";
$route['logout'] = "home/logout";
$route['panel/logout'] = "home/logout";
$route['post-contact'] = "home/postContact";
$route['changeLang/(:any)'] = "pages/switchLanguage/$1";
$route['(:any)'] = "pages/getPageData";
$route['default_controller'] = "home";
$route['404_override'] = '';
