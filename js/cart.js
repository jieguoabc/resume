$(function(){
    if(location.search.indexOf("lid=")!=-1){
        var lid=location.search.split("&")[0].split("=")[1];
        var count=location.search.split("&")[1].split("=")[1];
new Vue({
    el:"#main",
    data:{
        user:{uname:"",phone:""},
        product:{},
        pics:[],
        value:1,
        pinkbg:{pinkbg1:"",pinkbg2:""},
        pbt:{pbt1:"",pbt2:""}, 
        yh:{money:16},
        checked:"",
    },
    created(){
        axios.get("http://localhost:3000/users/islogin").then(result=>{
           //console.log(result)  
          this.user.uname=result.data.uname;
          this.user.phone=result.data.phone.slice(0,3)+"****"+result.data.phone.slice(7)   
      })   
      this.getDetail();
      this.value=count;
    },
    //计算优惠后价格
    computed:{
        total(){
            return this.product.price*this.value-this.yh.money*this.checked
        }
           
    },
    methods:{
        signout(){
            axios.get("http://localhost:3000/users/signout").then(()=>{
                location.href="index.html"
            })
        },
        getDetail(){
            axios.get("http://localhost:3000/detail",{params:{lid:lid}}).then((result)=>{
                console.log(result)
                this.product=result.data.product;
                this.pics=result.data.pics;
            })
        },
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
        
    }
})
}
})