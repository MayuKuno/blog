$(function() {
  marked.setOptions({
    // code要素にdefaultで付くlangage-を削除
    langPrefix: '',
    // highlightjsを使用したハイライト処理を追加
    highlight: function (code, lang) {
      return hljs.highlightAuto(code, [lang]).value
    }
  });

  
  $("#editor textarea").each(function () {
    $(this).bind('keyup', replaceMarkdown(this));
  });
  function replaceMarkdown(elm) {
    var v, old = elm.value;
    return function () {
      if (old != (v = elm.value)) {
      old = v;
      str = $(this).val();
      $("#marked-area").html(marked(str));
      }
    }
  }
});


