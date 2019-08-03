<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         DB::table('atividades')->insert([
            'descricao' => 'Laboratório INTEREURISLAND experiência na sala de aula de Relações Interpessoais e dinâmicas de grupo PhD Nicola Andrian (UNEB) - (número máximo de inscritos 60) ',
            'vagas' => 60,
        ]);
       DB::table('atividades')->insert([
            'descricao' => ' - Visitas na Comunidade Projetos de extensão e de educação contextualizada (Atividade de extensão) - (número máximo de inscritos 40)',
            'vagas' => 40,
        ]);
        DB::table('users')->insert([
            'name' => 'Atena Agencia',
            'email' => 'suporte@atenaagencia.com',
            'ocupacao' => 'administrador',
            'tipo'=>'admin',
            'password' => bcrypt('01072015')
        ]);
        DB::table('users')->insert([
            'name' => 'Coloquio Brasil-Itália',
            'email' => 'coloquio@suporte',
            'ocupacao' => 'administrador',
            'tipo' => 'admin',
            'password' => bcrypt('coloquio2019')
        ]); // $this->call(UsersTableSeeder::class);
    }
}
