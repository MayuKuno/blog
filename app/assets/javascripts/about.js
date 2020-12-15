$(function(){
  $(window).on('scroll',function (){
    let triggerClass = $('.bar');       //トリガーとなるクラス
        animateClass = ('about__bottom__skills__container__skill__graph__bar');
    let trigger2Class = $('.score');       //トリガーとなるクラス
        animate2Class = ('about__bottom__skills__languages__language__description__graph__bar');
 
    $(triggerClass).each(function(){
      let scroll       = $(window).scrollTop(), //スクロール位置を取得
          triggerTop   = $(this).offset().top,  //指定要素のY座標
          windowHeight = $(window).height();    //ウィンドウの高さ
      if (scroll > triggerTop - windowHeight){
        $(this).addClass(animateClass);
      }
    });

    $(trigger2Class).each(function(){
      let scroll       = $(window).scrollTop(), //スクロール位置を取得
          triggerTop   = $(this).offset().top,  //指定要素のY座標
          windowHeight = $(window).height();    //ウィンドウの高さ
      if (scroll > triggerTop - windowHeight){
        $(this).addClass(animate2Class);
      }
    });

  });
 });
