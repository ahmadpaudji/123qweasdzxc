(function($){

	/*-----------------------------------------
	    	SKIN SWITCH
	 -------------------------------------------*/
/*
	 $('body').append('<div id="ss" class="closed" style="position: absolute; z-index: 99999; right: 30px; top: 217px;"><span class="icon" style="background: url(img/color.png) no-repeat scroll 0px 0px transparent; width: 35px; height: 39px; display: block; cursor:pointer;"></span><div style="position: absolute; border: 1px solid rgb(231, 231, 231); border-radius: 3px 3px 3px 3px; background: none repeat scroll 0% 0% rgb(247, 247, 247); right: 0px; top: 45px; padding: 10px 14px; width: 130px; font-size: 11px; height: 40px; display: none;"><p>Choose another color:</p><select style="width: 110px; margin-top: 5px;"><option data-class="blue">Blue</option><option data-class="orange">Orange</option><option data-class="green">Green</option></select></div></div>');

	 $('#ss').find('.icon').click(function(){
	 	if($(this).parent().hasClass('closed')) {
	 		$(this).parent().removeClass('closed');
	 		$(this).parent().children('div').stop().fadeIn(100);
	 	} else {
	 		$(this).parent().addClass('closed');
	 		$(this).parent().children('div').stop().fadeOut(100);
	 	}
	 });

	 $('#ss').find('select').change(function(){
	 	$('body').removeClass('orange').removeClass('green').removeClass('blue')
	 		.addClass($(this).find('option:selected').data('class'));
	 }) 
*/
	/*-----------------------------------------
	    	Responsive Menu
	 -------------------------------------------*/

 	window.selectnav=function(){"use strict";var a=function(a,b){function l(a){var b;a||(a=window.event),a.target?b=a.target:a.srcElement&&(b=a.srcElement),b.nodeType===3&&(b=b.parentNode),b.value&&(window.location.href=b.value)}function m(a){var b=a.nodeName.toLowerCase();return b==="ul"||b==="ol"}function n(a){for(var b=1;document.getElementById("selectnav"+b);b++);return a?"selectnav"+b:"selectnav"+(b-1)}function o(a){i++;var b=a.children.length,c="",k="",l=i-1;if(!b)return;if(l){while(l--)k+=g;k+=" "}for(var p=0;p<b;p++){var q=a.children[p].children[0],r=q.innerText||q.textContent,s="";d&&(s=q.className.search(d)!==-1||q.parentElement.className.search(d)!==-1?j:""),e&&!s&&(s=q.href===document.URL?j:""),c+='<option value="'+q.href+'" '+s+">"+k+r+"</option>";if(f){var t=a.children[p].children[1];t&&m(t)&&(c+=o(t))}}return i===1&&h&&(c='<option value="">'+h+"</option>"+c),i===1&&(c='<select class="selectnav" id="'+n(!0)+'">'+c+"</select>"),i--,c}a=document.getElementById(a);if(!a)return;if(!m(a))return;document.documentElement.className+=" js";var c=b||{},d=c.activeclass||"active",e=typeof c.autoselect=="boolean"?c.autoselect:!0,f=typeof c.nested=="boolean"?c.nested:!0,g=c.indent||"→",h=c.label||"- Navigation -",i=0,j=" selected ";a.insertAdjacentHTML("afterend",o(a));var k=document.getElementById(n());return k.addEventListener&&k.addEventListener("change",l),k.attachEvent&&k.attachEvent("onchange",l),k};return function(b,c){a(b,c)}}();

    $('#menu section').children('ul').attr('id', 'tiny');

	selectnav('tiny', {
		label: '--- Navigation --- ',
		indent: '-'
	});
	
	/*-----------------------------------------
	    	Initialize Flex Slider Carousels
	 -------------------------------------------*/

	$('html').removeClass('no-js');

	$('.rotator').each(function(){

		if($(this).parent().hasClass('news') || $(this).parent().hasClass('tour')) {

			$(this).flexslider({
				animation: 'slide',
				animationLoop: false,
				slideshow: false,
				smoothHeight: true,
				controlsContainer: $(this).parent().find('.arrows'),
				keyboard: false,
				controlNav: false,
				video:true
			});

		} else if($(this).parent().hasClass('event')) {

			$(this).flexslider({
				animation: 'slide',
				animationLoop: false,
				slideshow: false,
				smoothHeight: true,
				controlsContainer: $(this).parent().find('.arrows'),
				keyboard: false,
				controlNav: false,
				itemWidth:163
			});

		}

	});

	/*-----------------------------------------
	    	Initialize Homepage Slider
	 -------------------------------------------*/

	if($('#homeSlider').length > 0) {

		var hIndex = 0;
		var $hCap = $('#homeSlider').find('.captions').children('li'), $hSlides, $hPrev, $hNext;

		$('#homeSlider').flexslider({
			animation: 'slide',
			animationLoop: true,
			slideshow: true,
			slideshowSpeed: 7000,
			smoothHeight: false,

			controlsContainer: $('#homeSlider').find('.thumbs'),
			keyboard: true,
			controlNav: false,
			start: function(e){

				$hPrev = $('#homeSlider').find('.flex-prev');
				$hNext = $('#homeSlider').find('.flex-next');
				$hSlides = $('#homeSlider').find('.slides').children('li');

				$hPrev.append('<img src="' + $hSlides.eq(e.count).data('thumb') + '" />');
				$hNext.append('<img src="' + $hSlides.eq(hIndex+2).data('thumb') + '" />');

				$hPrev = $hPrev.find('img');
				$hNext = $hNext.find('img');

			},
			before: function(e){

				$hCap.eq(hIndex).fadeOut(200);

				var prev = hIndex - 1 < 0 ? e.count-1 : hIndex - 1;
				var next = hIndex + 1 > e.count-1 ? 0 : hIndex + 1;

				hIndex = e.data('flexslider').animatingTo;
				$hCap.eq(hIndex).fadeIn(500);

				changeThumbs(prev, next);

			}
		});

		function changeThumbs(prev, next){
			$hPrev.prop('src', $hSlides.eq(prev).data('thumb'));
			$hNext.prop('src', $hSlides.eq(next+2).data('thumb'));
		}

	}

	/*-----------------------------------------
	    	Styled Select for Custom Forms
	 -------------------------------------------*/

	jQuery.fn.styledSelect = function(options) {
		var isFF2 = jQuery.browser.mozilla && jQuery.browser.version.indexOf('1.8.')==0;
		var prefs = {
			coverClass : 'select-replace-cover',
			innerClass : 'select-replace',
			adjustPosition : { top:0, left:0 },
			selectOpacity : 0
			}
		if (options) jQuery.extend(prefs,options);
		return this.each( function() {
			if (isFF2) return false;
			var selElm = jQuery(this);
			selElm.wrap('<span><'+'/span>');
			selElm.after('<span><'+'/span>');
			var selReplace = selElm.next();
			var selCover = selElm.parent();
			selElm.css({
				'opacity':prefs.selectOpacity,
				'visibility':'visible',
				'position':'absolute',
				'top':0,
				'left':0,
				'display':'inline',
				'z-index':1
				});
			selCover.addClass(prefs.coverClass).css({
				'display':'inline-block',
				'position':'relative',
				'top':prefs.adjustPosition.top,
				'left':prefs.adjustPosition.left,
				'z-index':0,
				'vertical-align':'middle',
				'text-align':'left'
				});
			selReplace.addClass(prefs.innerClass).css({
				'display':'block',
				'white-space':'nowrap'
				});

			selElm.bind('change',function() {
				jQuery(this).next().text(this.options[this.selectedIndex].text);
				}).bind('resize',function() {
				jQuery(this).parent().width( jQuery(this).width()+'px' );
				});
			selElm.trigger('change').trigger('resize');
		});
	}

	$('.searchCourse select').styledSelect();

	/*-----------------------------------------
	    	Input Replacement
	 -------------------------------------------*/

	$('input, textarea').each(function(){
	
		if(!$(this).hasClass('submit') && $(this).attr('id') != 'submit' && $(this).attr('id') != 'contactSubmit'){
			$(this).attr('data-value', $(this).val())
				.focus(function(){
					$(this).addClass('focusInput');
					if($(this).val() == $(this).attr('data-value')){
						$(this).val('');
					} else {
						$(this).select();
					}
				})
				.blur(function(){
					$(this).removeClass('focusInput');
					if($(this).val() == ''){
						$(this).val($(this).attr('data-value'));
					}
				});
		}
		
	});

	/*-----------------------------------------
	    	Grayscale pictures effect
	 -------------------------------------------*/

	$('.grayColor').each(function(){
		$(this).append('<img class="overlay" src="' + $(this).children('img').data('color') + '" alt="" />');
	});

	/*-----------------------------------------
	    	Submenus
	 -------------------------------------------*/

	$('#menu').find('ul.clearfix').children('li').hover(function(){
		$(this).find('ul.sub-menu').stop().slideDown(150);
	}, function(){
		$(this).find('ul.sub-menu').stop().slideUp(100);
	});

	/*-----------------------------------------
	    	Contact Form Handler
	 -------------------------------------------*/

	if($('#contact').length > 0){
	
		var $name = $('#contactName');
		var $email = $('#contactMail');
		var $job = $('#contactjob');
		var $telp = $('#contacttelp');
		var $message = $('#contactMessage');
		var $error = $('#contactError');
		var $success = $('#contactSuccess');

		$('#contactSubmit').click(function(){
			
			var ok = true;
			var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;

			if($name.val().length < 3 || $name.val() == $name.data('value')){
				showError($name);
				ok = false;
			}
			/*
			if($email.val() == '' || $email.val() == $email.data('value') || !emailReg.test($email.val())){
				showError($email);
				ok = false;
			}
			*/

			if($job.val().length < 3 || $job.val() == $job.data('value')){
				showError($job);
				ok = false;
			}

			if($telp.val().length < 3 || $telp.val() == $telp.data('value')){
				showError($telp);
				ok = false;
			}
			/*
			if($message.val().length < 5 || $message.val() == $message.data('value')){
				showError($message);
				ok = false;
			}
			*/
			
			function showError($input){
				$input.val($input.data('value'));
				$input.addClass('contactErrorBorder');
				$error.fadeIn();
			}
			
			if(ok){
			
				$('#contact').fadeOut();
					$success.fadeIn();
				
			}
			
			return false;
		
		});
		
		$name.focus(function(){resetError($(this))});
		$email.focus(function(){resetError($(this))});
		$job.focus(function(){resetError($(this))});
		$telp.focus(function(){resetError($(this))});
		$message.focus(function(){resetError($(this))});

		function resetError($input){
			$input.removeClass('contactErrorBorder');
			$error.fadeOut();
		}
	
	}

	/*-----------------------------------------
	    	Toggles & Accordions
	 -------------------------------------------*/

	$('.toggleInfo a').click(function(){
		if(!$(this).hasClass('opened')){
			$(this).addClass('opened');
			$(this).parent().children('div').stop().slideDown(150);
		} else {
			$(this).removeClass('opened');
			$(this).parent().children('div').stop().slideUp(150);
		}
		return false;
	});

	$('.accordion').each(function(){

		$(this).data('tabs', $(this).children('div.box'));
		$(this).data('sel', $($(this).data('tabs')).eq(0));
		$($(this).data('sel')).addClass('opened');
		$($(this).data('sel')).find('.boxInfo').slideDown(0);

		$(this).children('div.box').click(function(){	

			$sel = $($(this).parent().data('sel'));
			$tabs = $($(this).parent().data('tabs'));

			$sel.removeClass('opened');
			$sel.find('.boxInfo').stop().slideUp(150);

			$(this).parent().data('sel', $tabs.eq($(this).index()));
			$sel = $($(this).parent().data('sel'));

			$sel.addClass('opened');
			$sel.find('.boxInfo').slideDown(0);

			return false;

		})

	});

	/*-----------------------------------------
	    	Blog Comments Trick
	 -------------------------------------------*/

	 $('.comment').find('ul li').each(function(){
	 	$(this).parent().parent().children('.first').append('<span class="cline1"></span>');
	 	$(this).append('<span class="cline2"></span>');
	 	if($(this).index() < $(this).parent().children('li').length-1 && $(this).parent().children('li').length > 1)
	 		$(this).append('<span class="cline1 cline3"></span>');
	 });

	/*-----------------------------------------
	    	Posts Rotator Widget
	 -------------------------------------------*/

	 $('.blogPost').find('.tabs').children('li').append('<span class="arrow13"></span>');

	 $selTabsPosts = $('.blogPost').find('.tabs').children('li').eq(0);
	 $selContentPosts = $('.blogPost').find('.content').children('li').eq(0);
	 $contentPosts = $('.blogPost').find('.content').children('li');

	 $('.blogPost').find('.tabs').find('a').click(function(){

	 	$selTabsPosts.removeClass('selected');
	 	$selTabsPosts = $(this).parent();
	 	$selTabsPosts.addClass('selected');

	 	$selContentPosts.stop().fadeOut(150);
	 	$selContentPosts = $contentPosts.eq($selTabsPosts.index());
	 	$selContentPosts.stop().delay(150).fadeIn(200);

	 	return false;

	 });

})(jQuery);