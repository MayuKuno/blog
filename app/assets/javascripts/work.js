$(function(){
  $('.work__contents__tab-contents>div').hide();
  $('.work__contents__tab-contents>div').first().slideDown();
    $('.work__contents__tabs__tab-buttons span').click(function(){
      var thisclass=$(this).attr('class');
      $('#lamp').removeClass().addClass('#lamp').addClass(thisclass);
      $('.work__contents__tab-contents>div').each(function(){
        if($(this).hasClass(thisclass)){
          $(this).stop(true).fadeIn(800);
        }
        else{
          $(this).hide();
        }
      });
    });
  });
