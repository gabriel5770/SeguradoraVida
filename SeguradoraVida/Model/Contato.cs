using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SeguradoraVida.Model
{
    public class Contato
    {
        private string _nome { get; set; }
        private string _email { get; set; }
        private string _celular { get; set; }
        private string _mensagem { get; set; }

        public Contato(string nome, string email, string celular, string mensagem)
        {
            _nome = nome;
            _email = email;
            _celular = celular;
            _mensagem = mensagem;
        }


    }
}