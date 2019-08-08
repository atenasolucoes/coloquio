<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12 text-center">
            <h3>Painel Administrativo</h3>
        </div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Lista de Inscritos ({{count($inscritos)}} inscritos)
                    <input id="myInput" type="text" class="float-right" placeholder="Busca...">
                </div>

                <div class="card-body">
                    <div class="">
                        <form method="get" action="{{route('lista')}}" target="_blank">
                            @csrf
                            <label for="">Imprimir</label>
                            <select name="situacao" id="" required>
                                <option value="">---------</option>
                                <option value="confirmada"> Inscritos Confirmados</option>
                                <option value="pendente"> Inscritos Pendentes</option>
                            </select>
                            <button class="btn btn-sm">Enviar</button>
                        </form>
                    </div>
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
                    <table class="table table-responsive">
                        <thead>
                            <tr>
                                <th>Nome</th>
                                <th>E-mail</th>
                                <th>Ocupacação</th>
                                <th>Valor da Inscrição</th>
                                <th>Situacão</th>
                                <th>Ações</th>
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
                                <td>
                                    <button id="detalhes" data-id="{{$inscrito->id}}" class="busca btn btn-info">Ver mais</button>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="card">
                <div class="card-header">Menu</div>

                <div id="div1" class="card-body">
                    <p><a href="#" data-target="#register" data-toggle="modal">Inscrever participante</a></p>
                    <p><a href="">Inscrição de atividades</a></p>
                    <p><a href="">Administração Site</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title"></h4>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">

                <div id="comp" class="comprovantes">

                </div>
                <div class="p-5">
                    <button id="button-confirmar" data-toggle="modal" data-target="#confirmacao" class="btn btn-block btn-success">Confirmar Inscrição</button>
                </div>

            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
            </div>

        </div>
    </div>
</div>
<div class="modal fade" id="load">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <h4 class="modal-title">Carregando...</h4>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">

            </div>

        </div>
    </div>
</div>
<div class="modal fade" id="confirmacao">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">

                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <form id="form-confirmacao" method="get" action="{{route('confirmacao')}}">
                    <h3>Deseja confirmar essa ação?</h3>
                    <input type="hidden" value="" id="input-id" name="id">
                    <button class="btn btn-block btn-success">Confirmar</button>
                </form>
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">

            </div>

        </div>
    </div>
</div>



<div class="modal fade" id="register">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h3>Inscrição de participante</h3>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                @include('auth.form-register')
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">

            </div>

        </div>
    </div>
</div>

<script src="{{ asset('js/coloquio.js') }}" defer></script>