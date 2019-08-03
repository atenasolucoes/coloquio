<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">Participação das Atividades</div>

                <div class="card-body">
                    <p>

                        Atividade 1 - Laboratório INTEREURISLAND experiência na sala de aula de Relações Interpessoais e dinâmicas de grupo PhD Nicola Andrian (UNEB) - (número máximo de inscritos 60) <br> <br>
                        Atividade 2 - Visitas na Comunidade Projetos de extensão e de educação contextualizada (Atividade de extensão) - (número máximo de inscritos 40)
                    </p>
                    @if(Auth::user()->situacao != 'confirmada')
                    <p class="text-danger"> Você só pode se inscrever nas atividades, após confirmação de pagamento</p>
                    @else
                    <form action="">
                        <select name="" id="" class="form-control">
                            <option value="">------</option>
                            @foreach($atividades->all() as $atividade)
                            <option value="{{$atividade->id}}"> Atividade {{$atividade->id}}</option>
                            @endforeach
                        </select> <br>
                        <button class="btn btn-block btn-success">Quero Participar</button>
                    </form>
                    @endif

                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Minha Inscrição</div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    <table class="table">
                        <tr>
                            <th>Nome</th>
                            <th>E-mail</th>
                            <th>Ocupacação</th>
                            <th>Valor da Inscrição</th>
                            <th>Situacão</th>
                        </tr>
                        <tr>
                            <td>{{Auth::user()->name}}</td>
                            <td>{{Auth::user()->email}}</td>

                            @if(Auth::user()->ocupacao == 'professor-uni')
                            <td>Professor Universitário</td>
                            <td>R$ 40,00</td>
                            @elseif(Auth::user()->ocupacao == 'profissional-educacao')
                            <td>Profissinal da educação e de outros setores</td>
                            <td>R$ 30,00</td>
                            @elseif(Auth::user()->ocupacao == 'aluno-pos')
                            <td>Aluno de Pós-graduação
                            </td>
                            <td>R$ 20,00</td>
                            @elseif(Auth::user()->ocupacao == 'aluno-graduacao')
                            <td>Aluno de graduação </td>
                            <td>R$ 10,00</td>
                            @endif
                            <td>{{Auth::user()->situacao}}
                            </td>
                        </tr>
                    </table>
                    @if(!empty(old('error')))
                    <div class="alert alert-{{old('type_alert')}}">
                        <p>
                            <h4>{{old('error')}}</h4>
                        </p>
                    </div>
                    @endif
                    @if(!empty(old('success')))
                    <div class="alert alert-{{old('type_alert')}}">
                        <p>
                            <h4>{{old('success')}}</h4>
                        </p>
                    </div>
                    @endif
                    <hr>
                    @if(Auth::user()->pagamento == null)
                    <form action="{{route('upPagamento')}}" method="post" enctype="multipart/form-data" class="form-inline">
                        @csrf
                        <label class="font-weight-bold" for="">Anexar comprovante de pagamento: </label>
                        <input type="file" name="pagamento" id="" class="form-control" required>
                        <button class="btn btn-block btn-outline-primary mt-2">Enviar comprovante de pagamento</button>
                    </form>
                    @elseif(Auth::user()->pagamento != 'presencial')
                    <a class="btn btn-block alert-info" href="/storage/pagamento/{{Auth::user()->pagamento}}" target="_blank">Comprovante de pagamento enviado</a>
                    @endif
                    @if(Auth::user()->vinculo == null)
                    <form action="{{route('upVinculo')}}" method="post" enctype="multipart/form-data" class="form-inline mt-5">
                        @csrf
                        <label class="font-weight-bold" for="">Anexar contra-cheque ou comprovante de vinculo: </label>
                        <input type="file" name="vinculo" id="" class="form-control" required>
                        <button class="btn btn-block btn-outline-primary mt-2">Enviar contra-cheque ou comprovante de vinculo</button>
                    </form>
                    @elseif(Auth::user()->vinculo != 'presencial')
                    <a class="btn btn-block alert-info" href="/storage/vinculo/{{Auth::user()->vinculo}}" target="_blank">Comprovante de vinculo enviado</a>
                    @endif
                    @if(Auth::user()->pagamento == 'presencial' && Auth::user()->vinculo = 'presencial')
                    <button class="btn btn-block btn-primary mt-2">Comprovantes apresentados presencialmente</button>
                    @endif
                    <hr>
                    @if(Auth::user()->pagamento != null && Auth::user()->vinculo != null)
                    <h4>Ativadades extras</h4>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>