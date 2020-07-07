$(function(){
  if(document.URL.match(/\/end_users\/items\/new/)) {
    $(document).on('change', '#item_image_confirm',function(e) {
      e.preventDefault();
      var formData = new FormData();
      formData.append("image",$('#item_image_confirm')[0].files[0]);
      $.ajax({
        type:'POST',
        url: '/end_users/items/upload',
        data: formData,
        dataType:'json',
        processData: false,
        contentType: false
      })

      // doneは読み込み成功
      .done(function(data){
        // confirmでyes/noで分岐
        var result = confirm(`画像を読み込みました。 エネルギー:${data.data.nutrients_calorie}kcal, たんぱく質:${data.data.nutrients_protein}g, 脂質:${data.data.nutrients_lipid}g, 炭水化物:${data.data.nutrients_carbohydrate}g, 食塩相当量:${data.data.nutrients_salt}g で入力しますか？`)
        if( result ) {
          $('#item_nutrients_calorie').val(data.data.nutrients_calorie)
          $('#item_nutrients_protein').val(data.data.nutrients_protein)
          $('#item_nutrients_lipid').val(data.data.nutrients_lipid)
          $('#item_nutrients_carbohydrate').val(data.data.nutrients_carbohydrate)
          $('#item_nutrients_salt').val(data.data.nutrients_salt)
        }
      })
      // failは読み込み失敗
      .fail(function(){
        alert('画像の読み込みに失敗しました')
      })
    })
  }
})
