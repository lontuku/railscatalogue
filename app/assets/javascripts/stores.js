$(document).on('turbolinks:load', function () {
    $('.btn-change-state').click(function(){
        const btn = $(this)
        let storeId = btn.data('id')

        $.ajax({
            url: `/stores/${storeId}/toggle_state`,
            type: 'PATCH',
            beforeSend: function (xhr) { xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')) }
        })
        .done(function (success) {
            btn.text((success).btnText)

        })
        .fail(function (error) {
            console.error(error);
        });
        
    })    
})