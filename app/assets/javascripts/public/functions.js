(function ($) {
		
	//jQuery for page scrolling feature - requires jQuery Easing plugin
	$(function() {
			
		$('.navbar-nav li a').bind('click', function(event) {
		    $('.navbar-nav li').removeClass('active');
		    $(this).closest('li').addClass('active');
			var $anchor = $(this);
			var nav = $($anchor.attr('href'));
			if (nav.length) {
			$('html, body').stop().animate({				
				scrollTop: $($anchor.attr('href')).offset().top				
			}, 1500, 'easeInOutExpo');
			
			event.preventDefault();
			}
		});
						
	});	
	
	$('body').flipLightBox({
			
		lightbox_text_status: 0,
		lightbox_navigation_status: 0
    
	})
	
	$('.parallax-window').parallax({imageSrc: 'img/3.png'});
	
    wow = new WOW({}).init();
		

})(jQuery);



$(document).ready(function() {

	/*************************************
	  LEFT MENU SMOOTH SCROLL ANIMATION
	 *************************************/
	// declare variable
	var positionJornadas = $('#jornadas').position();
	var positionTips = $('#tips').position();
  
	$('#btn-id-jornadas').click(function() {
	  $('html, body').animate({
		scrollTop: positionJornadas.top
	  }, 1500, 'easeInOutExpo');
	  return false;
  
	}); 

	$('#btn-id-tips').click(function() {
		$('html, body').animate({
		  scrollTop: positionTips.top
		}, 1500, 'easeInOutExpo');
		return false;
	
	  }); 
  

  
  }); // ready() END