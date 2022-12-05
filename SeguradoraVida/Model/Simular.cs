using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SeguradoraVida.Model
{
    public class Simular
    {
        private string _nome { get; set; }
        private string _dataNascimento { get; set; }
        private string _email { get; set; }
        private string _telefone { get; set; }
        private string _cpf { get; set; }
        private string _sexo { get; set; }
        private string _seguro { get; set; }

        public Simular(string nome, string dataNascimento, string email, string telefone, string cpf, string sexo, string seguro)
        {
            _nome = nome;
            _dataNascimento = dataNascimento;
            _email = email;
            _telefone = telefone;
            _cpf = cpf;
            _sexo = sexo;
            _seguro = seguro;
        }
    }
}