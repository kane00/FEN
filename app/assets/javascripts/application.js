// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require autocomplete-rails
//= require activestorage
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets





// もっと見るボタン
$(function() {
  // 表示させる要素の総数をlengthメソッドで取得
  var $numberListLen = $("#number_list tr").length;
  // デフォルトの表示数
  var defaultNum = 6;
  // ボタンクリックで追加表示させる数
  var addNum = 10;
  // 現在の表示数
  var currentNum = 0;

  $("#number_list").each(function() {
    // moreボタンを表示し、closeボタンを隠す
    $(this).find("#more_btn").show();
    $(this).find("#close_btn").hide();

    // defaultNumの数だけ要素を表示
    // defaultNumよりインデックスが大きい要素は隠す
    $(this).find("tr:not(:lt("+defaultNum+"))").hide();

    // 初期表示ではデフォルト値が現在の表示数となる
    currentNum = defaultNum;

    // moreボタンがクリックされた時の処理
    $("#more_btn").click(function() {
      // 現在の表示数に追加表示数を加えていく
      currentNum += addNum;

      // 現在の表示数に追加表示数を加えた数の要素を表示する
      $(this).parent().find("tr:lt("+currentNum+")").slideDown();

      // 表示数の総数よりcurrentNumが多い=全て表示された時の処理
      if($numberListLen <= currentNum) {
        // 現在の表示数をデフォルト表示数へ戻す
        currentNum = defaultNum;
        // インデックス用の値をセット
        indexNum = currentNum - 1;

        // moreボタンを隠し、closeボタンを表示する
        $("#more_btn").hide();
        $("#close_btn").show();

        // closeボタンがクリックされた時の処理
        $("#close_btn").click(function() {
          // デフォルト数以降=インデックスがindexNumより多い要素は非表示にする
          $(this).parent().find("tr:gt("+indexNum+")").slideUp();

          // closeボタンを隠し、moreボタンを表示する
          $(this).hide();
          $("#more_btn").show();
        });
      }
    });
  });
});

$(function(){
  // inputのidから情報の取得
  $('#item_image').on('change', function (e) {
    // ここから既存の画像のurlの取得
    var reader = new FileReader();
    reader.onload = function (e) {
        $(".image").attr('src', e.target.result);
    }
    // ここまで
    reader.readAsDataURL(e.target.files[0]); //取得したurlにアップロード画像のurlを挿入
  });
});






