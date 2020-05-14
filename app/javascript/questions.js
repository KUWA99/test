textareas.each(function(){
    var textarea = $(this);
           
    textarea.on('input change cut paste drop keyup', function(){
      $(this)
        .height('auto')
        .height(this.scrollHeight);
    });
  });