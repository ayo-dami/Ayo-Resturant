<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="pages_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 978px;
        }
        .auto-style2 {
            width: 11%;
            height: 358px;
        }
        .auto-style3 {
            width: 978px;
        }
        .auto-style4 {
            width: 205px;
        }
        .auto-style5 {
            width: 757px;
        }
        .auto-style6 {
            float: left;
            position: relative;
            width: 73%;
            left: 0px;
            top: 0px;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            height: 369px;
        }
        .auto-style9 {
            width: 52%;
        }
        .auto-style11 {
            width: 28%;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    		<div id="top" class="auto-style7"><!-- <img src="img/home.png" width="25px" height="20px"/>  -->
                <h2>Home Page  </h2>
            </div>

		<div class="row fade" style="width: 1350px">
		  <div class="auto-style6">
		  	  <table class="auto-style5">
                  <tr>
                      <td class="auto-style3">
		  	<img id="img1" class="auto-style1" src="js/images/image1.jpg"></td>
                  </tr>
              </table>
		
		  	<!-- set image -->
		  	<div id="setImage" >
				<span class="setimage_btn activeDot" onclick="setImage(0);"></span>
				<span class="setimage_btn" onclick="setImage(1);"></span>
				<span class="setimage_btn" onclick="setImage(2);"></span>
				<span class="setimage_btn" onclick="setImage(3);"></span>
				<span class="setimage_btn" onclick="setImage(4);"></span>
			</div>

			<!-- set caption -->
		  	<div id="caption">Hello and Welcome to the worlds best Electronic website </div>
		  	<div id="skiptag">
		  		<img class="cursorpointer" width="25" src="js/holders/firstimg.png" onClick="setImage(0);"/>
				<img class="cursorpointer" width="25" src="js/holders/random.png" id="test" onClick="randomImage();"/>
				<img class="cursorpointer" width="25" src="js/holders/lastimg.png" onClick="setImage(4)"/>
				
			</div>
		  </div>

		  <!-- captions -->
		    <table class="auto-style2">
                <tr>
                    <td class="auto-style8"> 
			<table class="thumbnail">
				<tr>
					<th class="auto-style4">LATEST NEWS <br>	
					</th> 
				</tr>
			  	<tr><td class="thumb_tab activeThumb" style="width: 175px">
			  		<img id="imgAll" width="175"  onclick="setImage(0);" 
				src="js/images/image1.jpg">
				</td></tr>

				<tr><td class="thumb_tab" style="width: 175px">
					<img id="imgAll0" width="175" onclick="setImage(1);" 
					src="js/images/image2.jpg">
				</td></tr>

				<tr><td class="thumb_tab" style="width: 175px">
					<img id="imgAll1" width="175"  onclick="setImage(2);" 
					src="js/images/image3.jpg">
				</td></tr>

				<tr><td class="thumb_tab" style="width: 175px">
					<img id="imgAll2" width="175"  onclick="setImage(3);" 
					src="js/images/image4.jpg">
				</td></tr>

				<tr><td class="thumb_tab" style="width: 175px">
					<img id="imgAll3" width="175"  onclick="setImage(4);" 
					src="js/images/image5.jpg">
				</td></tr>

			</table>
		            </td>
                </tr>
            </table>
		</div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <h3 class="auto-style7">News and Update</h3>
    <table class="auto-style9" style="margin: 0 15%;">
        <tr>
            <td class="auto-style11">
                <asp:Image ID="imgNews" runat="server" Width="250px" />
            </td>
            <td class="auto-style7">
                <asp:Label ID="lblNews" runat="server"></asp:Label>
            </td>
        </tr>
        </table>

    </asp:Content>

