<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html  xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tancy I love you</title>
<link type="text/css" rel="stylesheet" href="css/default.css">
<script type="text/javascript" src="script/jquery.min.js"></script>
<script type="text/javascript" src="script/jscex.min.js"></script>
<script type="text/javascript" src="script/jscex-parser.js"></script>
<script type="text/javascript" src="script/jscex-jit.js"></script>
<script type="text/javascript" src="script/jscex-builderbase.min.js"></script>
<script type="text/javascript" src="script/jscex-async.min.js"></script>
<script type="text/javascript" src="script/jscex-async-powerpack.min.js"></script>
<script type="text/javascript" src="script/functions.js" charset="utf-8"></script>
<script type="text/javascript" src="script/love.js" charset="utf-8"></script>
<script type="text/javascript" src="script/player.js"></script>
<link rel="stylesheet" href="css/player.css"/>
<style type="text/css">
<!--
.STYLE1 {
	color: #666666
}
-->
</style>
    <script src="script/musicbox.js" type="text/javascript"></script>
    <script type="text/javascript">
    var mb=null;
	    $().ready(function(){
	    mb=new MusicBox();
	    mb.init();
    });
    </script>
</head>
<body> 
<!-- 代码 开始 -->
<div class="m_player" id="divplayer" role="application" onselectstart="return false" style="left:-541px">
    <div class="m_player_dock" id="divsongframe">
        <div class="music_info" id="divsonginfo">
		   <a target="contentFrame" class="album_pic" title="">
		     <img src="img/cover_mine_130.jpg" alt="" onerror="this.src='img/cover_mine_130.jpg'">
		    </a>
			<div class="music_info_main">
			  <p class="music_name" title="music" id="music"><span>正在加载</span></p>
		</div>
		</div>
        <div class="bar_op">
            <strong title="上一首( [ )" class="prev_bt" onClick="mb.preMusic();"><span>上一首</span></strong>
            <strong title="播放(P)" class="play_bt" id="btnplay" onClick="mb.playing()" style="display:none"><span>播放</span></strong>
            <strong title="播放(P)" class="pause_bt" id="btnpause" onClick="mb.pausePaly()"><span>暂停</span></strong>
            <strong title="下一首( ] )" class="next_bt" onClick="mb.nextMusic();"><span>下一首</span></strong>
            <p class="volume" title="音量调节">
                <span class="volume_icon" id="spanmute" title="点击设为静音(M)"></span>
				<span class="volume_regulate" id="spanvolume">
                    <span id="spanvolumenum">0</span>
					<input type="range" min=0 max=100 value="100" id="volumenum"/>
				</span>
            </p>
        </div>
        <p class="playbar_cp_select" id="divselect">
        </p>
        <p class="player_bar">
            <span class="player_bg_bar" id="spanplayer_bgbar"></span>
            <span class="download_bar" id="downloadbar" style="width: 0%;"></span>
            <span class="play_current_bar" style="width: 0%;" id="spanplaybar"></span>
            <span class="progress_op" style="left: 0%;" id="spanprogress_op"></span>
        </p>
        <div class="time_show" style="left:240px;bottom:8px;display:none;">
            <p id="time_show"></p>
            <span class="icon_arrow_foot"><i class="foot_border"></i><i class="foot_arrow"></i></span>
        </div>
    </div>
    <span class="active_tip" id="spanaddtips" style="top:0px;display:none;"></span>
    <span title="展开播放列表" class="open_list" id="spansongnum1"><span>0</span></span>
    <button type="button" class="folded_bt" title="点击收起" id="btnfold"><span>点击收起/展开</span></button>
    <!--play list-->
    <div class="play_list_frame" id="divplayframe" style="display: none ;filter:alpha(opacity=0);opacity:0;">
        <div class="play_list" id="divlistmain">
            <div class="play_list_main" id="divplaylist" style="display:">
                <!-- 播放列表_S-->
                <div class="single_list" id="divsonglist" dirid="0">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 代码 结束 -->

<div id="main">
 <div id="wrap">
    <div id="text">
      <div id="code"> <font color="#FF0000"> <span class="say">Dear Tancy，I love you</span><br>
        <span class="say"> </span><br>
        <span class="say"> I know i don't say sweet to you，</span><br>
        <span class="say"> </span><br>
        <span class="say"> But but i can action to love you</span><br>
        <span class="say"> </span><br>            
            <span class="say"> 有些东西因为越在乎所以越怕失去</span><br>
            <span class="say"> </span><br>
        <span class="say">因为我太爱你了，所以我害怕失去你</span><br>
                <span class="say"> </span><br>
        <span class="say">因为我太爱你了，所以我对你总啰嗦</span><br>
                <span class="say"> </span><br>
        <span class="say">希望可以执子之手，与子偕老</span><br>
                <span class="say"> </span><br>
        <span class="say">如果上天让我许三个愿望，</span><br>
                <span class="say">第一个是今生今世和你在一起， </span><br>
             <span class="say"> </span><br>
             <span class="say"> 第二个是再生再世和你在一起，</span><br>
             <span class="say"> </span><br>
             <span class="say">第三个是永生永世和你不分离 </span><br>
        <span class="say"><span class="space"></span> love you:wen</span> </font>
            <br />
            <br />
        </p>
      </div>
    </div>
    
    <div id="clock-box"> <span class="STYLE1"></span><font color="#FF4500">亲爱的Tancy，我爱你</font> <span class="STYLE1">已经是……</span>
      <div id="clock"></div>
    </div>
    <canvas id="canvas" width="1100" height="680"></canvas>
  </div>
</div>
<script>
    </script>
<script>
    (function () {
        var canvas = $('#canvas');

        if (!canvas[0].getContext) {
            $("#error").show();
            return false;
        }

        var width = canvas.width();
        var height = canvas.height();
        canvas.attr("width", width);
        canvas.attr("height", height);
        var opts = {
            seed: {
                x: width / 2 - 20,
                color: "rgb(190, 26, 37)",
                scale: 2
            },
            branch: [
                [535, 680, 570, 250, 500, 200, 30, 100, [
                    [540, 500, 455, 417, 340, 400, 13, 100, [
                        [450, 435, 434, 430, 394, 395, 2, 40]
                    ]],
                    [550, 445, 600, 356, 680, 345, 12, 100, [
                        [578, 400, 648, 409, 661, 426, 3, 80]
                    ]],
                    [539, 281, 537, 248, 534, 217, 3, 40],
                    [546, 397, 413, 247, 328, 244, 9, 80, [
                        [427, 286, 383, 253, 371, 205, 2, 40],
                        [498, 345, 435, 315, 395, 330, 4, 60]
                    ]],
                    [546, 357, 608, 252, 678, 221, 6, 100, [
                        [590, 293, 646, 277, 648, 271, 2, 80]
                    ]]
                ]]
            ],
            bloom: {
                num: 700,
                width: 1080,
                height: 650,
            },
            footer: {
                width: 1200,
                height: 5,
                speed: 10,
            }
        }

        var tree = new Tree(canvas[0], width, height, opts);
        var seed = tree.seed;
        var foot = tree.footer;
        var hold = 1;

        canvas.click(function (e) {
            var offset = canvas.offset(), x, y;
            x = e.pageX - offset.left;
            y = e.pageY - offset.top;
            if (seed.hover(x, y)) {
                hold = 0;
                canvas.unbind("click");
                canvas.unbind("mousemove");
                canvas.removeClass('hand');
            }
        }).mousemove(function (e) {
            var offset = canvas.offset(), x, y;
            x = e.pageX - offset.left;
            y = e.pageY - offset.top;
            canvas.toggleClass('hand', seed.hover(x, y));
        });

        var seedAnimate = eval(Jscex.compile("async", function () {
            seed.draw();
            while (hold) {
                $await(Jscex.Async.sleep(10));
            }
            while (seed.canScale()) {
                seed.scale(0.95);
                $await(Jscex.Async.sleep(10));
            }
            while (seed.canMove()) {
                seed.move(0, 2);
                foot.draw();
                $await(Jscex.Async.sleep(10));
            }
        }));

        var growAnimate = eval(Jscex.compile("async", function () {
            do {
                tree.grow();
                $await(Jscex.Async.sleep(10));
            } while (tree.canGrow());
        }));

        var flowAnimate = eval(Jscex.compile("async", function () {
            do {
                tree.flower(2);
                $await(Jscex.Async.sleep(10));
            } while (tree.canFlower());
        }));

        var moveAnimate = eval(Jscex.compile("async", function () {
            tree.snapshot("p1", 240, 0, 610, 680);
            while (tree.move("p1", 500, 0)) {
                foot.draw();
                $await(Jscex.Async.sleep(10));
            }
            foot.draw();
            tree.snapshot("p2", 500, 0, 610, 680);

            // 会有闪烁不得意这样做, (＞﹏＜)
            canvas.parent().css("background", "url(" + tree.toDataURL('image/png') + ")");
            canvas.css("background", "#ffe");
            $await(Jscex.Async.sleep(300));
            canvas.css("background", "none");
        }));

        var jumpAnimate = eval(Jscex.compile("async", function () {
            var ctx = tree.ctx;
            while (true) {
                tree.ctx.clearRect(0, 0, width, height);
                tree.jump();
                foot.draw();
                $await(Jscex.Async.sleep(25));
            }
        }));

        var textAnimate = eval(Jscex.compile("async", function () {
            var together = new Date();
            together.setFullYear(2015, 5,27); 			//时间年月日
            together.setHours(19);						//小时	
            together.setMinutes(30);					//分钟
            together.setSeconds(0);					//秒前一位
            together.setMilliseconds(2);				//秒第二位

            $("#code").show().typewriter();
            $("#clock-box").fadeIn(500);
            while (true) {
                timeElapse(together);
                $await(Jscex.Async.sleep(1000));
            }
        }));

        var runAsync = eval(Jscex.compile("async", function () {
            $await(seedAnimate());
            $await(growAnimate());
            $await(flowAnimate());
            $await(moveAnimate());

            textAnimate().start();

            $await(jumpAnimate());
        }));

        runAsync().start();
    })();
    </script>

  <audio id="musicBox"  controls="false"  style="display:none" onended="mb.ended()">
  </audio>
</body>
</html>
