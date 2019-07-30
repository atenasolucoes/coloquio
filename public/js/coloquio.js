$(document).ready(function () {

    function consulta_participante(id) {
        $.ajax({
            url: "/teste",
            method: "GET",
            data: {
                id: id
            },
            beforeSend: function () {
                $('#load').modal('show');
                $('#myModal').find('.modal-body').empty();
            }
        }).done(function (result) {
            $('#myModal').find('.modal-title').text(result['name']);
            if (result['pagamento'] != null) {
                $('#myModal').find('.modal-body').append('<a class="btn btn-block alert-info" href="/storage/pagamento/'+result['pagamento']+'" target="_blank">Comprovante de pagamento enviado</a>'
                );
            } else {
                $('#myModal').find('.modal-body').append(
                    '<p class="text-danger"> Aguardando envio do comprovante de pagamento</p>'
                );
            };
            if (result['vinculo'] != null) {
                $('#myModal').find('.modal-body').append('<a class="btn btn-block alert-info" href="/storage/vinculo/' + result['vinculo'] + '" target="_blank">Comprovante de vinculo enviado</a>'
                );
            } else {
                $('#myModal').find('.modal-body').append(
                    '<p class="text-danger"> Aguardando envio do comprovante de vinculo</p>'
                );
            };
            $('#load').modal('hide');
            $('#myModal').modal('show');
        });

    }

     $(".busca").click(function () {
        consulta_participante($(this).data('id'));
    });



});