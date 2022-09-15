


//让图片切换
var container1=document.getElementById('maskBig');
var container=document.getElementById('image');
        function change_img(image){
            container.src=image.src;
            container1.src=image.src;
        }


// 当页面加载完了之后
window.addEventListener('load',function(){
    var top_section=document.querySelector('.top-section');//事件源
    var mask=document.querySelector('.mask');
    var big=document.querySelector('.big');
    //1.当鼠标经过top-secton时，就显示和隐藏mask遮挡层和big大盒子
    top_section.addEventListener('mouseover',function()
    {
        mask.style.display='block';
        big.style.display='block';
    })
    //鼠标离开
    top_section.addEventListener('mouseout',function()
    {
        mask.style.display='none';
        big.style.display='none';
    })
    //e为鼠标的事件对象
    top_section.addEventListener('mousemove',function(e){
        //先计算出鼠标在盒子内的坐标
        var x=e.pageX-350;
        var y=e.pageY-200;
        // console.log(x,y);
    //限制放大镜的移动层范围
        var maskX=x;
        var maskY=y;
        //判断坐标是否小于零，小于零停在原位
        if(maskX<=0)
        {
            maskX=0;
        }
        else if(maskX>=120)
        {
            maskX=120;
        }
        if(maskY<=0)
        {
            maskY=0;
        }
        else if(maskY>=230)
        {
            maskY=230;
        }
        mask.style.left=maskX+'px';
        mask.style.top=maskY+'px';
    //大图片移动公式：遮挡层移动距离/遮挡层移动最大距离=大图片移动距离/大图片移动最大距离
        var maskMax=120;//遮挡层的最大移动距离
        var bigImg=document.querySelector('.bigImg');
        var bigMax=192;
        var bigx=maskX*bigMax/maskMax;
        var bigy=maskY*bigMax/maskMax;
        bigImg.style.left=-bigx+'px';
        bigImg.style.top=-bigy+'px';
    })
})
//获得鼠标对于top-section的坐标，再把lett和top给mask




