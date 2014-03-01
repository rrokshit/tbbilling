<?php

class CalenderController extends Controller
{
	protected function beforeAction($action)
	{
		if(Yii::app()->user->isGuest)
			$this->redirect($this->createUrl('/site/login'));
		else
			return true;	
	}
	public function actionIndex()
	{
		$this->render('index');
	}

	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}
	*/
	# PHP Calendar (version 2.3), written by Keith Devens
# http://keithdevens.com/software/php_calendar
#  see example at http://keithdevens.com/weblog
# License: http://keithdevens.com/software/license

    static public function generate_calendar($year, $month, $days = array(), $day_name_length = 3, $month_href = NULL, $first_day = 0, $pn = array()){
		$first_of_month = gmmktime(0,0,0,$month,1,$year);
		#remember that mktime will automatically correct if invalid dates are entered
		# for instance, mktime(0,0,0,12,32,1997) will be the date for Jan 1, 1998
		# this provides a built in "rounding" feature to generate_calendar()
	
		$day_names = array(); #generate all the day names according to the current locale
		for($n=0,$t=(3+$first_day)*86400; $n<7; $n++,$t+=86400) #January 4, 1970 was a Sunday
			$day_names[$n] = ucfirst(gmstrftime('%A',$t)); #%A means full textual day name
	
		list($month, $year, $month_name, $weekday) = explode(',',gmstrftime('%m,%Y,%B,%w',$first_of_month));
		$weekday = ($weekday + 7 - $first_day) % 7; #adjust for $first_day
		$title   = htmlentities(ucfirst($month_name)).'&nbsp;'.$year;  #note that some locales don't capitalize month and day names
	
		#Begin calendar. Uses a real <caption>. See http://diveintomark.org/archives/2002/07/03
		@list($p, $pl) = each($pn); @list($n, $nl) = each($pn); #previous and next links, if applicable
		if($p) $p = '<span class="calendar-prev">'.($pl ? '<a href="'.htmlspecialchars($pl).'">'.$p.'</a>' : $p).'</span>&nbsp;';
		if($n) $n = '&nbsp;<span class="calendar-next">'.($nl ? '<a href="'.htmlspecialchars($nl).'">'.$n.'</a>' : $n).'</span>';

                $calendar = '<style>
.cday {
    color: #A4D6ED;
    font-family: Tahoma;
    font-size: 10px;
    font-weight: bold;
    line-height: 22px;
    list-style: none outside none;
    text-align: center;
}

.cdate{
    text-align: center;
    background: none repeat scroll 0 0 #2D566B;
    border: 1px solid #70A2B4;
    color: #FFFFFF;
    font-family: tahoma;
    font-size: 10px;
    font-weight: bold;
    height: 20px;
    line-height: 20px;
    width: 20px;
}
.cactive{
    background: none repeat scroll 0 0 #8AAD00;
    border-color: #5C700C;
    text-align: center;
    color: #FFFFFF;
    font-family: tahoma;
    font-size: 10px;
    font-weight: bold;
    height: 20px;
    line-height: 20px;
    width: 20px;
}
</style>';
		$calendar = $calendar.'<table align="center" style="width:90%">'."\n".
			'<caption class="cmonth">'.$p.($month_href ? '<a href="'.htmlspecialchars($month_href).'">'.$title.'</a>' : $title).$n."</caption>\n<tr>";
	
		if($day_name_length){ #if the day names should be shown ($day_name_length > 0)
			#if day_name_length is >3, the full name of the day will be printed
			foreach($day_names as $d)
				$calendar .= '<th class="cday" abbr="'.htmlentities($d).'">'.htmlentities($day_name_length < 4 ? substr($d,0,$day_name_length) : $d).'</th>';
			$calendar .= "</tr>\n<tr>";
		}
	
		if($weekday > 0) $calendar .= '<td colspan="'.$weekday.'">&nbsp;</td>'; #initial 'empty' days
		for($day=1,$days_in_month=gmdate('t',$first_of_month); $day<=$days_in_month; $day++,$weekday++){

			if($day==date('d'))  $class  = "cactive";
			else  $class  = "cdate";
			if($weekday == 7){
				$weekday   = 0; #start a new week
				$calendar .= "</tr>\n<tr>";
			}
			if(isset($days[$day]) and is_array($days[$day])){
				@list($link, $classes, $content) = $days[$day];
				if(is_null($content))  $content  = $day;

				$calendar .= '<td class="cactive"'.($classes ? ' class="'.htmlspecialchars($classes).'">' : '>').
					($link ? '<a href="'.htmlspecialchars($link).'">'.$content.'</a>' : $content).'</td>';
			}
			else $calendar .= "<td class='".$class."'>$day</td>";
		}
		if($weekday != 7) $calendar .= '<td colspan="'.(7-$weekday).'">&nbsp;</td>'; #remaining "empty" days
	
		return $calendar."</tr>\n</table>\n";
	}
}