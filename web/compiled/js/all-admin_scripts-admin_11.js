$(function() {
    if ($('textarea.tinymce').length > 0) {
        tinymce.init({
            selector: 'textarea.tinymce'
        });
    }
    if (navigator.userAgent.indexOf('Chrome') != -1) {
        $('input[type=date]').on('click', function(event) {
            if (!$(this).hasClass('webkit-cal')) {
                event.preventDefault();
            }
        });
    }
    $("button[bs-data-action='remove-entity']").on('click', function(e) {
        if (!confirm("Удалить запись?")) {
            e.preventDefault();
            return false;
        }
    });

    $('select').select2();
});