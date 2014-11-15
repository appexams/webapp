<?php
/**
 * Index controller Home page
 */
class IndexController extends SiteBaseController {

	/**
	 * Controller constructor
	 */
	public function init()
	{
		parent::init();
	}

	public function actionIndex() {
		$this->render('index',compact('model'));
	}


}
