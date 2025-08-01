using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TratamentoExcecoes;

namespace WebApplication4
{
    public partial class ExibirLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Excecoes exc = new Excecoes();
            Log.Text = exc.Ler();
            Limpar.Visible = true;

        }

        protected void Limpar_Click(object sender, EventArgs e)
        {
            Excecoes exc = new Excecoes();
            exc.Limpar();
            Limpar.Visible = false;
            Log.Text = "";
           
        }
    }
}