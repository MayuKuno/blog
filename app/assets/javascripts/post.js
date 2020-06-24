$(document).ready(function(){
                           

  //----------Select the first tab and div by default
  
  $('#vertical_tab_nav > ul > li > a').eq(0).addClass( "selected" );
  $('section > article').eq(0).css('display','block');


  //---------- This assigns an onclick event to each tab link("a" tag) and passes a parameter to the showHideTab() function
          
      $('#vertical_tab_nav > ul').click(function(e){
          
    if($(e.target).is("a")){
    
      /*Handle Tab Nav*/
      $('#vertical_tab_nav > ul > li > a').removeClass( "selected");
      $(e.target).addClass( "selected");
      
      /*Handles Tab Content*/
      var clicked_index = $("a",this).index(e.target);
      $('section > article').css('display','none');
      $('section > article').eq(clicked_index).fadeIn();
      
    }
    
      $(this).blur();
      return false;
    
      });
      
   
});//end ready


$(function() {
  function readURL(input) {
      if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
  $('#img_prev').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
      }
  }
  $(".adminnew_contents__form__images__image__file").change(function(){
      readURL(this);
  });
});