new Vue({
        el:"#main",
        data:{
            city:false,
            kword:"",
            islogin:false,
            uname:"",
            res:[],
            res2:[],
            res3:[],
            num:{num1:false,num2:false,num3:false,num4:false,num5:false,num6:false,num7:false},
            display:{display1:false,display2:false,display3:false},
            scroll:"",
            fixInput:false,
            },
        mounted(){
            if(location.search.indexOf("kwords")!=-1){
            this.kword=decodeURI(location.search.split("=")[1])
            }
            axios.get("http://localhost:3000/users/islogin").then(res=>{
                console.log(res)
                if(res.data.ok==0){
                    this.islogin=false;
               }else{
                   this.islogin=true;
                   var name=res.data.uname
                   this.uname=name;
                  }
            })
            axios.get("http://localhost:3000/index/IndexProductsOne").then(res=>{this.res=res.data})
            axios.get("http://localhost:3000/index/IndexProductsTwo").then(res=>{this.res2=res.data})
            axios.get("http://localhost:3000/index/IndexProductsThree").then(res=>{this.res3=res.data})
            window.addEventListener('scroll', this.menu)
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
                axios.get("http://localhost:3000/users/signout").then(res=>{
                    this.islogin=false  
                })
            },
                    //左侧折叠栏显示隐藏
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
                }},
            hide(i){
                if(i==1){
                    this.display.display1=false;
                }else if(i==2){
                    this.display.display2=false
                }else if(i==3){
                    this.display.display3=false
                }
            
            
            
            
            
            },
            // 页面滚动事件
            menu(){
                this.scroll=document.documentElement.scrollTop
                if(this.scroll>600){
                    this.fixInput=true;
                }else{
                    this.fixInput=false;
                }
                console.log(this.scroll)
            }

        }
    })

            //2.绑定事件
            //  3.查找要修改的元素
            //  4.修改元素 
