jQuery(function($){

var $xuan = $(".xuan");
var xuan = document.querySelector(".xuan");
var $ran = $(".ran");
var ran = document.querySelector(".ran");
// 轮播图
$('.carousel').carousel({
  interval: 2000
})
// 返回顶部
 $(window).scroll(function() {       

        if($(window).scrollTop() >= 100){

            $('.actGotop').fadeIn(300); 

        }else{    

            $('.actGotop').fadeOut(300);    

        }  

    });

    $('.actGotop').click(function(){

    $('html,body').animate({scrollTop: '0px'}, 800);}); 
// ajax
 // var currentId = e.target.parentElement.dataset.id;
 
$.ajax({
               url:"api/xuancar.php",
               type : "GET",
               dataType:'json',
               success : function(data){
                  // console.log(data);
                topxuan(data);
                // biaoge(data);
                // 头部删
               $(".ul3").on("click","#del3",function(){
    var currentGuid = $(this).closest(".goodit").attr("data-guid");
    $.ajax({
              url: 'api/topcar.php',
              type: 'get',
              dataType: 'json',
              data: {id:currentGuid},
               success: function(data){
                // topxuan(data);
                   
                }
          });

    chongxuan(data);
 })
                  }

               });
function chongxuan(data){
        $.ajax({
               url:"api/xuancar.php",
               type : "GET",
               dataType:'json',
               success : function(data){
                  console.log(data);
                topxuan(data);
                  // biaoge(data);
                  }

               });
    }
        
        var ul3 = document.querySelector(".ul3");
function topxuan(data){
    ul3.innerHTML=data.map(function(item){
     var {id,Sname,curprice,imgsrc,jianshu,qty,miaoshu,oldprice,zheshu}=item;

            let images=[];
            let str ="";
            str=item.imgsrc.split("&");
            // console.log(str);
            $.each(str,function(idx,item){
                images.push(item.substr(3));
                // console.log(images);
            });
            return  ` <li class="goodit" data-guid=${id}>
                                    <div class="pix"><img src=${images[2]} alt="" /></div>
                                    <div class="ziliao">
                                    <h3 class="mang"><a href="#"><span>香港特快直送 零扣关</span>${Sname}</a></h3>
                                    <p><span class="zhu">￥${curprice}</span><span class="ni">×${qty}</span> <a id="del3" class="glyphicon glyphicon-trash" href="javascript:void(0);"></a></p>
                                    </div>
                                </li>`
                    }).join("");
            }




 function xuanran(){
    $.ajax({
               url:"api/index.php",
               type : "GET",
               dataType:'json',
               success : function(data){
                  // console.log(data);
                  render(data);
                    pao(data);
                    // location.href="html/minganci.html?" +currentId
                  }

               });
 }
xuanran();

xuan.onclick = function(e){
            
            if(e.target.tagName.toLowerCase() == "a"){
                var currentId = e.target.parentElement.dataset.id;
                var xhr = new XMLHttpRequest();
               xhr.onreadystatechange = function(){
            if(xhr.readyState == 4 && (xhr.status ==200 || xhr.status == 304)){
                       location.href="html/goods.html?" +currentId;
                       // console.log(currentId);
                       // console.log(xhr.responseText);
                      
                    }
                }
            }
                 xhr.open("get","api/123.php?currentId="+currentId,true);
                    xhr.send(null);
            }

ran.onclick = function(e){
            
            if(e.target.className == "like"){
                var currentId = e.target.parentElement.dataset.id;
                var xhr = new XMLHttpRequest();
               xhr.onreadystatechange = function(){
            if(xhr.readyState == 4 && (xhr.status ==200 || xhr.status == 304)){
                       location.href="html/goods.html?" +currentId;
                       // console.log(currentId);
                       // console.log(xhr.responseText);
                      
                    }
                }
            }
                 xhr.open("get","api/123.php?currentId="+currentId,true);
                    xhr.send(null);
            }


function render(data){
    xuan.innerHTML=data.map(function(item){
     var {id,Sname,curprice,imgsrc,jianshu,timer,miaoshu,oldprice,zheshu}=item;

            let images=[];
            let str ="";
            str=item.imgsrc.split("&");
            // console.log(str);
            $.each(str,function(idx,item){
                images.push(item.substr(3));
                // console.log(images);
            });
            return  `<li class="xuan1"  data-id=${id} >
                     <a  href="javascript:;"  ><img src=${images[0]} alt="" class="like"/></a>
                <div data-id=${id}>
                    <p class="p1">${Sname}</p>
                    <p class="p2">${jianshu}</p>
                    <p class="p3">疯抢价￥${curprice}</p>
                    <a class="acar" href="javascript:;" >立刻疯抢</a>
                </div>
            </li>`
                }).join("");
            } 


function pao(data){
    ran.innerHTML=data.map(function(item){
     var {id,Sname,curprice,imgsrc,jianshu,timer,miaoshu,oldprice,zheshu}=item;

            let images=[];
            let str ="";
            str=item.imgsrc.split("&");
            // console.log(str);
            $.each(str,function(idx,item){
                images.push(item.substr(3));
                // console.log(images);
            });
            return  ` <li class="ran1" >
                    
                    <a href="javascript:;" data-id=${id} ><img src=${images[2]} height="271" width="271" alt=""  class="like"/>
                    <div><a href="javascript:;"><span><b>香港直送</b></span>${miaoshu}</a></div>
                    <span class="sp1">￥${curprice}</span><span class="sp2">￥${oldprice}</span></a>
            </li>`
                }).join("");
            } 

           
})

                    // `<li data-id="${id}">
                    //    <a>
                    //     <img src="${imgurl}" class="btn"/><br>
                    //     <b>${uname}</b>
                    //     <p>${price}</p>
                    //     <h4>${xl}</h4>
                    //     </a>
                    // </li>`