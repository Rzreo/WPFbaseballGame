   M S B A M L   `   `   `  ????D  @baseball2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:baseball2	baseball2  5   	       baseball2.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:baseball2     5   	     ? Title$  
MainWindow??5   	   $	??450??6   $	??800??6)   .??5	      ?  ? ColumnDefinitions 5
   
   ?? 5      ?? 5      $??3* ?6   ?? 5       ? RowDefinitions 5   
   ?? 5      $??284.026 ?6   ?? 5      $??150.014 ?6   .+?5   
   ?? -   5         ??Name$ 
background??5      $??Center=?6%   $??Center=?6B   $	??284??6]   $	??800??6j   $??1??6v   ??5      ?? 5       ?? ImageSource$ /m_event_ground.jpg??6    j? Stretch$
 Fill=?6?    j? TileMode$
 None=?6N   .+?5      ?? -   5        $ outGroup??5       ?? Left$	 560??6'   
 ?? Top$ 92??69   .+?5      A? -   5        	 A?Name$	 outRound??5      $	??100??6,   $	??100??69   ???	#FFFF30306E   ?? 5      -   5        
 ??Name$
 outCount??5      $
??Wrap=?6.   $ 37??6B   $ 22??6S    ?? TextAlignment$ Center=?6c   $??Arial)?6z   $??48(?6?   ?? 6?    ? Language$ ko-kr?6?   $?0??6?   6?   5      ?? 5      -   5        $ strikeGroup??5      $	 140??6*   $ 92??6<   .+?5      A? -   5        $	 
srikeRound??5      $	??100??6.   $	??100??6;   ???	#FF3DF5346G   ?? 5      -   5        $
 strikeCount??5      $ 37??61   $ 22??6B   $
??Wrap=?6R   $ Center=?6f   $??Arial)?6}   $??48(?6?   ?? 6?   $ ko-kr?6?   $?0??6?   6?   5      ?? 5      -   5        $ 	ballGroup??5      $	??100??6(   $	 350??65   $ 92??6G   $	??100??6W   .+?5       A? -	   5        $	 	ballRound??5       $	??100??6-   $	??100??6:   ???	#FFFFFF306F   ?? 5!      -
   5        $
 	ballCount??5!      $ 37??6/   $ 22??6@   $
??Wrap=?6P   $ Center=?6d   $??Arial)?6{   $??48(?6?   $??0??6?   5"      5#      ?? 5$   
   ???	#FF8F8F8F$??3??6(   $??	0,284,0,0q?6<   $??2??6O   .+?5%      ?? -   5         ??Name$ submit??5%      $??제출??6%   $	 680??62   $ 10??6D   $??75??6T   $??50??6_   $
??Bold"?6k   $??Arial)?6}   $??22(?6?   6?   ?? 5&      -   5         ??Name$ inputBox??5&      $	 328??6(   $ 41??6:   $	??123??6J    ?? TextWrapping$
 Wrap=?6U   $??34??6i   $	??144??6u   $??Arial)?6?   $??22(?6?    ?? TextAlignment$ Center=?6?    ?? 	MaxLength$ 3??6?   6  ?? 5'      -   5        $ startButton??5'      $??게임시작??6*   $	 305??69   $ 50??6K    J? RenderTransformOrigin$ 	-4.834,-1&?6[   $??50??6}   $	??190??6?   $??Arial)?6?   $??24(?6?   $
??Bold"?6?   $??Italic$?6?   $y?Hidden=?6?    ? 	Resources 5(       ?? 
TargetType ?? Property ?? Value??%_   '??       ?? 5)      " ??6   .?5*      ??  ?@??CornerRadius$ 10??69   5+      5,      5-      ?? 5.      -   5         ??Name$ firstNum??5.      $	 321??6)   $ 84??6;   $??47??6K   6V   ?? 5/      -   5        $ 	secondNum??5/      $	 376??6*   $ 84??6<   $??47??6L   6W   ?? 50      -   5        $ thirdNum??50      $	 432??6)   $ 84??6;   $??47??6K   6V   ?? 51      -   5        $ historyButton??51      $??기록보기??6,   $	 680??6;   $ 73??6M   $??50??6]   $??75??6i   $??18(?6t   $
??Bold"?6?   6?   52      ?? 53   
   -   5        $ tryCountGroup??53      $
??Auto??6(   $??30,25,30,25q?66   $??1??6K   $
??Auto??6X   .+?54      A? -   5        $	 tryCountBall??54      $	??100??6,   
???   ?$	??100??6H   $	 -10??6T   ??55      ?? 56      $ /다운로드.jpg??6!   58      ?? 59      -   5        $
 tryCount??59      $
??Wrap=?6*   $??Arial)?6>   $??36(?6Q   $ Center=?6_   $ 40??6v   $ 22??6?   ?? 6?   $ ko-kr?6?   $?0??6?   6?   5:      A? 5;   
   -   5        $
	 logo??5;      
???   ?$??0,10,0,0q?6/   $	??300??6A   $??Center=?6N   $	??Top=?6k   $	??300??6?   $??2??6?   $??1??6?   $y?Hidden=?6?   ??5<      ?? 5=      $ /data_illust_Bat.jpg??6   5?      ?? 5@   
   -   5        $
 title??5@      $??1??6#   $??Center=?63   $??	0,217,0,0q?6P   $
??Wrap=?6c   $	??Top=?6w   $ Center=?6?   $
??Bold"?6?   $??Arial)?6?   $??72(?6?   $??Normal$?6?   
???   ?$y?Hidden=?6  ??6?   Z? ?? 6/  $ ko-kr?63  $?야구게임??6D  6S  ?? 5A   
   -   5        $
 successMessage??5A      $
??Left=?6,   $??130,159,0,0q?6G   $
??Wrap=?6\   $	??Top=?6p   $
??Bold"?6?   $??Arial)?6?   $	??100(?6?   $	??560??6?   $??3??6?   $y?Hidden=?6?   ?? 6?   $ ko-kr?6?   $?정답입니다!??6  6  ?? 5B   
   -   5        $ retryButton??5B      $??다시하기??6&   $??1??65   $??Center=?6E   $??0,29,0,0q?6b   $??1??6t   $	??Top=?6?   $??50??6?   $	??190??6?   $
??Bold"?6?   $??Arial)?6?   $??24(?6?   $??Italic$?6?   $y?Hidden=?6   5C      ??%_   '??       ?? 5D      " ??6   .?5E      ??  ?@??CornerRadius$ 10??65   5F      5G      5H      A? 5I   
   -   5        $	 	scoreBall??5I      $??1??6%   $??Center=?65   $	??130??6R   $??0,25,0,0q?6_   
???   ?$	??Top=?6?   $	??130??6?   $y?Hidden=?6?   ??5J      ?? 5K      $ /다운로드.jpg??6   5M      ?? 5N   
   -   5        $
 	scoreText??5N      $??1??6'   $??Center=?67   $??0,42,0,0q?6T   $
??Wrap=?6f   $	??Top=?6z   $??0??6?   $??72(?6?   $y?Hidden=?6?   ?? 5O   
   -   5         ??Name$ historyBorder??5O      $??1??6)   $??2??69   $	??270??6J   $	??347??6V   ???	#FF725122???	#FFA8751D._?5P      ?? -   5        $
 historyBlock??5P      $
??Wrap=?6.   ???	#FF26762E$??1??6Y   $??2??6j   $ Center=?6{   $??Arial)?6?   $??16(?6?   
???????$??기록??6?   $??Center=?6?   $	??263??6?   $	??340??6?   $??Center=?6  5Q      5S      5T      