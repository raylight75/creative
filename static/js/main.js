/*-------------------------------------------------------------------------------------------------------------------------------*/
/*This is main JS file that contains custom style rules used in this template*/
/*-------------------------------------------------------------------------------------------------------------------------------*/
/* Template Name: Miami*/
/* Version: 1.0 Initial Release*/
/* Build Date: 19-02-2016*/
/* Author: Unbranded*/
/* Website: http://www.wp.city/projects/miami
/* Copyright: (C) 2016 */
/*-------------------------------------------------------------------------------------------------------------------------------*/

/*--------------------------------------------------------*/
/* TABLE OF CONTENTS: */
/*--------------------------------------------------------*/
/* 01 - Swiper Slider */
/* 02 - MOBILE MENU */
/* 03 - Window Resize */
/* 04 - WINDOW LOAD */
/* 05 - POPUP */
/* 06 - GALLERY */
/* 07 - SHORTCODES */
/* 08 - AUDIO */
/* 09 - YOUTUBE VIDEO */
/* 10 - ETC */


 


/*-------------------------------------------------------------------------------------------------------------------------------*/

;$(document).ready(function() {
	"use strict";

	/***********************************/
	/* 01 - Swiper Slider */
	/**********************************/
	
	$('.swiper-container').each(function(i) {
		$(this).attr({'id' : i + '-slider'});
	});

    var swipers = [];
    var winW = $(window).width();
    var winH  =  $(window).height();
	var xsPoint = 700, smPoint = 991, mdPoint = 1199; 
	var initIterator = 0;
				 			 
    function swiperInit(){
		var _this,
			spanwipers = $('.swiper-container');

		for (var i = spanwipers.length - 1; i >= 0; i--) {

			_this = spanwipers[i];

			var $th = $(_this);								  
			var $t = $th;
			var index = $th.attr('id'); 
				$th.addClass('swiper-'+index + ' initialized').attr('init-attr', 'swiper-'+index);
				$th.find('.pagination').addClass('pagination-'+index);
			
				var autoPlayVar = parseInt($th.attr('data-autoplay'),10);
				var slidesPerViewVar = $th.attr('data-slides-per-view');
			    var loopVar = parseInt($th.attr('data-loop'),10);
			    var mouseVar = parseInt($th.attr('data-mouse'),10);
			    var sliderSpeed = parseInt($th.attr('data-speed'),10);
			    var touchVar = parseInt($th.attr('data-touch'),10);
			    var xsValue, smValue, mdValue, lgValue;
			    var slideMode =  $th.attr('data-mode');
			    if(slidesPerViewVar == 'responsive'){
					xsValue = parseInt($th.attr('data-xs-slides'),10);
					smValue = parseInt($th.attr('data-sm-slides'),10);
					mdValue = parseInt($th.attr('data-md-slides'),10);
					lgValue = parseInt($th.attr('data-lg-slides'),10);
					slidesPerViewVar = updateSlidesPerView(xsValue, smValue, mdValue, lgValue);
                } else slidesPerViewVar = parseInt(slidesPerViewVar,10);
				
				swipers['swiper-'+index] = new Swiper('.swiper-'+index,{
					speed: sliderSpeed,
					pagination: '.pagination-'+index,
					loop: loopVar,
					paginationClickable: true,
					autoplay: autoPlayVar,
					slidesPerView: slidesPerViewVar,
					keyboardControl: true,
					calculateHeight: true,
					roundLengths: true,
					onSlideChangeEnd: function(swiper){
						$t.find('.swiper-slide.active').show();
						var activeIndex = (loopVar===true)?swiper.activeIndex:swiper.activeLoopIndex;
						var qVal = $t.find('.swiper-slide-active').attr('data-val');
						$t.find('.swiper-slide[data-val="'+qVal+'"]').addClass('active');
					},
					onSlideChangeStart: function(swiper){
						var activeIndex = (loopVar===true)?swiper.activeIndex:swiper.activeLoopIndex;
						$th.find('.count span i').text(activeIndex+1);
						$t.find('.swiper-slide.active').removeClass('active');
						$t.find('.swiper-slide.active').hide();
						if($t.hasClass('thumbnails-preview')){
							activeIndex = (loopVar===1)?swiper.activeLoopIndex:swiper.activeIndex;
							swipers['swiper-'+$t.next().attr('id')].swipeTo(activeIndex);
							$t.next().find('.current').removeClass('current');
							$t.next().find('.swiper-slide[data-val="'+activeIndex+'"]').addClass('current');
						}					
					},
					onSlideClick: function(swiper){
						if($t.hasClass('thumbnails')) {
							swipers['swiper-'+$t.prev().attr('id')].swipeTo(swiper.clickedSlideIndex);
						}
					}			
				});
  
			swipers['swiper-'+index].reInit();
		    initIterator++;

	    };

	    $('.full-height-slider .slide-grid').each(function(i,el) {

	    	swiper_content[i] = swipers['swiper-'+$(el).find('.swiper-container').attr('id')];

	    });


	}

				 
	$('.slide-prev').on('click', function(){
    	swipers['swiper-'+$(this).closest('.slider-wrap').find('.swiper-container').attr('id')].swipePrev();
    	return false;
    });

    $('.slide-next').on('click', function(){
    	swipers['swiper-'+$(this).closest('.slider-wrap').find('.swiper-container').attr('id')].swipeNext();
    	return false;
    });

    // button stopAutoplay
	$(".stopAutoplay").on('click', function() {

		var swiper_cont = swipers['swiper-'+$(this).closest('.slider-wrap').find('.swiper-container').attr('id')],
			_this = $(this);

		_this.find('.fa').removeClass('fa-play fa-pause');

		if(_this.hasClass('stop')) {
			swiper_cont.startAutoplay();
			_this.removeClass('stop').fadeOut(200,function(){
				_this.find('.fa').addClass('fa-pause').end().fadeIn(200);
			});
		}
		else {
			swiper_cont.stopAutoplay();
			_this.addClass('stop').fadeOut(200,function(){
				_this.find('.fa').addClass('fa-play').end().fadeIn(200);
			});
		}
		
		return false;
	});

	// button stopAutoplayAll
	var swiper_content = new Array();

	$(".stopAutoplayAll").on('click', function() {

		
		function runAutoplayAll(play){
			for (var i = 0; i < swiper_content.length; i++) {
			    play ? swiper_content[i].startAutoplay() : swiper_content[i].stopAutoplay() ;
			}
		};

		var _this = $(this);

		_this.find('.fa').removeClass('fa-play fa-pause');

		if(_this.hasClass('stop')) {
			runAutoplayAll(true);
			_this.removeClass('stop').fadeOut(200,function(){
				_this.find('.fa').addClass('fa-pause').end().fadeIn(200);
			});
		}
		else {
			runAutoplayAll();
			_this.addClass('stop').fadeOut(200,function(){
				_this.find('.fa').addClass('fa-play').end().fadeIn(200);
			});
		}

			
		return false;

	});

	

	
		 			 	 
	function updateSlidesPerView(xsValue, smValue, mdValue, lgValue){
        if(winW > mdPoint) return lgValue;
        else if(winW>smPoint) return mdValue;
        else if(winW>xsPoint) return smValue;
        else return xsValue;
    }	


    


    /***********************************/
	/* 01 Horizontal - Centered */
	/**********************************/

	var win_h = $(window).height(),
		win_w = $(window).width(),
		home_slides_arr = [],
		is_moving = false;

	
	if($(".gallery-h.centered").length > 0) {

		var total_width = 0,
			first_img = $('.gallery-h .container .img:first-child'),
			last_img = $('.gallery-h .container .img:last-child'),
			active_img = $(".gallery-h .img.active"),
			imgs_length = $('.gallery-h .container .img').length,
			container_margin = (win_w<=768)? 25 : 90;


		$(".gallery-h.centered .container .img a").each(function(index, el) {
			
			var img = $(this).find('img'),
				img_h = $(this).parent().height(),
				img_o_w = img.attr('data-width'),
				img_o_h = img.attr('data-height');

			$(this).width(img_o_w);

			img.closest('.img').css({
				'background-image' : 'url(' + img.attr('src') + ')'
			});
			img.hide();


		});


		$('.gallery-h .container .img').each(function(index, el) {

			var value = (imgs_length == (index-1))? 0 : 30;
			total_width += $(this).width() + value;
		});

		var extra_amount_left = (win_w / 2) - ( (first_img.width() / 2) + container_margin ),
			extra_amount_right = (win_w / 2) - ( (last_img.width() / 2) + container_margin );

		total_width += extra_amount_left + extra_amount_right;

		$(".gallery-h .container").width(total_width);

		$(".gallery-h .container").css({
			'padding-left': extra_amount_left+'px',
			'padding-right': extra_amount_right+'px'
		});

		//Centering on active image
		var active_index = active_img.index() + 1,
			req_width = 0,
			req_width_no_space = 0;

		if(active_index != 1) {

			for (var i = 0; i < active_index; i++) {

				var current_img = $('.gallery-h .container .img:eq('+i+')');
				var current_img_no_space = $('.gallery-h.no-space .container .img:eq('+i+')');

				if(i === 0 || (i+1) == active_index) {
					req_width += (current_img.width()/2);
				}
				else {
					req_width += current_img.width();
				}

				if(i === 0 || (i+1) == active_index) {
					req_width_no_space += (current_img_no_space.width()/2);
				}
				else {
					req_width_no_space += current_img_no_space.width();
				}
				if((i+1) != active_index) {
					req_width_no_space += -60;
				}

			}

			$(".gallery-h .container").css('left', '-'+req_width+'px');
			$(".gallery-h.no-space .container").css('left', '-'+req_width_no_space+'px');
		}


		// Navigation - Left Arrow
		$(".gallery-h.centered .nav .prev").on('click', function(event) {
			event.preventDefault();

			gallery_scroll('left');
		});

		// Navigation - Right Arrow
		$(".gallery-h.centered .nav .next").on('click', function(event) {
			event.preventDefault();
			
			gallery_scroll('right');
		});


		// Navigation - Right Arrow
		$(".gallery-h .container .img").on('click', function(event) {
			var $t = $(this);
			event.preventDefault();
			gallery_img_click($t);
		});	
	}	


	/***********************************/
	/* 02 - MOBILE MENU */
	/**********************************/
    //fixed header
	if($('.full-scr-header').length){
		$('body').append('<div class="full-scr-burger"><a href="#" class="table-cell"><i></i></a></div>');
		$('.full-scr-burger').on('click', function(e){
            if($(window).width() >= 992){
                $(this).toggleClass('active');
                $('.full-scr-header').toggleClass('active');
            }
			e.preventDefault();  
		});
	};

	$('.nav-menu-icon a, .full-scr-burger').on('click', function() { 
		var headNav = $('nav');
	    if (headNav.hasClass('slide-menu')){
			headNav.removeClass('slide-menu'); 
		    $(this).removeClass('active');
	    }else {
			headNav.addClass('slide-menu');
		    $(this).addClass('active');
	    }

		return false;
	 });

	// right menu		 
    $('.second-menu').on('click' , function(){
	    $('.right-menu').addClass('slides');
		$('.close-menu').addClass('active');
	    $('body').addClass('act');	
	    
		return false;
	});

	$('.close-menu, .layer-dark').on('click' , function(){
		$('.right-menu').removeClass('slides');
	    $('.close-menu').removeClass('active');
	    $('body').removeClass('act');
		
		return false;
	});	

	$('.close-menu, .layer-dark').on('click' , function(){
		$('.menu').removeClass('slide-menu');
		$('.full-scr-burger').removeClass('active');
		$('.full-scr-header').removeClass('active');
	    $('.close-menu').removeClass('active');
	    $('body').removeClass('act');
		
		return false;
	});	

	$( '#dl-menu' ).dlmenu({
		animationClasses : { classin : 'dl-animate-in-2', classout : 'dl-animate-out-2' }
	});	

	$( '#dl-menu > ul > li' ).on('click', function(e){
		e.preventDefault();
	});	



	/***********************************/
	/* 03 - HEIGHT CONTAINER */
	/**********************************/

	function height_container(){
		var height_container = $(window).height() - $('.miami-header .container-fluid').height() - $('.miami-footer').height();
		var fs_height_container = $(window).height() - $('.miami-header .container-fluid').height();
		$('.height-container').css({
			'position' : 'relative',
			'height' : height_container - 15
		});
		$('.fs-height-container').css({
			'position' : 'relative',
			'height' : fs_height_container
		});
		$('.item-slide-col').css({
			'height' : height_container/2
		});
		$('.fs-item-slide-col').css({
			'position' : 'relative',
			'height' : fs_height_container/2
		});
		$('.s-item-slide-col').css({
			'position' : 'relative',
			'height' : $(window).height()*60/100
		});

		//full screen
		$('.full-scr').css({
			'position' : 'relative',
			'height' : $(window).height()
		});
		
	}





	/***********************************/
	/* 03 - WINDOW RESIZE */
	/**********************************/
				 
	function resizeCall() {
		winW = $(window).width();
   		winH = $(window).height();

   		// Gallery - Horizontal Centered
		if($(".gallery-h.centered").length > 0) {

			var total_width = 0,
				first_img = $('.gallery-h .container .img:first-child'),
				last_img = $('.gallery-h .container .img:last-child'),
				active_img = $(".gallery-h .img.active"),
				imgs_length = $('.gallery-h .container .img').length,
				container_margin = (win_w<=768)? 25 : 90;

			$('.gallery-h .container').width(99999);

			$(".gallery-h .container .img a").each(function(index, el) {
				
				var anchor = $(this),
					img = $(this).find('img'),
					img_w = img.attr('data-width'),
					img_h = img.attr('data-height'),
					current_height = img.height();

				img.width((current_height*img_w)/img_h);
				anchor.width((current_height*img_w)/img_h);
			});

			$('.gallery-h .container .img').each(function(index, el) {

				var value = (imgs_length == (index-1))? 0 : 30;
				total_width += $(this).width() + value;
			});

			var extra_amount_left = (win_w / 2) - ( (first_img.width() / 2) + container_margin ),
				extra_amount_right = (win_w / 2) - ( (last_img.width() / 2) + container_margin );

			total_width += extra_amount_left + extra_amount_right;

			$(".gallery-h .container").width(total_width);

			$(".gallery-h .container").css({
				'padding-left': extra_amount_left+'px',
				'padding-right': extra_amount_right+'px'
			});

			//Centering on active image
			var active_index = active_img.index() + 1,
				req_width = 0;

			if(active_index != 1) {

				for (var i = 0; i < active_index; i++) {

					var current_img = $('.gallery-h .container .img:eq('+i+')');

					if(i === 0 || (i+1) == active_index) {
						req_width += (current_img.width()/2);
					}
					else {
						req_width += current_img.width();
					}

					if((i+1) != active_index) {
						req_width += 30;
					}
				}

				$(".gallery-h .container").css('left', '-'+req_width+'px');

			}

		}


   		var swiper_container = $('.swiper-container[data-slides-per-view="responsive"],.swiper-container[data-slides-per-view="1"]');

   		for (var i = swiper_container.length - 1; i >= 0; i--) {

			var $th = $(swiper_container[i]);
			var xsValue = parseInt($th.attr('data-xs-slides'),10);
			var smValue = parseInt($th.attr('data-sm-slides'),10);
			var mdValue = parseInt($th.attr('data-md-slides'),10);
			var lgValue = parseInt($th.attr('data-lg-slides'),10);
			var currentSwiper = swipers[$th.attr('init-attr')];
			var newSlideNumber = updateSlidesPerView(xsValue, smValue, mdValue, lgValue);
			currentSwiper.params.slidesPerView = newSlideNumber;
			currentSwiper.reInit();

   		}

   		height_container();

    }

    $(window).on('resize', function(){
        resizeCall();
        if ($('.izotope-container').length) { 
			$('.izotope-container').isotope();
        };    
        swiperInit();
        if(winW >= 992 && $('dl-menuwrapper').hasClass('slide-menu')){
        	$('.full-scr-burger').removeClass('active');
    	}
    	if(winW >= 992){
			$('full-scr-burger').removeClass('active');
		}

    });	
				 
	window.addEventListener("orientationchange", function() {
        resizeCall();
    }, false);

	$(window).on('scroll', function(){

		if($('body').height() > $(window).height() + 150){
			if($(window).scrollTop() > 1 ){
				$('.miami-header').addClass('fixed-header');
			}else{
				$('.miami-header').removeClass('fixed-header');	
			};
		}

	});

	// FUNCTION GALLERY SCROLL
	function gallery_scroll(direction) {

		var active_img = $(".gallery-h .img.active"),
			next_img = $(".gallery-h .img.active").next(),
			prev_img = $(".gallery-h .img.active").prev(),
			count = $(".gallery-h .img").length;

		if( (active_img.index() == 0 && direction == "left") || (active_img.index() == (count-1) && direction == "right") ) {
			is_moving = false;
		}
		else if(!is_moving) {

			is_moving = true;

			if(direction == "right") {

				var scroll_amount = (active_img.width()/2) + (next_img.width()/2) + 30;
				$(".gallery-h .container").animate({left: "-="+scroll_amount},1000,'easeOutQuint',function(){
					is_moving = false;
				});

				active_img.removeClass('active');
				next_img.addClass('active');
			}
			else {
				var scroll_amount = (active_img.width()/2) + (prev_img.width()/2) + 30;
				$(".gallery-h .container").animate({left: "+="+scroll_amount},1000,'easeOutQuint',function(){
					is_moving = false;
				});

				active_img.removeClass('active');
				prev_img.addClass('active');
			}
		}
	}	

	function gallery_img_click(clicked_elem) {
		var t_img = clicked_elem,
			t_img_i = t_img.index(),
			active_img = $(".gallery-h .img.active"),
			active_img_i = active_img.index();

		if(active_img_i < t_img_i){
			var step = t_img_i - active_img_i;
			var scroll_amount = t_img.width() * step;

			active_img.removeClass('active');
			t_img.addClass('active');

			$(".gallery-h .container").animate({left: "-="+scroll_amount},1000,'easeOutQuint',function(){
				is_moving = false;
			});

		}else if(active_img_i > t_img_i){
			var step = active_img_i - t_img_i;
			var scroll_amount = t_img.width() * step;
			active_img.removeClass('active');
			t_img.addClass('active');

			$(".gallery-h .container").animate({left: "+="+scroll_amount},1000,'easeOutQuint',function(){
				is_moving = false;
			});
		}
	}	

	/***********************************/
	/* 04 - WINDOW LOAD */
	/**********************************/
 
    $(window).on('load', function() {
    	height_container(); 
		
    	if($('#map-canvas-contact').length==1){
		  initialize('map-canvas-contact');}

    	swiperInit();

    	if ($('.izotope-container').length) { 
			var $container = $('.izotope-container');
            $container.isotope({
                itemSelector: '.item',
                layoutMode: 'masonry',
                masonry: {
                	columnWidth: '.item'
                }
            });
			$('#filters').on('click', '.but', function() {

			 	var izotope_container = $('.izotope-container');

			 	for (var i = izotope_container.length - 1; i >= 0; i--) {
			 		$(izotope_container[i]).find('.item').removeClass('animated');
				}

				$('#filters .but').removeClass('activbut');
				$(this).addClass('activbut');
				var filterValue = $(this).attr('data-filter');
				$container.isotope({filter: filterValue});

				$('.fillter-wrap .but').removeClass('.fillter-wrap active-fillter');
				$(this).addClass('.fillter-wrap active-fillter');

				return false;
			});
        }

        function before_after() {
    		$(".before-after").twentytwenty();
    	};

    	before_after();

    	$('.preloader').fadeOut(1000, function(){
    		$(this).remove();
    	});
	});		

    //sets child image as a background
    $('.s-back-switch').each(function(){
        var $img = $(this).find('.s-img-switch');
        var $imgSrc =  $img.attr('src');
        var $imgDataHidden =  $img.data('s-hidden');
        $(this).css('background-image' , 'url(' + $imgSrc + ')');
        if($imgDataHidden){
        	$img.css('visibility', 'hidden');
        }else{
        	$img.hide();
        }
    });
	
	//protected page
	$('.protected-3-inp').on('input',function(){
		if($(this).val().length >= 1){
			$('.submit-arrow').addClass('enabled');
		}else if($(this).val().length == 0){
			$('.submit-arrow').removeClass('enabled');
		}
	});

  	  
	// Filter slider 
    $('.miami-fillter-wrap').each(function(i,el){
  		$(el).find('.but').on('click', function(){
  			$('.slider-container.slider-filter').removeClass('active');
  			var filter = $(this).attr('data-filter');
  			console.log('.slider-container.slider-filter[data-filter=' + filter + ']');
  			$('.slider-container.slider-filter[data-filter=' + filter + ']').addClass('active animated fadeInUp');

  			return false;
  		});
	});

    //active menu item
    var current_url = location.href;
    $('.menu .menu-item').removeClass('active');
    $('.menu a').each(function(){
    	if( this.href == current_url ){
    		$(this).parents('li').addClass('active');
    	}
    });


	/***********************************/
	/* 05 - POPUP */
	/**********************************/
	
	if ($('.popup-gallery').length) {
		$('.popup-gallery').magnificPopup({
			delegate: '.view-item',
			type: 'image',
			removalDelay: 100,
			tLoading: 'Loading image #%curr%...',
			mainClass: 'mfp-fade',
			closeBtnInside: false,
			gallery: {
				enabled: true,
			},
			callbacks: {
              	beforeOpen: function() {
                	this.st.image.markup = this.st.image.markup.replace('mfp-figure', 'mfp-figure animated ' + this.st.el.attr('data-effect'));
            	}
            }

		});
	};


	/***********************************/
	/* 06 - GALLERY */
	/**********************************/

	$('.gallery-h.gallery_simple .gallery .container .img a').hover(function() {

		$(this).parent().addClass('active');
		$(this).parent().parent().addClass('hovered');
	}, function() {

		$(this).parent().removeClass('active');
		$(this).parent().parent().removeClass('hovered');
	});	



	/***********************************/
	/* 07 - SHORTCODES */
	/**********************************/

	//Tabs
	var tabFinish = 0;
	$(document).on('click', '.nav-tab-item', function(){
		
	    var $t = $(this);
	    if(tabFinish || $t.hasClass('active')) return false;
	    tabFinish = 1;
	    $t.closest('.nav-tab').find('.nav-tab-item').removeClass('active');
	    $t.addClass('active');
	    var index = $t.parent().parent().find('.nav-tab-item').index(this);
	    $t.closest('.tab-wrapper').find('.tab-info:visible').fadeOut(500, function(){
	        $t.closest('.tab-wrapper').find('.tab-info').eq(index).fadeIn(500, function() {
	            tabFinish = 0;
	            resizeCall();
				
				
	        });
	    });
	});

	$('.cat-drop').on('click', function(){
		var $t = $(this).parent('li');
		if ($t.hasClass('active')) return false;
		var $cat_active = $t.parent('.sidebar-category').find('li.active');
		$cat_active.removeClass('active');
		$cat_active.find('ul').slideToggle();
		$t.addClass('active').find('ul').slideToggle();

		return false;
	});

	//Accordion
	$('.accordion').each(function(){
		var $t = $(this);
		$t.find('.acc-title').on("click", function(){
			if($t.hasClass('active')){
				$t.removeClass('active').siblings('.acc-body').slideUp();
			} else{
				$t.closest('.accordion').find('.active').removeClass('active');
				$t.closest('.accordion').find('.acc-body').slideUp('slow');
				$(this).toggleClass('active');
				$(this).siblings('.acc-body').slideToggle('slow');
			}
		});
	});

	$('.accordeon-entry h5').on('click', function(){
		$(this).parent().toggleClass('active');
		$(this).next().toggleClass('active');
	});

	$('.accordion-chooser a').on('click', function(){
		var $t = $(this);
		if($t.hasClass('active')) return false;
		var filter = $t.data('fifter');

		var accordion = $t.parents('.accordion-filter').find('.accordion');
		$t.siblings('.active').removeClass('active');		
		$t.addClass('active');
		if (filter=="*"){
			accordion.find('.acc-panel').show();
		} else{
			accordion.find('.acc-panel:not('+filter+')').hide();			
			accordion.find(filter).show();			
		}		

		return false;
	});

	function accordionChooser(){
		if($('.accordion-chooser').length){
			var active_filter = $('.accordion-chooser').find('a.active');
			var filter = active_filter.data('fifter');
			var accordion = active_filter.parents('.accordion-filter').find('.accordion');
			active_filter.siblings('.active').removeClass('active');		
			active_filter.addClass('active');
			if (filter=="*"){
				accordion.find('.acc-panel').show();
			} else{
				accordion.find('.acc-panel:not('+filter+')').hide();			
				accordion.find(filter).show();			
			}		
			return false;			
		}
	}
	accordionChooser();

	//Dropdown
	$('.drop').on( "click", function() {
		var $t = $(this);
		if($t.find('.drop-list').hasClass('act')){
            //$t.parent().removeClass("drop-wrap-rect").siblings().removeClass("drop-wrap-rect");
            $('.drop').parent().removeClass("drop-wrap-rect");
			$t.find('.drop-list').removeClass('act');
			$t.find('span').slideUp(300);
		}else{
			$('.drop').parent().removeClass("drop-wrap-rect");
            $t.parent().addClass("drop-wrap-rect");
           	$('.drop span').slideUp(300);
           	$('.drop .act').removeClass('act');
			$t.find('.drop-list').addClass('act');
			$t.find('span').slideDown(300);
		}
		return false;
	});

    $('.drop span a').on( "click", function() {
			$(this).parent().parent().find('b').text($(this).text());
			$('.drop').find('span').slideUp(300);
	});

	// Animated Skill bar
    $('.skill-bar li').each(function (i) {
    	var $t = $(this);
        $t.appear(function() {
            $t.animate({opacity:1,left:"0px"},1200);
            var b = $t.find(".wrap span").attr("data-width");
            $t.find("span").animate({
                width: b + "%"
            }, 1700, "swing");
        });
    });
   
   
	var spincrement = function() {
		$(".number").spincrement({
		    from: 0,                
		    to: false,              
		    decimalPlaces: 0,       
		    decimalPoint: ".",      
		    thousandSeparator: ",", 
		    duration: 2000          
		});
	};
    
    
    /***********************************/
	/* AUDIO */
	/**********************************/
    var audio = document.getElementById('player');
	
    // audio click button
 	$(".audio-button").on('click', function() {
		var _this = $(this);
        if (audio.muted == false){  
            _this.find('.fa').removeClass('fa-volume-up').addClass('fa-volume-off');
            audio.muted = true;
        }else{
            _this.find('.fa').removeClass('fa-volume-off').addClass('fa-volume-up');
            audio.muted = false;
        }
	});	


 	/***********************************/
	/* YOUTUBE BACKGROUND */
	/**********************************/
    var YTbg = $('#YTbg').YTPlayer({
        fitToBackground: true,
        videoId: 'aTbG1hG2AFA',
        playerVars: {
            modestbranding: 1,
            autoplay: 1,
            controls: 0,
            showinfo: 0,
            wmode: 'transparent',
            branding: 0,
            rel: 0,
            autohide: 2,
          },
    });


    /***********************************/
	/* ETC */
	/**********************************/
	// circlfull
    var circliful = function() {
    	for(var i=1; i<=16; i++) {
	    	$('#myStat-' + i).circliful();
		};
    }(); 

    //modal-window
	$('.modal-cancel').on('click', function(){
		$('#emailModal, #passModal').modal('hide');
	});

    //kenburns   
    (function () {
        if($('#slideshow-kenburns').length == 0) return;
        document.getElementById('slideshow-kenburns').getElementsByTagName('img')[0].className = "fx";

        window.setInterval(kenBurns, 5000);

        var images = document.getElementById('slideshow-kenburns').getElementsByTagName('img'),
            numberOfImages = images.length,
            i = 1;

        function kenBurns() {
            if (i == numberOfImages) {
                i = 0;
            }
            images[i].className = "fx";

            if (i === 0) {
                images[numberOfImages - 2].className = "";
            }
            if (i === 1) {
                images[numberOfImages - 1].className = "";
            }
            if (i > 1) {
                images[i - 2].className = "";
            }
            i++;
        }
    })();
    
    //contact-5 tabs
    $('.contact-5-tabs a').on('click', function(e){
        e.preventDefault();
        var $t = $(this),
            $tParent = $t.parent(),
            tab = '.' + $t.attr('href');
        $tParent.siblings().removeClass('active');
        $tParent.addClass('active');
        $(tab).siblings().hide();
        $(tab).fadeIn();
    });
    
    //services accordion
    $('.wpc-accordion').on('click', '.panel-title', function(){
        var self = $(this);
        var panelWrap = self.parent();
        panelWrap.find('.panel-collapse').slideToggle('200');
        self.toggleClass('active');
        panelWrap.siblings().find('.panel-collapse').slideUp('200');
        panelWrap.siblings().find('.panel-title').removeClass('active');       
    });
    
    
    //portfolio 5 filters
    $('.show-filter').on('click', function(){
       var hideBut = $('.filter-txt-hide');
       var showBut = $('.filter-txt');
       var filterList = $(this).parent().find('ul');
       if(hideBut.css('display') == 'block'){
            hideBut.hide();
            showBut.fadeIn(400);
            filterList.addClass('active-filters');
           
       }else{
            showBut.hide();
            hideBut.fadeIn(400); 
            filterList.removeClass('active-filters');
       }
    });
	new WOW().init();        
    

});








