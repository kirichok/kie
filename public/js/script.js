$(document).ready(function($) {
    $(".row-table").click(function() {
        window.document.location = $(this).data("href");
    });
});