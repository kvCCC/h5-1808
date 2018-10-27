

jQuery(function($){
    // 获取元素
    var $uname = $("#uname");
    var $upassword = $("#upassword");
     var $spassword = $("#spassword");
     var $code_input = $("#code_input");
     var $my_btn =$("#my_button");
     var $cbox = $("#cbox");
     var $tip = $(".tip");
     var $tipp = $(".tipp");
     var $tippp = $(".tippp");
      var $yan = $(".yan");
      
     // let name = document.getElementById("uname");
     // let _name = name.value;
     // let upassword = document.getElementById("upassword");
     // let _upassword = upassword.value;



      $upassword.on("blur",function(){
                               let _upassword = upassword.value;
                                if(!/^[\u4e00-\u9fa5a-zA-Z0-9]{6,}$/.test(_upassword)){
                                    $tipp.html("");
                                   $tipp.html("您的密码不符合条件");                                 
                                }else{
                                  $tipp.html("");
                                }
                           });

      $spassword.on("blur",function(){
                              let _upassword = $upassword.val();
                              let _spassword = $spassword.val();
                                if(_upassword !== _spassword){
                                  $tippp.html("");
                                  $tippp.html("密码输入不一致，请重新输入");
                                }else{
                                  $tippp.html("");
                                }
                          });


                        // 验证码
                          var verifyCode = new GVerify("v_container");
                          $code_input.on("blur",function(){
                            var res = verifyCode.validate($code_input.val());
                            console.log(res);
                            if(res){
                               $yan.html("");
                              // $yan.html("验证正确");
                            }else{
                              $yan.html("");
                              $yan.html("验证码错误");
                            }
                          })




        // 注册
    $uname.on("blur",function(){

         let _name = $uname.val();
            if(!/^[\u4e00-\u9fa5a-zA-Z0-9]{3,}$/.test(_name)){
                    $tip.html("");
                    $tip.removeClass("pasr");
                    $tip.html("您的账号不符合条件").toggleClass('pasr');                                 
                  }else{
                    $tip.html("");
                    $tip.removeClass("pasr");
                $.ajax({
                    url:"../api/sign.php",
                    type : "GET",
                    data : {
                        name : _name
                    },
                    success : function(ress){
                        console.log(666);
                      if(ress == "exist"){
                      $tip.html("");
                      $tip.removeClass("pasg");
                      $tip.html("该账号已存在").addClass('pasr');      
                      }else if(ress == "can"){
                         console.log(2233);
                          $tip.html("");
                          $tip.removeClass("pasr");
                          $tip.html("该用户名可以使用").addClass('pasg');
                  // 注册插入
                 

                            }
                      }
                });
                  }
            
                    
              });

    $my_btn.on("click",function(){
                          let _upassword = $upassword.val();
                           let _spassword = $spassword.val();
                           let _name = $uname.val();
                             
                           if(_upassword == _spassword && /^[\u4e00-\u9fa5a-zA-Z0-9]{6,}$/.test(_upassword) && /^[\u4e00-\u9fa5a-zA-Z0-9]{3,}$/.test(_name) && verifyCode.validate($code_input.val()) == true){
                             $.ajax({
                                    url:"../api/signin.php",
                                    type : "GET",
                                    data : {
                                                name : _name,
                                                mima : _upassword
                                            },
                                    success : function(res){
                                                                       
                                      if(res == "cheng"){
                                      console.log(88);
                                            alert("注册成功");
                                            location.href="login.html" ;
                                      }
                                      // else if(aa == "not"){
                                      //        alert("注册失败");
                                      // }
                                    }

                                  }); 
                           }else{
                            alert("注册失败");
                           }
                                         
                                                                  
                             })
                          
                          // $uname.on("blur",function(){
                          //      let _name = $uname.val();
                          //       if(!/^[\u4e00-\u9fa5a-zA-Z0-9]{6,}$/.test(_name)){
                          //           $tip.html("");
                          //          $tip.html("您的账号不符合条件");                                 
                          //       }else{
                          //         $tip.html("");
                          //       }
                          //  });


                          


})
