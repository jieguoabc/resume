$(function(){
    if(location.search.indexOf("lid=")!=-1){
        var lid=location.search.split("=")[1];

        new Vue({
          el:"#main",
          data:{
            pics:[],
            product:{},
            value:1,
            pinkbg:{pinkbg1:"",pinkbg2:""},
            pbt:{pbt1:"",pbt2:""},
            img:"img/order/CWT`L(Z1J2PL~A3BK(VX09B.png",
            store:"收藏",
            intro:{intro1:[],intro2:[],intro3:[],intro4:[]},
            show:{fd:true,xfts:true,tdxq:true,sjjs:true,pj:true},
            focus:{xq:"focus_color",xfts:"",sjjs:"",hypj:""}
          },
          methods:{
            // 获取详情
            getDetail(){
              axios.get("http://localhost:3000/detail",{
                params:{lid:lid}
              }).then(res=>{
                //console.log(res)
                console.log(res.data.pics)
                this.pics=res.data.pics;
                this.product=res.data.product

              })
            },
            getInfo(){
              axios.get("http://localhost:3000/detail/intro").then(result=>{
                
                for(var i=0;i<4;i++){
                 this.intro.intro1.push(result.data[Math.floor(Math.random()*result.data.length)])
                 this.intro.intro2.push(result.data[Math.floor(Math.random()*result.data.length)])
                 this.intro.intro3.push(result.data[Math.floor(Math.random()*result.data.length)])
                 this.intro.intro4.push(result.data[Math.floor(Math.random()*result.data.length)])
                }    
   
              })
            },
            // 减
            getsub(){
              if(this.value>1)
              this.value--
              else{
              this.value=1;
              }
            },
            // 加
            getadd(){
              if(this.value<30)
              this.value++
              else
              this.value=30
            }, 
            bgpink(i){
              if(i==1&&this.value!=1){
                this.pinkbg.pinkbg1="my_button";
                this.pbt.pbt1="pbt";
              }else if(i==2){
                this.pinkbg.pinkbg2="my_button";
                this.pbt.pbt2="pbt"
              }
            },
            bggray(i){
              if(i==1){
                this.pinkbg.pinkbg1="";
                this.pbt.pbt1=""
              }else if(i==2){
                this.pinkbg.pinkbg2="";
                this.pbt.pbt2=""
              }
            },
            // 收藏图片颜色变化
            getImg(){
              this.img="img/order/1538823600(1).jpg";
            },
            loseImg(){
              this.img="img/order/CWT`L(Z1J2PL~A3BK(VX09B.png"
            },
            
            //换一换
            change1(){
              this.intro.intro1=[];
              axios.get("http://localhost:3000/detail/intro").then(result=>{
                for(var i=0;i<4;i++){
                 this.intro.intro1.push(result.data[Math.floor(Math.random()*result.data.length)])
                }    
              })
            },
            change2(){
              this.intro.intro2=[];
              axios.get("http://localhost:3000/detail/intro").then(result=>{
                for(var i=0;i<4;i++){
                 this.intro.intro2.push(result.data[Math.floor(Math.random()*result.data.length)])
                }    
              })
            },
            change3(){
              this.intro.intro3=[];
              axios.get("http://localhost:3000/detail/intro").then(result=>{
                for(var i=0;i<4;i++){
                 this.intro.intro3.push(result.data[Math.floor(Math.random()*result.data.length)])
                }    
              })
            },
            refresh(){
              this.intro.intro4=[];
              axios.get("http://localhost:3000/detail/intro").then(result=>{
                for(var i=0;i<4;i++){
                 this.intro.intro4.push(result.data[Math.floor(Math.random()*result.data.length)])
                }    
              })
            },
            // 消费提示
            xq(){
              this.show.fd=true;
              this.show.tdxq=true;
              this.show.sjjs=false;
              this.show.pj=true;
              this.show.xfts=true;
              this.focus.xfts="",
              this.focus.xq="focus_color"
              this.focus.sjjs="",
              this.focus.hypj=""
            },
            xfts(){
              this.show.fd=false;
              this.show.tdxq=false;
              this.show.sjjs=false;
              this.show.pj=false;
              this.show.xfts=true;
              this.focus.xfts="focus_color",
              this.focus.xq=""
              this.focus.sjjs="",
              this.focus.xq="";
              this.focus.hypj=""
            },
            sjjs(){
              this.show.fd=false;
              this.show.tdxq=false;
              this.show.sjjs=true;
              this.show.pj=false;
              this.show.xfts=false  ;
              this.focus.sjjs="focus_color",
              this.focus.xq="";
              this.focus.xfts="";
              this.focus.hypj=""
            },
            hypj(){
              this.show.fd=false;
              this.show.tdxq=false;
              this.show.sjjs=false;
              this.show.pj=true;
              this.show.xfts=false  ;
              this.focus.sjjs="",
              this.focus.xq="";
              this.focus.xfts="";
              this.focus.hypj="focus_color"
            },
            buynow(){
              axios.get("http://localhost:3000/users/islogin").then(result=>{
                  console.log(result)
                  if(result.data.ok==0){
                    alert("请您先登录")
                  }else{
                    location.href="cart.html?lid="+lid+"&count="+this.value
                  }   
              })
            },
          },
          created(){
            this.getDetail();
            this.getInfo()
          }
        })
       
          }
        })
  