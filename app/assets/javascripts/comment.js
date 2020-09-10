$(function(){
  function buildHTML(message){
    let html =  `<div class="Message__message-box">
                <div class="Message__message-box__message-answer">
                <div class="Message__message-box__message-answer__answer-box">
                <div class="Message__message-box__message-answer__answer-box__answer-name">
                ${message.name}
                </div>
                <div class="Message__message-box__message-answer__answer-box__answer-age">
                ${message.age}
                </div>
                </div>
                <div class="Message__message-box__message-answer__answer-text">
                ${message.text}
                </div>
                <form class="button_to" method="post" action="/comments/${message.comment_id}/messages/${message.id}/likes"><input type="submit" value="ありがとう">
                <input type="hidden" name="authenticity_token" value="eTSCwZM+ZHARUBYmcy8okoJN55gHb/xiOvJOKOLhGDhqoTUf0cdljY0JGuRbCubswCCTPB6WpVmR9mjla8DU2g==">
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
      $('.Form')[0].reset();
      $('input').prop('disabled', false)
      // $('.Side__side-box__side-content__side-tag__side-name').val('');
      // $('.side-control').val('');
      // $('.Side__side-box__side-content__side-text').val('');
      // $('.Side__side-box__side-content__side-send').prop('disabled', false);
    })
    .fail(function(){
      alert('error');
    })
  })
  $('.move-page-top').click(
    function()
    {
      $('html,body').animate( {scrollTop:0} , 'slow' );
    });
})
$(function() {
  $('#adult-btn').on('click', function(){
    window.alert('実装中');
    });
})