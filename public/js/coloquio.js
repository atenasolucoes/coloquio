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
            $('#load').modal('hide');
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

            if (result['pagamento'] && result['vinculo']) {
                $('#myModal').find('.modal-body').append(
                    '<hr><p class="text-dark"> Deseja confirmar esse pagamento?</p>'+
                    '<button class="confirma btn btn-success" data-id="'+result['id']+'">Sim</button> '+
                    '<button class="btn btn-danger" data-dismiss="modal" >Não</button>'
                );
            }

            $('#myModal').modal('show');
        });

    }

    function confirmacao(id) {
        $.ajax({
            url: "/confirmacao",
            method: "GET",
            data: {
                id: id
            },
            beforeSend: function () {
                $('#myModal').modal('hide');
                $('#load').modal('show');
            }
        }).done(function (result) {
            $('.table').load('/home');
            $('#load').modal('hide');
        });
    }


    $(".busca").click(function () {
        consulta_participante($(this).data('id'));
    });

    $(".confirma").click(function () {
        confirmacao($(this).data('id'));
    });


});