<?php

namespace coloquio\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use coloquio\User;

class ConfirmUser extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

     public $user;
    public function __construct( User $user)
    {
        $this->user = $user;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('coloquio@uneb')
        ->subject('Confirmação De inscrição')
            ->view('emails.confirmacao')
            ->with([
                'user' => $this->user,
                'pathToFile' => public_path('images/logo.png'),
            ]);
    }
}
