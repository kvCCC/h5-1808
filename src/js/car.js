jQuery(function($){
        $.ajax({
               url:"../api/xuancar.php",
               type : "GET",
               dataType:'json',
               success : function(data){
                  // console.log(data);
                topxuan(data);
                biaoge(data);
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
                  // console.log(data);
                  topxuan(data);
                  biaoge(data);
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

// 购物车渲染

var byxuan = document.querySelector(".byxuan")
function biaoge(data){
  // console.log(data);
    byxuan.innerHTML=data.map(function(item,index){
     var {id,Sname,curprice,imgsrc,jianshu,qty,miaoshu,oldprice,zheshu}=item;
            let images=[];
            let str ="";
            str=item.imgsrc.split("&");
            $.each(str,function(idx,item){
                images.push(item.substr(0));
                // console.log(images);
            });
            return  ` <tr class="tr1" data-guid=${id}>
                <td class="cjw">
                <div class="chk">
                    <input type="checkbox" class="gouxuan2" />
                </div>
                <div class="tu">
                    <a href="#"><img src=${images[2]} height="57" width="100" alt="" /></a>
                </div>
            </td>
            <td class="cjw2">
                <div>
                    <a href="#">${Sname}</a>
                </div>
            </td>
            <td class="cjw3">￥${curprice}</td>
            <td class="cjw4">
                <div class="jiajian">
                    <a  href="javascript:void(0);" class="btn_d">-</a>
                    <input type="text" class="sla" value=${qty}>
                    <a href="javascript:void(0);" class="btn_a">+</a>
                </div>
            </td>
            <td class="cjw5">￥<span class="danjia">${qty*curprice}</span></td>
            <td class="cjw6">
            <a href="javascript:void(0);" class="shanchu">删除</a>
            </td></tr>`


                    }).join("");
// 删除
 $(".byxuan").on("click",".shanchu",function(){
            var currentGuid = $(this).closest(".tr1").attr("data-guid");
               $.ajax({
                  url: '../api/topcar.php',
                  type: 'get',
                  dataType: 'json',
                  data: {id:currentGuid},
                  success: function(data){
                        chongxuan(data);
                          // biaoge(data); 
                            yunsuan();
                                  }
                  });
                chongxuan(data);
        });

                        // 勾选
                                  (function(){
                                        let quanxuan = $("#gouxuan");
                                        let danxuan = $("*.gouxuan2");
                                        quanxuan.on("click",function(){
                                            let zhuangtai = $(this).prop("checked");
                                            $.each(danxuan,function(idx,item){
                                                danxuan.prop("checked",zhuangtai);
                                                yunsuan();
                                            })
                                        });
                                        danxuan.on("click",function(){
                                            for(var i=0;i<danxuan.length;i++){
                                                if(!danxuan[i].checked){
                                                  break;
                                                }
                                            }
                                            if(i===danxuan.length){
                                                quanxuan.prop("checked",true);
                                            }else{
                                                quanxuan.prop("checked",false);
                                            }
                                            yunsuan();
                                        });
                                  })();    
                                  yunsuan();
                                  // 计算
                                  function yunsuan(){
                                      let input = $(".tr1 input:checked");//获取复选框选中的元素
                                      let zongjia=0;
                                        let zongshu=0;
                                      $.each(input,function(idx,item){
                                        // console.log($(this).closest(".tr1").children().children(".danjia").text());
                                        zongjia += parseInt($(this).closest(".tr1").children().children(".danjia").text().replace(/\D+/g,""));
                                        // console.log(zongjia);
                                        zongshu+=parseInt($(this).closest(".tr1").find("input[ type='text' ]").val());
                                      })
                                       $(".choub").text(zongshu);
                                       $(".nimab").text(`￥${zongjia}`);
                                  };
     // 清空
    $(".clearall").on("click",function(){
          $.ajax({
                url: '../api/removercar.php',
                type: 'get',
                dataType: 'json',
                data: {removecar:"yes"},
                 success: function(data){
                                if(data){
                                    chongxuan(data);
                                // console.log(666);
                                }
                          }
              });
          chongxuan(data);
    });         

                                        
//获得文本框对象
                  $(".byxuan").on("click",".btn_a",function(){
                    $(this).prev().val(Math.abs(parseInt($(this).prev().val()))+1);
                    if (parseInt($(this).prev().val())!==1){
                    $('.btn_d').attr('disabled',false);
                    };
                    // console.log($(this).parent().parent().prev().html().replace(/\D+/g,""))
                    $(this).parent().parent().next().children().text($(this).prev().val()*$(this).parent().parent().prev().html().replace(/\D+/g,""));
                    // console.log($(this).parent().parent().next().children())
                      yunsuan();
                  })
                  $(".byxuan").on("click",".btn_d",function(){
                   $(this).next().val(Math.abs(parseInt($(this).next().val()))-1);
                   if (parseInt($(this).next().val())<1){
                      $(this).next().val(1);
                   $('.btn_d').attr('disabled',true);
                    }
                    $(this).parent().parent().next().children().text($(this).next().val()*$(this).parent().parent().prev().html().replace(/\D+/g,""));
                      yunsuan();
                  })
        
    }
  
  
})