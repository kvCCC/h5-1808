jQuery(function($){

    var ysl = document.querySelector(".ysl");
    var shijian = document.querySelector(".shijian");
    var jiage = document.querySelector(".jiage");

$(window).scroll(function() {       

        if($(window).scrollTop() >= 100){

            $('.actGotop').fadeIn(300); 

        }else{    

            $('.actGotop').fadeOut(300);    

        }  

    });

    $('.actGotop').click(function(){

    $('html,body').animate({scrollTop: '0px'}, 800);}); 

$.ajax({
               url:"../api/xuancar.php",
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
              url: '../api/topcar.php',
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
               url:"../api/xuancar.php",
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
                images.push(item.substr(0));
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





// 请求渲染
$.ajax({
               url:"../api/index.php",
               type : "GET",
               dataType:'json',
               success : function(data){
                  console.log(data);
                 
                ysl.innerHTML=data.map(function(item){
                var {id,Sname,curprice,imgsrc,jianshu,timer,miaoshu,oldprice,zheshu}=item;
                let images=[];
                let str ="";
                str=item.imgsrc.split("&");
                // console.log(str);
                $.each(str,function(idx,item){
                images.push(item.substr(0));
                // console.log(images);
                });
            return  `<li data-id=${id}>
                        <img src=${images[2]} height="253" width="249" alt="" />
                        <div class="naps">
                        <span class="sb">￥${curprice}</span>
                            <span class="sb1">￥${oldprice}</span>
                            <span class="sb2">${zheshu}折</span>
                        </div>
                        <div class="shuai">
                            <span><b>香港特快直送 零扣关</b></span>
                            <a href="#"><b>${jianshu}</b> ${Sname}</a>
                            <p class="abc"></p>
                            <p class="pp1">已售200件</p>
                        </div>
                        <div class="gou">
                                <a class="buycar" href="#" >立刻购买</a>
                        </div>
                     </li>`
                }).join("");
            }

    });

    // 点击传送

    ysl.onclick = function(e){
            // console.log(666);
            if(e.target.tagName.toLowerCase() == "a"){
                var currentId = e.target.parentElement.parentElement.dataset.id;
                // console.log(currentId);
                var xhr = new XMLHttpRequest();
               xhr.onreadystatechange = function(){
            if(xhr.readyState == 4 && (xhr.status ==200 || xhr.status == 304)){
                       location.href="goods.html?" +currentId;
                       console.log(currentId);
                       // console.log(xhr.responseText);
                      
                    }
                }
            }
                 xhr.open("get","../api/123.php?currentId="+currentId,true);
                    xhr.send(null);
            }

// 时间排序

 var show = true;   
        shijian.onclick = function(){
            ysl.innerHTML = "";
            shijian.classList.add("fense");
                if(show){      
                 var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if(xhr.readyState == 4 && (xhr.status ==200 || xhr.status == 304)){
                var data = JSON.parse(xhr.responseText);
                ysl.innerHTML=data.map(function(item){
                var {id,Sname,curprice,imgsrc,jianshu,timer,miaoshu,oldprice,zheshu}=item;
                let images=[];
                let str ="";
                str=item.imgsrc.split("&");
                // console.log(str);
                $.each(str,function(idx,item){
                images.push(item.substr(0));
                // console.log(images);
                });
            return  `<li data-id=${id}>
                        <img src=${images[2]} height="253" width="249" alt="" />
                        <div class="naps">
                        <span class="sb">￥${curprice}</span>
                            <span class="sb1">￥${oldprice}</span>
                            <span class="sb2">${zheshu}折</span>
                        </div>
                        <div class="shuai">
                            <span><b>香港特快直送 零扣关</b></span>
                            <a href="#"><b>${jianshu}</b> ${Sname}</a>
                            <p class="abc"></p>
                            <p class="pp1">已售200件</p>
                        </div>
                        <div class="gou">
                                <a class="buycar" href="#" >立刻购买</a>
                        </div>
                     </li>`
                }).join("");

                }
            }
            
                    xhr.open("get","../api/paixu.php?show="+true,true);
                    xhr.send(null);
        }
            if(!show){
                shijian.classList.remove("fense");
                var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if(xhr.readyState == 4 && (xhr.status ==200 || xhr.status == 304)){
                    var data = JSON.parse(xhr.responseText);
                ysl.innerHTML=data.map(function(item){
                var {id,Sname,curprice,imgsrc,jianshu,timer,miaoshu,oldprice,zheshu}=item;
                let images=[];
                let str ="";
                str=item.imgsrc.split("&");
                // console.log(str);
                $.each(str,function(idx,item){
                images.push(item.substr(0));
                // console.log(images);
                });
            return  `<li data-id=${id}>
                        <img src=${images[2]} height="253" width="249" alt="" />
                        <div class="naps">
                        <span class="sb">￥${curprice}</span>
                            <span class="sb1">￥${oldprice}</span>
                            <span class="sb2">${zheshu}折</span>
                        </div>
                        <div class="shuai">
                            <span><b>香港特快直送 零扣关</b></span>
                            <a href="#"><b>${jianshu}</b> ${Sname}</a>
                            <p class="abc"></p>
                            <p class="pp1">已售200件</p>
                        </div>
                        <div class="gou">
                                <a class="buycar" href="#" >立刻购买</a>
                        </div>
                     </li>`
                    }).join("");  
                }
            }
                    xhr.open("get","../api/paixu.php?show="+false,true);
                    xhr.send(null);
            }
            show = !show;
    }

// 价格排序


jiage.onclick = function(){
            ysl.innerHTML = "";
                if(show){
              jiage.classList.add("fense");
                 var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if(xhr.readyState == 4 && (xhr.status ==200 || xhr.status == 304)){
                var data = JSON.parse(xhr.responseText);
                ysl.innerHTML=data.map(function(item){
                var {id,Sname,curprice,imgsrc,jianshu,timer,miaoshu,oldprice,zheshu}=item;
                let images=[];
                let str ="";
                str=item.imgsrc.split("&");
                // console.log(str);
                $.each(str,function(idx,item){
                images.push(item.substr(0));
                // console.log(images);
                });
            return  `<li data-id=${id}>
                        <img src=${images[2]} height="253" width="249" alt="" />
                        <div class="naps">
                        <span class="sb">￥${curprice}</span>
                            <span class="sb1">￥${oldprice}</span>
                            <span class="sb2">${zheshu}折</span>
                        </div>
                        <div class="shuai">
                            <span><b>香港特快直送 零扣关</b></span>
                            <a href="#"><b>${jianshu}</b> ${Sname}</a>
                            <p class="abc"></p>
                            <p class="pp1">已售200件</p>
                        </div>
                        <div class="gou">
                                <a class="buycar" href="#" >立刻购买</a>
                        </div>
                     </li>`
                }).join("");

                }
            }
            
                    xhr.open("get","../api/price.php?show="+true,true);
                    xhr.send(null);
        }
            if(!show){
                jiage.classList.remove('fense');
                var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if(xhr.readyState == 4 && (xhr.status ==200 || xhr.status == 304)){
                    var data = JSON.parse(xhr.responseText);

                ysl.innerHTML=data.map(function(item){
                var {id,Sname,curprice,imgsrc,jianshu,timer,miaoshu,oldprice,zheshu}=item;
                let images=[];
                let str ="";
                str=item.imgsrc.split("&");
                // console.log(str);
                $.each(str,function(idx,item){
                images.push(item.substr(0));
                // console.log(images);
                });
            return  `<li data-id=${id}>
                        <img src=${images[2]} height="253" width="249" alt="" />
                        <div class="naps">
                        <span class="sb">￥${curprice}</span>
                            <span class="sb1">￥${oldprice}</span>
                            <span class="sb2">${zheshu}折</span>
                        </div>
                        <div class="shuai">
                            <span><b>香港特快直送 零扣关</b></span>
                            <a href="#"><b>${jianshu}</b> ${Sname}</a>
                            <p class="abc"></p>
                            <p class="pp1">已售200件</p>
                        </div>
                        <div class="gou">
                                <a class="buycar" href="#" >立刻购买</a>
                        </div>
                     </li>`
                    }).join("");  
                }
            }
                    xhr.open("get","../api/price.php?show="+false,true);
                    xhr.send(null);
            }
            show = !show;
    }


// 分页

    // var datalist = document.querySelector(".datalist");
            var pager = document.querySelector(".pager");
            var currentPage = 1;
            var qty = 24;
            var status = [200,304];

            //1.将当前页及每页应该显示的数量，通过ajax传送给后端
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function(){
                if(xhr.readyState ==4 && status.indexOf(xhr.status) != -1){
                    var res = JSON.parse(xhr.responseText);
                    ysl.innerHTML= res.data.map(function(item){
                        var {id,Sname,curprice,imgsrc,jianshu,timer,miaoshu,oldprice,zheshu}=item;
                let images=[];
                let str ="";
                str=item.imgsrc.split("&");
                // console.log(str);
                $.each(str,function(idx,item){
                images.push(item.substr(0));
                // console.log(images);
                });
            return  `<li data-id=${id}>
                        <img src=${images[2]} height="253" width="249" alt="" />
                        <div class="naps">
                        <span class="sb">￥${curprice}</span>
                            <span class="sb1">￥${oldprice}</span>
                            <span class="sb2">${zheshu}折</span>
                        </div>
                        <div class="shuai">
                            <span><b>香港特快直送 零扣关</b></span>
                            <a href="#"><b>${jianshu}</b> ${Sname}</a>
                            <p class="abc"></p>
                            <p class="pp1">已售200件</p>
                        </div>
                        <div class="gou">
                                <a class="buycar" href="#" >立刻购买</a>
                        </div>
                     </li>`
                    }).join("");
                    var total = Math.ceil(res.len/res.qty);//29/5=6
                    pager.innerHTML = "";
                    for(var i=1;i<=total;i++){
                        var span = document.createElement("span");
                        span.innerHTML = i;
                        if(i == res.currentPage){
                            span.classList.add("active");
                        }
                        pager.appendChild(span);
                    }
                }
            }
            xhr.open("get","../api/test06_football.php?currentPage="+currentPage+"&qty="+qty,true);
            xhr.send(null);
            //3.点击事件委托给page
            pager.onclick = function(e){
                if(e.target.tagName.toLowerCase() == "span"){
                    currentPage = e.target.innerHTML;
                    xhr.open("get","../api/test06_football.php?currentPage="+currentPage+"&qty="+qty,true);
                    xhr.send(null);
                    $('html,body').animate({scrollTop: '0px'}, 800);

                }

            }
})