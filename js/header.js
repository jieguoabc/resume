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
                    kword:"",
                    islogin:false,
                    uname:""
                },
                mounted(){
                    if(location.search.indexOf("kwords")!=-1){
                    this.kword=decodeURI(location.search.split("=")[1])
                    console.log(this.kword)
                    }
                    $.ajax({
                       url:"http://localhost:3000/users/islogin" ,
                       type:"get",
                       dataType:"json",
                       success:res=>{
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
                    }
                }
            }) 
            //2.绑定事件
            //  3.查找要修改的元素
            //  4.修改元素
        }
    })
})