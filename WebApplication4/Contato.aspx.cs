using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TratamentoExcecoes;

namespace WebApplication4
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            //1.validar os dados de entrada
            if (Nome.Text.Trim() == "")
            {
                Alerta.Text = "Digite seu nome";
            }
            else if (Email.Text.Trim() == "")
            {
                Alerta.Text = "Digite seu e-mail";
            }
            else if (Mensagem.Text.Trim() == "")
            {
                Alerta.Text = "Digite a mensagem";
            }
            else
            {
                
                try
                {
                    //2. montar o email
                    
                    //Cria uma instância da classe 
                    MailMessage mail = new MailMessage();

                    mail.To.Add("contato@seudominio.com.br");

                    MailAddress from = new MailAddress
                        ("contato@seudominio.com.br");

                    mail.From = from;

                    mail.Subject = "E-mail enviado pela página de contato";

                    mail.Body = "Nome: " + Nome.Text.Trim() + "\n E-mail: " + Email.Text.Trim() + "\n Mensagem: " + Mensagem.Text;

                    mail.Priority = MailPriority.Normal;

                    mail.IsBodyHtml = false;

                    // 3. Envia o e-mail

                    SmtpClient smtp = new SmtpClient();

                    smtp.Host= "seudominio.com.br";
                    smtp.Credentials = new System.Net.NetworkCredential("contato@gmail.com.br", "suasenha");
                    smtp.Send(mail);

                    Nome.Text = "";
                    Email.Text = "";
                    Mensagem.Text = "";

                    Alerta.Text = "Seu E-mail foi enviado com sucesso!";

                }
                catch (Exception ex)
                {
                    Alerta.Text = "Houve uma falha ao enviar o E-mail" + ex.Message;
                    
                    // 1. Criar uma instância da classe Excecoes

                    Excecoes exc = new Excecoes();
                    exc.Salvar(ex);
                }
            }
        }
    }
}