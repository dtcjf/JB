<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>编辑</title>
<meta name="renderer" content="webkit">
<!-- 对移动设备友好 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href=<%=request.getContextPath() %>/css/font-awesome.css rel="stylesheet" />
<link href=<%=request.getContextPath() %>/css/bootstrap.min.css  rel="stylesheet" />
<script src=<%=request.getContextPath() %>/js/jquery-1.10.2.js></script>
<script src=<%=request.getContextPath() %>/js/jquery.hotkeys.js></script>
<script src=<%=request.getContextPath() %>/js/bootstrap.min.js></script>
<script src=<%=request.getContextPath() %>/js/bootstrap-wysiwyg.js></script>
<script>
$(function(){
    function initToolbarBootstrapBindings() {
      var fonts = ['Serif', 'Sans', 'Arial', 'Arial Black', 'Courier', 
            'Courier New', 'Comic Sans MS', 'Helvetica', 'Impact', 'Lucida Grande', 'Lucida Sans', 'Tahoma', 'Times',
            'Times New Roman', 'Verdana'],
            fontTarget = $('[title=Font]').siblings('.dropdown-menu');
      $.each(fonts, function (idx, fontName) {
          fontTarget.append($('<li><a data-edit="fontName ' + fontName +'" style="font-family:\''+ fontName +'\'">'+fontName + '</a></li>'));
      });
      $('a[title]').tooltip({container:'body'});
    	$('.dropdown-menu input').click(function() {return false;})
		    .change(function () {$(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');})
        .keydown('esc', function () {this.value='';$(this).change();});

      $('[data-role=magic-overlay]').each(function () { 
        var overlay = $(this), target = $(overlay.data('target')); 
        overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
      });
      $('#voiceBtn').hide();
      // if ("onwebkitspeechchange"  in document.createElement("input")) {
      //   var editorOffset = $('#editor').offset();
      //   $('#voiceBtn').css('position','absolute').offset({top: editorOffset.top, left: editorOffset.left+$('#editor').innerWidth()-35});
      // } else {
      //   $('#voiceBtn').hide();
      // }
    };
    initToolbarBootstrapBindings();  
    $('#editor').wysiwyg();
    window.prettyPrint && prettyPrint();

    // 清空按钮
    $("#clearBtn").click(function(){
    	 $('#editor').text("");
  	  });
	  // 保存按钮
    $("#saveBtn").click(function(){
    	 
    	  });
	  // 发表按钮
    $("#pushBtn").click(function(){
    	var content=$('#editor').html();
    	var title=$("#title").val();
    	if(content==""){
        	alert("请输入内容");
        }else if(title==""){
        	alert("请输入标题");
        }else{
        	var params={};
        	params.title=title;
        	params.content=content;
       	  	$.ajax({
       	  	  	url:"push",
       	  	  	method:"post",
       	  	  	data:params,
       	  	  	dataType:"text",
       	  	  	async:true,
       	  	  	success: function(result){
    	   	  	  	var res = String($.trim(result)); 
       	  	  		if(res=="success"){
       	   	  	  		alert("发表成功");
       	   	  	  		window.location.href=new String("/blog/index");
       	   	  	  	}else{
       	   	   	  	  	alert("1");
       	   	   	  	}
       	  	  	 }
       	  	  	});
        }
  	  });
  });
  
</script>
<style>
	/* this CSS is not part of the widget, it is here just as an example of the demo page styling.... Don't copy this one, roll your own. One
 * of the key things about the widget is that it allows you to do your own styling!
 */

#editor {
	max-height: 250px;
	height: 250px;
	background-color: white;
	border-collapse: separate; 
	border: 1px solid rgb(204, 204, 204); 
	padding: 4px; 
	box-sizing: content-box; 
	-webkit-box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset; 
	box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
	border-top-right-radius: 3px; border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px; border-top-left-radius: 3px;
	overflow: scroll;
	outline: none;
}
#voiceBtn {
  width: 20px;
  color: transparent;
  background-color: transparent;
  transform: scale(2.0, 2.0);
  -webkit-transform: scale(2.0, 2.0);
  -moz-transform: scale(2.0, 2.0);
  border: transparent;
  cursor: pointer;
  box-shadow: none;
  -webkit-box-shadow: none;
}

div[data-role="editor-toolbar"] {
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

.dropdown-menu a {
  cursor: pointer;
}
	
</style>
</head>
<body style="margin-top:50px">
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav navbar-right" style="margin-top:0">
				<li class="active"><a href="/blog/index"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-list"></span> 日志</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-fire"></span> 留言</a></li>
				<li><a href="/blog/tologin"><span class="glyphicon  glyphicon-user"></span> 登录</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> 关于</a></li>
			</ul>	
		</div>
	</div>
</nav>
<div class="container">
  <div class="hero-unit" >
  <h3>编辑文章</h3>
  	 <div class="form-group">
  		<input type="text" class="form-control" id="title" placeholder="标题" style="height: 34px" />
  	</div>
      <hr>
      <div class="btn-toolbar" data-role="editor-toolbar" data-target="#editor">
        <div class="btn-group">
          <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Font"><i class="icon-font"></i><b class="caret"></b></a>
            <ul class="dropdown-menu">
            <li><a data-edit="fontName Serif" style="font-family:'Serif'">Serif</a></li><li><a data-edit="fontName Sans" style="font-family:'Sans'">Sans</a></li><li><a data-edit="fontName Arial" style="font-family:'Arial'">Arial</a></li><li><a data-edit="fontName Arial Black" style="font-family:'Arial Black'">Arial Black</a></li><li><a data-edit="fontName Courier" style="font-family:'Courier'">Courier</a></li><li><a data-edit="fontName Courier New" style="font-family:'Courier New'">Courier New</a></li><li><a data-edit="fontName Comic Sans MS" style="font-family:'Comic Sans MS'">Comic Sans MS</a></li><li><a data-edit="fontName Helvetica" style="font-family:'Helvetica'">Helvetica</a></li><li><a data-edit="fontName Impact" style="font-family:'Impact'">Impact</a></li><li><a data-edit="fontName Lucida Grande" style="font-family:'Lucida Grande'">Lucida Grande</a></li><li><a data-edit="fontName Lucida Sans" style="font-family:'Lucida Sans'">Lucida Sans</a></li><li><a data-edit="fontName Tahoma" style="font-family:'Tahoma'">Tahoma</a></li><li><a data-edit="fontName Times" style="font-family:'Times'">Times</a></li><li><a data-edit="fontName Times New Roman" style="font-family:'Times New Roman'">Times New Roman</a></li><li><a data-edit="fontName Verdana" style="font-family:'Verdana'">Verdana</a></li></ul>
          </div>
        <div class="btn-group">
          <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Font Size"><i class="icon-text-height"></i>&nbsp;<b class="caret"></b></a>
            <ul class="dropdown-menu">
            <li><a data-edit="fontSize 5"><font size="5">Huge</font></a></li>
            <li><a data-edit="fontSize 3"><font size="3">Normal</font></a></li>
            <li><a data-edit="fontSize 1"><font size="1">Small</font></a></li>
            </ul>
        </div>
        <div class="btn-group">
          <a class="btn" data-edit="bold" title="" data-original-title="Bold (Ctrl/Cmd+B)"><i class="icon-bold"></i></a>
          <a class="btn" data-edit="italic" title="" data-original-title="Italic (Ctrl/Cmd+I)"><i class="icon-italic"></i></a>
          <a class="btn" data-edit="strikethrough" title="" data-original-title="Strikethrough"><i class="icon-strikethrough"></i></a>
          <a class="btn" data-edit="underline" title="" data-original-title="Underline (Ctrl/Cmd+U)"><i class="icon-underline"></i></a>
        </div>
        <div class="btn-group">
          <a class="btn" data-edit="insertunorderedlist" title="" data-original-title="Bullet list"><i class="icon-list-ul"></i></a>
          <a class="btn" data-edit="insertorderedlist" title="" data-original-title="Number list"><i class="icon-list-ol"></i></a>
          <a class="btn" data-edit="outdent" title="" data-original-title="Reduce indent (Shift+Tab)"><i class="icon-indent-left"></i></a>
          <a class="btn" data-edit="indent" title="" data-original-title="Indent (Tab)"><i class="icon-indent-right"></i></a>
        </div>
        <div class="btn-group">
          <a class="btn btn-info" data-edit="justifyleft" title="" data-original-title="Align Left (Ctrl/Cmd+L)"><i class="icon-align-left"></i></a>
          <a class="btn" data-edit="justifycenter" title="" data-original-title="Center (Ctrl/Cmd+E)"><i class="icon-align-center"></i></a>
          <a class="btn" data-edit="justifyright" title="" data-original-title="Align Right (Ctrl/Cmd+R)"><i class="icon-align-right"></i></a>
          <a class="btn" data-edit="justifyfull" title="" data-original-title="Justify (Ctrl/Cmd+J)"><i class="icon-align-justify"></i></a>
        </div>
        <div class="btn-group">
  		  <a class="btn dropdown-toggle" data-toggle="dropdown" title="" data-original-title="Hyperlink"><i class="icon-link"></i></a>
  		    <div class="dropdown-menu input-append">
  			    <input class="span2" placeholder="URL" type="text" data-edit="createLink">
  			    <button class="btn" type="button">Add</button>
          </div>
          <a class="btn" data-edit="unlink" title="" data-original-title="Remove Hyperlink"><i class="icon-cut"></i></a>

        </div>
        
        <div class="btn-group">
          <a class="btn" title="" id="pictureBtn" data-original-title="Insert picture (or just drag &amp; drop)"><i class="icon-picture"></i></a>
          <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" style="opacity: 0; position: absolute; top: 0px; left: 0px; width: 41px; height: 30px;">
        </div>
        <div class="btn-group">
          <a class="btn" data-edit="undo" title="" data-original-title="Undo (Ctrl/Cmd+Z)"><i class="icon-undo"></i></a>
          <a class="btn" data-edit="redo" title="" data-original-title="Redo (Ctrl/Cmd+Y)"><i class="icon-repeat"></i></a>
        </div>
        <input type="text" data-edit="inserttext" id="voiceBtn" x-webkit-speech="" style="display: none;">
      </div>

      <div id="editor" contenteditable="true">
        	请输入内容
      </div>
       <button class="btn btn-danger" style="margin-top:25px" id="clearBtn">清空</button>
       <button class="btn pull-right btn-success" style="margin-top:25px" id="pushBtn">发表</button>
       <button class="btn pull-right btn-primary" style="margin-top:25px;margin-right:25px" id="saveBtn">保存</button>
    </div>
  </div>
  
</body>
</html>