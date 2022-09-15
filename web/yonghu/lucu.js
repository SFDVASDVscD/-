//获取操作需要的元素
let items=document.querySelectorAll('.item');
let current_tag=document.querySelector('.current-tag');
let handler=document.querySelector('.handler');
let left=document.querySelector('.left');
let inboy=document.querySelector('inbody');
let adivs=document.querySelectorAll('.adiv');

//设置选中项的样式
function serActive(){
    items.forEach((item)=>{
        item.classList.remove('active');
    })
    this.classList.add('active');
    current_tag.innerText=this.innerText;
    for(let i=0;i<items.length;i++)
    {
        items[i].onclick=function(){
            items[i].index=i;
            for(let a=0;a<items.length;a++)
            {
                adivs[a].style.display='none';
            }
            adivs[this.index].style.display='block';
        }
    }
}
//为每个li设置点击事件
items.forEach((item)=>{
    item.addEventListener('click',serActive);
})

handler.addEventListener('click',function()
{
    if(!this.classList.contains('close')){
        left.style.width=0;
        this.classList.add('close');
    }else
    {
        left.style.width=250+'px';
        this.classList.remove('close');
    }
})

