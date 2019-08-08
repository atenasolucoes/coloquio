<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Lista inscritos</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>

<body class="p-5">
    <h2>Lista de Inscritos {{($_GET['situacao'] == 'confirmada' ? 'Confirmada' : 'Pendentes')}}</h2>
    <button class="float-right" onclick="javascript:window.print();"> Imprimir</button>
    <table class="table table-responsive">
        <thead>
            <tr>
                <th>Nome</th>
                <th>E-mail</th>
                <th>Ocupacação</th>
                <th>Valor da Inscrição</th>
                <th>Situacão</th>
            </tr>
        </thead>
        <tbody id="table">
            @foreach($inscritos as $inscrito)

            <tr>
                <td>{{$inscrito->name}}</td>
                <td>{{$inscrito->email}}</td>

                @if($inscrito->ocupacao == 'professor-uni')
                <td>Professor Universitário</td>
                <td>R$ 40,00</td>
                @elseif($inscrito->ocupacao == 'profissional-educacao')
                <td>Profissinal da educação e de outros setores</td>
                <td>R$ 30,00</td>
                @elseif($inscrito->ocupacao == 'aluno-pos')
                <td>Aluno de Pós-graduação
                </td>
                <td>R$ 20,00</td>
                @elseif($inscrito->ocupacao == 'aluno-graduacao')
                <td>Aluno de graduação </td>
                <td>R$ 10,00</td>
                @endif
                <td>{{$inscrito->situacao}}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>

</html>