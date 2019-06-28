 
var name;
 $(document).ready(function(){
 	$('#log').click(function(){

		var uname = $("#uname").val();
          name = uname;
          //alert(name);
		var u_pwd = $("#u_pwd").val();
		var params="";
      params += '&' + 'uname' + '=' + uname;
      params += '&' + 'u_pwd' + '=' + u_pwd;
      if(uname == "" || u_pwd == "" )
      	{
      		alert('Please dont leave blank')
		}
		 $.ajax({
		     type: "POST",
		     url: "/blog/authenticatelogin",
		     // async: false,
		     data: params,
		      success: function(result){
          


              if(result.code == true)
             	{
             		window.location.href = "/blog/postpage?id="+uname;
             	}
             	else
             	{
             		window.location.href = "/blog/login";

             	}
             	return false
             }

		    });
          
	});








var getUrlParameter = function getUrlParameter(sParam) {
	
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('=');
        
        if (sURLVariables[0] == sParam) {
            return sURLVariables[1] === undefined ? true : decodeURIComponent(sURLVariables[1]);
        }
    
};
    var id = getUrlParameter('id');
   
    // var value = id;
    // '<%Session["Value"] = "' + value + '"; %>';
    
    //  var value = '<%= Session["Value"] %>';
        
     // sessionStorage.setItem("MyId", id);
     // var value = sessionStorage.getItem("MyId");

     // var value =  '<%= Session("id").ToString() %>';





	
//  <?php
// $_GET["id"];
// ?>



	$('#sign').click(function(){
		var uname = $("#uname").val();
		var u_pwd = $("#u_pwd").val();
		var params="";

      params += '&' + 'uname' + '=' + uname;
      params += '&' + 'u_pwd' + '=' + u_pwd;
        
		 $.ajax({
		     type: "POST",
		     url: "/blog/insertion",
		     // async: false,
		     data: params,

		    });
        alert('saved')  
	});

 


	$('#savepostsecond').click(function(){

		var texttitle = $("#texttitle").val();
		$("#texttitle").addClass(texttitle);
		var textInput = $("#textInput").val();
		 // var id = $("#id").val();
		 alert(name);
		var params="";
      	params += '&' + 'texttitle' + '=' + texttitle ;
      	params += '&' + 'textInput' + '=' + escape(textInput);
      	params += '&' + 'id' + '=' + id;
        
//         <?php
// echo 'Hello ' . htmlspecialchars($_GET["id"]) . '!';
// ?>

      	//alert('saved')
      	//alert(id)
      	// alert(id)
		$.ajax({
		    type: "POST",
		    url: "/blog/createpost",
		     // async: false,
		    data: params,
		    //contentType: "text/plain"
		    });
		alert("saved")
		$('#div1').hide();
          
	});




	$('#savepostfirst').click(function(){

		var texttitlefirst = $("#texttitlefirst").val();
		var textInputfirst = $("#textInputfirst").val();
		 // var id = $("#id").val();
		 alert(name);
		var params="";
      	params += '&' + 'texttitlefirst' + '=' + texttitlefirst;
      	params += '&' + 'textInputfirst' + '=' + escape(textInputfirst);
      	params += '&' + 'name' + '=' + name;
        
//         <?php
// echo 'Hello ' . htmlspecialchars($_GET["id"]) . '!';
// ?>

      	//alert('saved')
      	//alert(id)
      	// alert(id)
		$.ajax({
		    type: "POST",
		    url: "/blog/createpostofuser",
		     // async: false,
		    data: params,
		    //contentType: "text/plain"
		    });
		alert("saved")
		$('#div1').hide();
          
	});



	// $('#postview').click(function(){

 //      var uname = $('#log').parent().children("#uname").val()
	// 	// var texttitle = $("#texttitle").val();
	// 	// var textInput = $("#textInput").val();
	// 	// var id = $("#id").val();
	// 	// var params="";
 //  //     	params += '&' + 'texttitle' + '=' + texttitle ;
 //  //     	params += '&' + 'textInput' + '=' + textInput;
 //  //     	params += '&' + 'id' + '=' + id;
 //      	//alert(value)
 //      	//alert($('#log').parent().children("#uname").val());
 //      	//  alert(textInput)
	// 	$.ajax({
	// 	    type: "POST",
	// 	    url: "/blog/viewpostfunction",
	// 	     // async: false,
	// 	   // data: params,
	// 	     // }).done(function(req){
	// 	     // 	var username = req.name;
	// 	     // 	var title = req.
	// 	     success: function(result){
          


 //              if(result.code == true)
 //             	{
 //             		window.location.href = "/blog/viewotherposts";
 //             	}
 //             	else
 //             	{
 //             		window.location.href = "/blog/postpage";

 //             	}
 //             	return false
 //             }
	// 	     });
          
	// });







// $('#commentsavebutton').click(function(){


   	
   
// 		var content = $("#content").val();
// 		 // var id = $("#id").val();
// 		var params="";
   
//       	params += '&' + 'content' + '=' + escape(content);
//       	params += '&' + 'id' + '=' + id;
// 		// var content = $("#content").val();
// 		// //var textInput = $("#textInput").val();
// 		//  // var id = $("#id").val();
// 		// var params="";
//   //     	params += '&' + 'content' + '=' + content ;
//   //     	// params += '&' + 'textInput' + '=' + escape(textInput);
//   //     	params += '&' + 'id' + '=' + id;
// 		alert(content)
// 		$.ajax({
// 		    type: "POST",
// 		    url: "/blog/savecomment",
// 		     // async: false,
// 		    data: params,
// 		    //contentType: "text/plain"
// 		    });
// 		$('#div2').show();
          

//       	//alert('saved')
//       	//alert(id)
//       	//alert(value)
// 		// $.ajax({
// 		//     type: "POST",
// 		//     url: "/blog/savecomment",
// 		//      // async: false,
// 		//     data: params,
// 		//     //contentType: "text/plain"
// 		//     });
          
// 	});


$('#userprofile').click(function(){

		// var texttitle = $("#texttitle").val();
		// $("#texttitle").addClass(texttitle);
		// var textInput = $("#textInput").val();
		// var id = $("#id").val();
		 // var params="";
      	 // params += '&' + 'i' + '=' + i ;
      	// params += '&' + 'textInput' + '=' + escape(textInput);
      	// params += '&' + 'id' + '=' + id;
        
//         <?php
// echo 'Hello ' . htmlspecialchars($_GET["id"]) . '!';
// ?>

      	//alert('saved')
      	//alert(id)
      	// alert(id)
      	// alert($("#value").val());
      	// jsonobj = $("#sample").text();
      	// jsonobj = JSON.parse(jsonobj);
      	// json = eval(json);
      	 // alert(jsonobj['id']);

		$.ajax({
		    type: "GET",
		    // url: "/blog/userprofilepath",
		     // async: false,
		     // data: params,
		    //contentType: "text/plain"
		    });
		
	   
	});

 var showChar = 100;
  var ellipsestext = "...";
  var moretext = "more";
  var lesstext = "less";
  $('.more').each(function() {
  	// alert($(this).attr("id"));
  	var id = $(this).attr("id");
    var content = $("#"+id).html();
    // alert(content);

    if(content.length > showChar) {

      var c = content.substr(0, showChar);
      var h = content.substr(showChar-1, content.length - showChar);

      var html = c + '<span class="moreellipses">' + ellipsestext+ 
      			'&nbsp;</span><span class="morecontent"><span>' + 
      			h + 
      			'</span>&nbsp;&nbsp;<a href="" id =' + id + ' class="morelink">' + 
      			moretext + 
      			'</a></span>';

      $(this).html(html);
    }

  });

  $(".morelink").click(function(){

    if($(this).hasClass("less")) {
      $(this).removeClass("less");
      $(this).html(moretext);
    } else {
      $(this).addClass("less");
      $(this).html(lesstext);
    }
    $(this).parent().prev().toggle();
    $(this).prev().toggle();
    return false;
  });





});

 