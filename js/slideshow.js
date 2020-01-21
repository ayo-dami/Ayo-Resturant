
var index = 0;
var titles=[1, 2, 3, 4, 5]; // [0,1,2,3,4,5]
var caption=["Hello and Welcome to the worlds best Electronic website", 
				"Buy the best and latest headphone", 
				"<b>Sales Sales Sales!</b> January Sales", 
				"Purchase the latest drones", 
				"<b>Hiring</b> Need a new team member"
				];

var imgLength = titles.length -1;



// var random = imgLength[rand];

var setimage_btn = document.getElementsByClassName("setimage_btn");
var thumb_tab = document.getElementsByClassName("thumb_tab");
// var randomImage = document.getElementsByClass("randomImage");
setInterval("MoveImg(1)", 3500);


function setImage(x) {
    
    //tables for image // fix possition
		var i;
		index=+x;		
		selectImg()
		getImg();		

	}

    function randomImage() {

		var i;
		var rand = titles[Math.floor(Math.random()*imgLength)];
		index=rand;
		// selectImg();
		selectImg();
		getImg();
		
	}
	
	function MoveImg(x) {
       
		index += x;
		if(index > imgLength) //Move back to starting img
        {
        
			index= 0;
			///	
		}
		if (index < 0) // move back from starting img
		{	
            Session["Workaround"] = 0;
            index = imgLength;

		}
		selectImg();
		getImg();
		
	}

	//random function

	function getImg() {
		var img = document.getElementById("img1");
		var slideName="js/images/image" +titles[index] +".jpg";
		img.src=slideName;
		document.getElementById("caption").innerHTML = caption[index];
	}
	
	function selectImg() {
		var i;
		for (i=0; i < setimage_btn.length; i++ )
		{
			setimage_btn[i].className = setimage_btn[i].className.replace(" activeDot", "");
			// thumb-tab activeThumb
			thumb_tab[i].className = thumb_tab[i].className.replace(" activeThumb", " ")

			
		}
		setimage_btn[index].className = " setimage_btn activeDot";
		// thumb-tab activeThumb
		thumb_tab[index].className = " thumb_tab activeThumb"
    }










