FormReview = function () {
    n = this;
    n.sao = 0;
    n.TitleText = '';
    n.Text = '';
    n.IdSp = 0;

    n.setRating = function (obj) {
        n.sao = obj.getAttribute("data-value");
    }
    n.submitForm = function (obj) {

        var par = obj.p
        n.TitleText = obj.querySelector('input[name="TitleText"]').value;
        n.Text = obj.querySelector('textarea[name="Text"]').value;
        n.IdSp = obj.querySelector('input[name="product_id"]').value;
        var data = {
            TitleText: n.TitleText,
            Text: n.Text,
            IdSp: n.IdSp,
            sao: n.sao
        }

        $.ajax({
            url: "/ProductItem/Write",
            type: "POST",
            data: JSON.stringify(data),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                console.log(response);
                if (response.length > 0) {
                    var html = '';
                    html = `<div class="pr-review" id="pr-review-${response.idbl}">
                         <div class="pr-review-header">
                              <span class="pr-starratings pr-review-header-starratings" aria-label="@pr.sao of 5 stars" role="img">`;
                    for (var i = 0; i < Number(n.sao); i++) {
                        html += `<i class="pr-icon pr-icon-star" aria-hidden="true">1</i>`;
                    }

                    html += `</span >
                                <h3 class="pr-review-header-title">${n.TitleText}</h3>
                                <span class="pr-review-header-byline"><strong>${response.TenKh ? response.TenKh : ''}</strong> on <strong>${response.ngay ? response.ngay : ''}</strong></span>
                          </div >
                    <div class="pr-review-content">
                        <p class="pr-review-content-body">${n.Text}</p>
                    </div>
                      </div >`;
                    $('#reviews_' + n.IdSp).prepend(html);
                    console.log($('#reviews_' + n.IdSp));
                    obj.querySelector('input[name="TitleText"]').setAttribute('value', '');
                    obj.querySelector('textarea[name="Text"]').setAttribute('value', '');
                    $('#form_' + n.IdSp).css({ "display": 'none' })
                }
            }
        });
    }
    n.toggleForm = function (obj) {
        $('#form_' + obj).css("display") == "block" ? $('#form_' + obj).css({ "display": 'none' }) : $('#form_' + obj).css({ "display": 'block' })
    }
}

var Fr = new FormReview();