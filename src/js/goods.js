jQuery(function($){
 
//       拿到数据对象
        var exzoom_ul = document.querySelector(".exzoom_img_ul");
        var goods =   document.querySelector(".goods");
        var currentId = decodeURI(location.search).slice(1);
        // console.log(currentId);
         var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
            if(xhr.readyState == 4 && (xhr.status ==200 || xhr.status == 304)){
                var data = JSON.parse(xhr.responseText);
                // console.log(data);
            let images=[];
            let str ="";
            str=data.imgsrc.split("&");
            // console.log(str);
            $.each(str,function(idx,item){
                images.push(item.substr(0));
                // console.log(images);
            });
               var res =`<li class="g1"><p>${data.miaoshu}</p></li>
                <li class="g2"><img src="../images/g8.png" alt="" /></li>
                <li class="g3"> <span>数量：</span><a class="btn_d" href="javascript:void(0);" >-</a><input type="text" class="sla" value="1"/>
                    <a  class="btn_a"href="javascript:void(0);">+</a></li>
            <li class="g4"><span>特卖价</span><i>￥${data.curprice}</i><span class="del">市场价</span><span class="del">${data.oldprice}</span>
            </li>
            <li class="g5"  data-id=${data.id}><a href="javascript:void(0);" class="btn_car">立即抢购</a> <a href="javascript:void(0);" class="btnin">加入购物车</a></li>`;
                  goods.innerHTML = res;

                  var re = `<li><img src=${images[2]}></li>
                            <li><img src=${images[0]}></li>
                            <li><img src=${images[1]}></li>`;
                    exzoom_ul.innerHTML = re;    

                            chongxuan(data); 
                    var t = $(".sla");
                    //初始化数量为1,并失效减
                    $('.btn_d').attr('disabled',true);
                     //数量增加操作
                     $(".btn_a").click(function(){ 
                      // 给获取的val加上绝对值，避免出现负数
                      t.val(Math.abs(parseInt(t.val()))+1);
                      if (parseInt(t.val())!==1){
                      $('.btn_d').attr('disabled',false);
                      };
                     }) 
                     //数量减少操作
                     $(".btn_d").click(function(){
                     t.val(Math.abs(parseInt(t.val()))-1);

                     if (parseInt(t.val())<1){
                        t.val(1);
                     $('.btn_d').attr('disabled',true);
                     };
                    });
  

                     var btnin = document.querySelector(".btnin")
btnin.onclick = function(){     
                           
                var id = btnin.parentElement.dataset.id;
                var sla = document.querySelector(".sla")
                var qty = sla.value;
                var xhr = new XMLHttpRequest();
                   $.ajax({
                       url:"../api/car.php",
                       type : "GET",
                       dataType:'json',
                        data : {
                        id : id,
                        qty : qty,
                        Sname : data.Sname,
                        curprice: data.curprice,
                        imgsrc: data.imgsrc,
                        jianshu: data.jianshu,
                        miaoshu: data.miaoshu,
                        oldprice: data.oldprice,
                        zheshu: data.zheshu
                        },
                       success : function(data){
                            console.log(666);
                              
                       }
                    })
                        chongxuan(data); 
                }

                var btn_car = document.querySelector(".btn_car")
btn_car.onclick = function(){     
                           
                var id = btnin.parentElement.dataset.id;
                var sla = document.querySelector(".sla")
                var qty = sla.value;
                var xhr = new XMLHttpRequest();
                   $.ajax({
                       url:"../api/car.php",
                       type : "GET",
                       dataType:'json',
                        data : {
                        id : id,
                        qty : qty,
                        Sname : data.Sname,
                        curprice: data.curprice,
                        imgsrc: data.imgsrc,
                        jianshu: data.jianshu,
                        miaoshu: data.miaoshu,
                        oldprice: data.oldprice,
                        zheshu: data.zheshu
                        },
                       success : function(data){
                            console.log(777);
                            location.href="car.html"
                       }
                    })
                   chongxuan(data); 
                }
        $(".ul3").on("click","#del3",function(){
    var currentGuid = $(this).closest(".goodit").attr("data-guid");
    $.ajax({
              url: '../api/topcar.php',
              type: 'get',
              dataType: 'json',
              data: {id:currentGuid},
               success: function(data){
                 topxuan(data);
                   
                }
          });
    chongxuan(data);
 })
           } 
       }
        xhr.open("get","../api/123.php?currentId="+currentId,true);
        xhr.send(null);      


        // 顶部购物车渲染
    function chongxuan(data){
        $.ajax({
               url:"../api/xuancar.php",
               type : "GET",
               dataType:'json',
               success : function(data){
                  console.log(data);
                topxuan(data);

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
                            <p><span class="zhu">￥${curprice}</span><span class="ni">×${qty}</span> <a href="javascript:void(0);" id="del3" class="glyphicon glyphicon-trash"></a></p>
                        </div>
                    </li>`
                    }).join("");
            } 




        // 轮播插件
$("#exzoom").exzoom({
            autoPlay: true,
        });

            
})