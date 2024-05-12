<?php

namespace App\Mail\Frontend\Contacts;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class UserMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $adminMail;
    public $event;
    public function __construct( $event,$adminMail)
    {
        $this->adminMail =$adminMail; 
        $this->event= $event;
        
        
    }

    /**
     * Get the message envelope.
     *
     * @return \Illuminate\Mail\Mailables\Envelope
     */
     
    public function envelope()
    {
        return new Envelope(
            subject: 'Thanks For Contact Us',
        );
    }

    /**
     * Get the message content definition.
     *
     * @return \Illuminate\Mail\Mailables\Content
     */
    public function content()
    {
        return new Content(
            view: 'mail.frontend.userMessage',
        );
    }

    /**
     * Get the attachments for the message.
     *
     * @return array
     */
    public function attachments()
    {
        return [];
    }
    public function build()
    {
            return $this->subject($this->event['message'])->from($this->adminMail,config('mail.from.name'))->markdown('mail.frontend.userMessage');
    }
}