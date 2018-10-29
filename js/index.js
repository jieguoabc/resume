new Vue({
        el:"#main",
        data:{
            kword:"",
            islogin:false,
            uname:"",
            res:[],
            res2:[]
            },
        mounted(){
            if(location.search.indexOf("kwords")!=-1){
            this.kword=decodeURI(location.search.split("=")[1])
            }
            axios({
                url:"http://localhost:3000/users/islogin" ,
                type:"get",
                dataType:"json",
                success:res=>{
                    if(res.ok==0){
                         this.islogin=false;
                    }else{
                        this.islogin=true;
                        var name=res.uname
                        this.uname=name;
                       }
                       }
                    })
            axios.get("http://localhost:3000/index/IndexProductsOne").then(res=>this.res=res.data)
            axios.get("http://localhost:3000/index/IndexProductsTwo").then(res=>this.res2=res.data)
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
