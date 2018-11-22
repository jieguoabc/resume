$(window).load(function(){
            var $mImg=$("#preView>div>div>img"),$lgDiv=$("#div-lg");
            var $mask=$("#mask");
            var $smask=$("#super-mask");
            var XMSIZE=235, 
                XMAX=470-XMSIZE,
                YMSIZE=142.5,
                YMAX=285-YMSIZE
                
            $smask.hover(
                function(){
                    $mask.removeClass("d-none");
                    $lgDiv.removeClass("d-none")
                }, 
                function(){
                    $mask.addClass("d-none");
                    $lgDiv.addClass("d-none")
                })
                .mousemove(function(e){
                    var left=e.offsetX-XMSIZE/2;
                    var top=e.offsetY-YMSIZE/2;
                    if(left<0) left=0;
                    else if(left>XMAX)
                        left=XMAX;
                    if(top<0) top=0;
                    else if(top>YMAX)
                        top=YMAX;
                    $mask.css({left,top});
                    $lgDiv.css("background-position",`-${2*left}px -${2*top}px`)
                });



            })
