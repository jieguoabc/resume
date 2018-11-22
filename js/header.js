$(function(){
    //1.动态创建link引用header.css
    $("<link rel='stylesheet' href='css/header.css'>").appendTo("head")
    //2.ajax请求header.html片段
    var vm
    $.ajax({
        url:"http://localhost:3000/header.html",
        type:"get",
        success:function(res){
            $("#header").replaceWith(res)
            vm=new Vue({
                el:"#header",
                data:{
                    city:false,
                    kword:"",
                    islogin:false,
                    uname:"",
                    da:false,
                    num:{num1:false,num2:false,num3:false,num4:false,num5:false,num6:false,num7:false},
                    display:{display1:false,display2:false,display3:false}
                },
                mounted(){
                    if(location.search.indexOf("kwords")!=-1){
                    this.kword=decodeURI(location.search.split("=")[1])
                    }
                    $.ajax({
                       url:"http://localhost:3000/users/islogin" ,
                       type:"get",
                       dataType:"json",
                       success:res=>{
                           console.log(res)
                           if(res.ok==0){
                           this.islogin=false;
                           }
                           else{
                               this.islogin=true;
                               var name=res.uname
                                 this.uname=name;
                           }

                       }
                    })
                },
                computed:{
                    signin(){
                        return `login.html?back=${location.href}`
                    }
                },
                methods:{
                    // 城市选择
                    morecity(){
                        this.city=true
                    },
                    lesscity(){
                        this.city=false
                    },                    
                    search(){
                        if(this.kword!=="")
                        location.href=`products.html?kwords=${this.kword}`;
                    },
                    signout(){
                        $.ajax({
                            url:"http://localhost:3000/users/signout",
                            type:"get",
                            success:()=>{
                                this.islogin=false
                            }
                        })
                    },
                    //折叠导航显示隐藏
                    show1(){
                   this.da=true            
                    },
                    hide1(){
                        this.da=false
                    },
                    //左侧折叠选项显示隐藏
                    more(i){
                        if(i==1){
                            this.num.num1=true
                        }else if(i==2){
                            this.num.num2=true
                        }else if(i==3){
                            this.num.num3=true
                        }
                        else if(i==4){
                            this.num.num4=true
                        }else if(i==5){
                            this.num.num5=true
                        }
                        else if(i==6){
                            this.num.num6=true
                        }
                        else if(i==7){
                            this.num.num7=true
                        }

                    },
                    less(i){
                        if(i==1){
                            this.num.num1=false
                        }else if(i==2){
                            this.num.num2=false
                        }else if(i==3){
                            this.num.num3=false
                        }else if(i==4){
                            this.num.num4=false
                        }else if(i==5){
                            this.num.num5=false
                        }else if(i==6){
                            this.num.num6=false
                        }else if(i==7){
                            this.num.num7=false
                        }  
                    },
                    //顶部下拉菜单显示隐藏
                    show(i){
                        if(i==1){
                            this.display.display1=true;
                        }else if(i==2){
                            this.display.display2=true
                        }else if(i==3){
                            this.display.display3=true;
                        }
                    },
                    hide(i){
                        if(i==1){
                            this.display.display1=false;
                        }else if(i==2){
                            this.display.display2=false
                        }else if(i==3){
                            this.display.display3=false
                        }
                    },                                        
                }
            }) 
            //2.绑定事件
            //  3.查找要修改的元素
            //  4.修改元素
        }
    })
})