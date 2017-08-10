$(function() {
    var picker = new Pikaday({ field: $('#published_date')[0] });
    var picker2 = new Pikaday({ field: $('#since_date')[0] });
    var picker3 = new Pikaday({ field: $('#until_date')[0] });
})

$('#document_topics').chosen();
