	<div class="sub-cate">
		<div class=" top-nav rsidebar span_1_of_left">
			<h3 class="cate">Danh Sách Sản Phẩm</h3>
			<ul class="menu">
	
				<li>
					<ul class="kid-menu">
						<li><a href="product.html">Mascara dừa tinh dầu bưởi 10ml</a></li>
						<li ><a href="product.html">Lotion Bưởi 110ml</a></li>
						<li ><a href="product.html">Lotion Dừa 110ml</a></li>
					</ul>
				</li>
				<ul class="kid-menu ">
					<li><a href="product.html">Son dưỡng</a></li>
					<li ><a href="product.html">Son lỳ</a></li>
					<li><a href="product.html">Phôi xà phòng</a></li>
					<li class="menu-kid-left"><a href="contact.html">Contact us</a></li>
				</ul>
			</ul>
					</div>



				<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>

			<div class=" chain-grid menu-chain">
	     		<a href="single.html"><img class="img-responsive chain" src="images/wat.jpg" alt=" " /></a>	   		     		
	     		<div class="grid-chain-bottom chain-watch">
		     		<span class="actual dolor-left-grid">300$</span>
		     		<span class="reducedfrom">500$</span>  
		     		<h6><a href="single.html">Lorem ipsum dolor</a></h6>  		     			   		     										
	     		</div>
	     	</div>

	     	<a class="view-all all-product" href="product.html">VIEW ALL PRODUCTS<span> </span></a> 	

		</div>

	   		    <div class="clearfix"> </div>       

	</div>