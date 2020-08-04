$(function(){
  function buildHTML(message){
    let html =  `<div class="Message__message-box__message-anser">
                <div class="Message__message-box__message-anser__anser-box">
                <div class="Message__message-box__message-anser__anser-box__anser-name">
                ${message.name}
                </div>
                <div class="Message__message-box__message-anser__anser-box__anser-age">
                ${message.age}
                </div>
                </div>
                <div class="Message__message-box__message-anser__anser-text">
                ${message.text}
                </div>
                <form class="button_to" method="post" action="${}"><input type="submit" value="いいね">
                <input type="hidden" name="authenticity_token" value="${}">
                </form>
                0
                </div>`
    return html;
  }
  $('.Form').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.Message__message-box').append(html);
      $('form')[0].reset();
      // $('.Side__side-box__side-content__side-tag__side-name').val('');
      // $('.side-control').val('');
      // $('.Side__side-box__side-content__side-text').val('');
      // $('.Side__side-box__side-content__side-send').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
})