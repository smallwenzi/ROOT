
MusicBox=function (){
    var _this=this;
    var  media= document.getElementById("musicBox"); 
    var  musicFiles=[
                   {name:"亲爱的",url:"music/1.mp3"} ,
                   {name:"其实",url:"music/2.mp3"},
                   {name:"好想就这样",url:"music/3.mp3"},
                   {name:"一直",url:"music/4.mp3"},
                   {name:"爱着你",url:"music/5.mp3"},
                   {name:"哪怕",url:"music/6.mp3"},
                   {name:"只有一次",url:"music/7.mp3"},
				   {name:"而已",url:"music/8.mp3"},
                   {name:"就算",url:"music/9.mp3"},
                   {name:"死都愿意",url:"music/10.mp3"},
                   {name:"我",url:"music/11.mp3"},
                   {name:"已经",url:"music/12.mp3"},
                   {name:"依赖",url:"music/13.mp3"},
                   {name:"你",url:"music/14.mp3"},
                   {name:"已经",url:"music/15.mp3"},
                   {name:"无法自拔",url:"music/16.mp3"},
                   {name:"说真的",url:"music/17.mp3"},
                   {name:"我会好好爱",url:"music/18.mp3"},
                   {name:"请你相信我",url:"music/19.mp3"},
                   {name:"其实我很爱你",url:"music/20.mp3"},
                   {name:"这一次",url:"music/21.mp3"},
                   {name:"我",url:"music/22.mp3"},
                   {name:"再也不",url:"music/23.mp3"},
                   {name:"说",url:"music/24.mp3"},
					{name:"放弃",url:"music/25.mp3"} 
                   ];
    //当前正在播放的歌曲的索引               
    var index=-1;
    //当前正在播放的歌曲
    var playingFile=null;
    //播放模式
    var playMode=1;
    //下一首
    this.nextMusic=function(){
       if(playMode=="1"){
            index+=1;
        }
        if(index==musicFiles.length){
            index=0;
        }
        playingFile=musicFiles[index];
        console.debug("url"+playingFile.url.replace("%20"," "));
        media.setAttribute("src",playingFile.url.replace("%20"," ")); 
        media.play();
        $("#music").html("<span>正在播放:"+playingFile.name+"</span>");
      
        $("#divsonglist").children().css("play_hover");
        var li= $("#divsonglist").children(index);
        li.css("play_current");  
    }
    
    //上一首
    this.preMusic=function(){
       if(playMode=="1"){
            index=index-1;
        }
        if(index==-1){
            index=0;
        }
        playingFile=musicFiles[index];
        media.setAttribute("src",playingFile.url.replace("%20"," ")); 
        media.play();
        $("#music").html("<span>正在播放:"+playingFile.name+"</span>");
        $("#divsonglist").children().css("play_hover");
        var li= $("#divsonglist").children(index);
        li.css("play_current");
     
    }
    //加载
    this. loadStart=function(){
        $("#sn_status").text("加载中....");
    }
    //播放
    this.playing=function(){
    	$("#btnpause").css("display","");
    	$("#btnplay").css("display","none");
    	media.play();
    } 
    //暂停
    this.pausePaly=function(){
    	$("#btnpause").css("display","none");
    	$("#btnplay").css("display","");
    	media.pause();
    }
    //加载出错
    this. loadError=function(){
        $("#sn_status").text("加载“"+playingFile.name+"”失败，可能资源不存在~");
    }
    
    //自动切换
    this. ended=function(){
    	 _this.nextMusic();
    }
    //初始化
    this.init=function(){
        for(var a in musicFiles){
			$("#divsonglist").append("<li><strong class='music_name'>"
					+musicFiles[a].name+"</strong></li>");
        }
        _this.nextMusic();
    }
    
    $("#volumenum").change(function(){
    	   var value=this.value;
    	   media.volume=value/100;
    });
}
