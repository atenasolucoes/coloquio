<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12 text-center">
            <h3>Painel Administrativo</h3>
        </div>
        <div class="col-md-10">
            <div class="card">
                <div class="card-header">Lista de Inscritos</div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif
                    <table class="table table-responsive">
                        <tr>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Ocupacação</th>
                            <th>Valor da Inscrição</th>
                            <th>Situacão</th>
                            <th>Ações</th>
                        </tr>

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
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-2">
            <div class="card">
                <div class="card-header">Menu</div>

                <div id="div1" class="card-body">

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
                
                <div class="comprovantes">

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

<script src="{{ asset('js/coloquio.js') }}" defer></script>