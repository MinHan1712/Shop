$('#mainProduct .product-content .font-medium .custom-select').click(function () {
    if ($(this).children('.select-items').attr('class').indexOf('hidden') != -1) {
        $(this).children('.select-items').removeClass('hidden');
    }
    else {
        $(this).children('.select-items').addClass('hidden');
    }

});


$('.page-pagination p').click(function () {
    console.log($(this).attr('data-page'));
    var pag = $(this).attr('data-page');
    var idlsp = $(this).attr('data-idlsp');
    var data = {
        page: parseInt(pag) + 1,
        id: parseInt(idlsp) == NaN ? -1 : parseInt(idlsp);
    }
    console.log(data.page, data.id);
    $.ajax({
        url: "/Product/Page",
        type: "POST",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "html",
        success: function (response) {
            console.log(response);
            $('#mainProduct .product-list .row').append(response);
            var pag = $(this).attr({'data-page' : Number(pag) + 1});
        },
        error: function () {

        }
    });
})

$('.product-toolbar .font-medium .select-items .select_item').click(function () {
    var idlsp = $('#mainProduct #product_idlsp').attr('data-id');
    var dataToolbarSorting = $(this).parents('.font-medium').attr('data-toolbar-sorting');
    if (dataToolbarSorting == "Featured") {
        $('.product-toolbar .font-medium .select-items .select_item').removeClass('same-as-selected');
        $(this).addClass('same-as-selected')
        var data = {
            name: $(this).attr('data-value'),
            idlsp: parseInt(idlsp)
        }
        console.log(data);
        $.ajax({
            url: "/Product/FeaturedSort",
            type: "POST",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                console.log(response);
            },
            error: function () {

            }
        });
    }
})