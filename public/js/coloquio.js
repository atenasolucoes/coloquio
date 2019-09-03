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
                $('#myModal').find('#comp').empty();
            }
        }).done(function (result) {
            $('#load').modal('hide');
            $('#button-confirmar').hide();
            $('#myModal').find('.modal-title').text(result['name']);
            if (result['pagamento'] != null) {
                $('#myModal').find('#comp').append('<a class="btn btn-block alert-info" href="/storage/pagamento/'+result['pagamento']+'" target="_blank">Comprovante de pagamento enviado</a>'
                );
            } else {
                $('#myModal').find('#comp').append(
                    '<p class="text-danger"> Aguardando envio do comprovante de pagamento</p>'
                );
            };
            if (result['vinculo'] != null) {
                $('#myModal').find('#comp').append('<a class="btn btn-block alert-info" href="/storage/vinculo/' + result['vinculo'] + '" target="_blank">Comprovante de vinculo enviado</a>'
                );
            } else {
                $('#myModal').find('#comp').append(
                    '<p class="text-danger"> Aguardando envio do comprovante de vinculo</p>'
                );
            };
            if ((result['vinculo'] = 'presencial') && (result['pagamento'] == 'presencial') && (result['situacao'] == 'confirmada')) {
                $('#myModal').find('#comp').empty();
                $('#myModal').find('#comp').append(
                    '<p class="text-primary"> Comprovantes apresentados presencialmente</p>'
                );
            };
<<<<<<< HEAD
            if (result['situacao'] != 'confirmada') {
=======
            if ((result['vinculo'] != null) && (result['pagamento'] !=null)) {
>>>>>>> 1e1f51732b04a5a82495045d5a202587d91054a9
                $('#button-confirmar').show();
                $('#form-confirmacao').find('#input-id').val(id);
            };

            $('#myModal').modal('show');
        });

    }

     $(".busca").click(function () {
        consulta_participante($(this).data('id'));
    });

    $("#myInput").on("keyup", function () {
        var value = $(this).val().toLowerCase();
        $("#table tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });



});