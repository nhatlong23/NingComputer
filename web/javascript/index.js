const imgpositions = document.querySelectorAll(".aspect-ratio-169 img");
const imgcontainer=document.querySelector('.aspect-ratio-169');
const dotItem=document.querySelectorAll(".dot");
let imgIndex= imgpositions.length;
let index=0;
// cho slide chay và tạo hiệu ứng cho các dot
function slider(index){
    imgcontainer.style.left = '-'+index*100+'%'
    const dotActive=document.querySelector(".active");
    dotActive.classList.remove("active");
    dotItem[index].classList.add("active");
}
// durey mảng imgpositions và trả về các mảng vs các phần tử là slide, sau đó áp event cho dot
imgpositions.forEach(function(image,index){
    image.style.left=index*100+"%";
    dotItem[index].addEventListener("click",function(){
        slider(index);
    });
})

// cho slide tự động chạy
function imgslide(){
    index++;
    if(index>=imgIndex){
        index=0;
    }
    slider(index);
    
}
// hieu ứng hover cho header khi scroll chuột
const header= document.querySelector("header");
window.addEventListener("scroll",function(){
    x=window.pageYOffset;
    if(x>0){
        header.classList.add("sticky");
    }else{
        header.classList.remove("sticky");
    }
})

setInterval(imgslide,5000);



// -----------------------category
// tao hiệu ứng slide cho cartegoryleft
const itemsliderbar= document.querySelectorAll(".left-li");
itemsliderbar.forEach(function(menu, index){
    menu.addEventListener("click",function(){
        menu.classList.toggle("block");
    })
})


// ------------------product---------------
// tạo hiệu ứng cho right product( chi tiết ,bảo quản, tham khảo size)
const ListItem= document.querySelectorAll(".ListProduct li");
const content= document.querySelectorAll(".d1");
function switchList(index){
        const ListBlock= document.querySelector(".bol");
        ListBlock.classList.remove("bol")
        content[index].classList.add("bol")
}
content.forEach(function(list, index){
    ListItem[index].addEventListener("click", function(){
        switchList(index);
    })
})

//tạo hiệu ứng cho nút hiển thị deatil product
const button=document.querySelector(".angle-down>button");
const description=document.querySelector(".description");
button.addEventListener("click", function(){
    description.classList.toggle("activeB");
});



//Tạo hiệu ứng cho Image sản phẩm.
    const bigImage=document.querySelector(".mainImage img");
    const smallImage= document.querySelectorAll(".detailImage img");
        smallImage.forEach(function(i,index){
            i.addEventListener("click",function(){
                bigImage.src = i.src;
            })
        })




// ---------------delivery
function setView(ev){
    if(ev.value == "2"){
        $(".password")[0].style.display = "block";
    }
    else{
        $(".password")[0].style.display = "none";
    }
 }
 
 