#!/usr/local/bin/ruby
#encoding:UTF-8
require "uri"

print "Content-Type: text/html\n\n"

array=["w","!","ｯ"]
str="バッ" + array[rand(3)] + array[rand(3)] + array[rand(3)] + array[rand(3)] + "バッ" + array[rand(3)] + array[rand(3)] + array[rand(3)] + array[rand(3)] + "バッバトルドォ"\
+ array[rand(3)] + "ボ" + array[rand(3)] + "ボ" + array[rand(3)] + "ボールを" + array[rand(3)] + "を" + array[rand(3)] + "を" + array[rand(3)] + "アッ" + array[rand(3)] + "アッ"\
+ array[rand(3)] + array[rand(3)] + array[rand(3)] + "アッ" + array[rand(3)] + array[rand(3)] + array[rand(3)] + array[rand(3)] + "相手のゴォ" + array[rand(3)] + array[rand(3)] + array[rand(3)]\
+ "ルにシュ" + array[rand(3)] + "シュ" + array[rand(3)] + "シュ" + array[rand(3)] + "シュ" + array[rand(3)] + "シュゥゥゥ" + array[rand(3)] + array[rand(3)] + array[rand(3)]\
+ "ーッ" + array[rand(3)] + array[rand(3)] + "チチチ" + array[rand(3)] + array[rand(3)] + array[rand(3)] + array[rand(3)] + "チョォ" + array[rand(3)] + array[rand(3)] + array[rand(3)] + array[rand(3)]\
+ "超" + array[rand(3)] + "エキサイティェン!!" + array[rand(3)] + " #バトルドォム"
str2=URI.encode(str)

print <<HTML
<!DOCTYPE HTML>
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="description" content="バトルドームジェネレーター">
	<meta name="keywords" content="バトルドームジェネレーター">
	<meta name="generator" content="Notepad++">
	<meta name="author" content="alpha_kai_NET">
	<meta name="description" content="バトルドームジェネレーター">
	
	<link rel="stylesheet" type="text/css" media="screen" href="style.css">
	<title>簡易バトルドームジェネレーター2 web版</title>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-39327537-1']);
		_gaq.push(['_trackPageview']);

		(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	</script>
	<script type="text/javascript">
		function btn(){
			location.href = "bdjw2.rb";
		}
	</script>
	<!--
		GPL v3 LICENSE http://www.gnu.org/licenses/gpl.html
		Copyright (C) α改 @alpha_kai_NET 2012-2013 alpha-kai-net.info all rights reserved
	-->
</head>
<body>
<!--IEに対する(注意|警告)-->
<!--[if gte IE 9]>
	<div style="width:800px;height:45px;color:#ff0000;background-color:#000000;text-align:center;">
		Internet Explorer 9以上をお使いのようです<br>
		問題ありませんが推奨するブラウザーは
		<a href="http://www.mozilla.jp/firefox/">Firefox</a>,
		<a href="http://www.google.co.jp/intl/ja/chrome/browser/">Chrome</a>,
		<a href="http://jp.opera.com/">Opera</a>です<br>
	</div>
<![endif]-->
<!--[if lte IE 8]>
	<div style="width:800px;height:70px;color:#ff0000;background-color:#000000;text-align:center;">
		お使いのブラウザーはInternet Explorer9以下のようです<br>
		強制ではありませんが他のブラウザーの使用を強く推奨します<br>
		推奨するブラウザーは
		<a href="http://www.mozilla.jp/firefox/">Firefox</a>,
		<a href="http://www.google.co.jp/intl/ja/chrome/browser/">Chrome</a>,
		<a href="http://jp.opera.com/">Opera</a>です<br>
	</div>
<![endif]-->

	<div id="main"><!--main content-->
		<header>
			<div id="top">
				<span id="topja">バトルドームジェネレーター web版 Ver 2.0.2</span><br>
				<span id="topen">Battle Dome Generator for web</span>
				<span id="topname">α改 <a href="http://twitter.com/alpha_kai_NET">@alpha_kai_NET</a></span>				
			</div>
		</header>

		<section class="description">
			<h2>バトルドームジェネレーターとは</h2>
				<div id="description">
					<p class="description">
						作者:α改 <a href="http://twitter.com/alpha_kai_NET">@alpha_kai_NET</a><br>
						バトルドームジェネレーターのweb版(Ruby)<br>
						web化発案はじゅん氏 <a href="https://twitter.com/x0jn">@x0jn</a><br>
						元ネタ:<a href="http://www.nicovideo.jp/watch/sm19535017">ポケモンが超エキサイティングな3Dアクションゲームになってる件</a><br>
						ライセンスは<a href="http://www.gnu.org/licenses/gpl.html">GPLv3で公開しています</a>
					</p>
				</div>
		</section>
		
		<section>
			<div class="labelbox">
				<div class="labellb">
					<div class="labelrb">
						<div class="dece">Result</div>
					</div>
				</div>
			</div>
			<br>
			<div class="putstr">
				<!--str表示-->
				#{str}
			</div>
			<input class="btn" value="再ジェネレート" type="button" onClick="btn()">
		</section>
		
		<br><br>
		
		<section>
			<div class="labelbox">
				<div class="labellb">
					<div class="labelrb">
						<div class="dec">コピー用</div>
					</div>
				</div>
			</div>
			<br>
		
			<form method="post">
				<div>
					<textarea class="tarea" name="text" rows="6" cols="70" onclick="this.focus();this.select()">#{str}</textarea><br>
				</div>
			</form>
		
			<div class="btn">
				<a href="http://twitter.com/?status=#{str2}"><button>ツイート</button></a>
			</div>
			<div class="ss">
				(Twitter公式のTweet Buttonに飛びます)
			</div>
		</section>
		
		<footer>
			<div id="footer">
				Copyright (C) α改 @alpha_kai_NET 2012-2013 alpha-kai-net.info all rights reserved<br>
				GPL v3 LICENSE http://www.gnu.org/licenses/gpl.html
			</div>
		</footer>
	</div><!--/main content-->
</body>
</html>
HTML