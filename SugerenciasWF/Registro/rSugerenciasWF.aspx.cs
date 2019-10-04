using BLL;
using DAL;
using Entity;
using Restauran.Utilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SugerenciasWF.Registro
{
    public partial class rSugerenciasWF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBoxFecha.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }

        public void LimpiarObjetos()
        {
            TextBoxId.Text = string.Empty;
            TextBoxFecha.Text = DateTime.Now.ToString("yyyy-MM-dd");
            TextBoxDescripcion.Text = string.Empty;
        }

        public Sugerencias LLenaClase()
        {
            Sugerencias sugerencias = new Sugerencias();
            sugerencias.SugerenciaId = Utils.ToInt(TextBoxId.Text);
            sugerencias.Fecha = Utils.ToDateTime(TextBoxFecha.Text);
            sugerencias.Descripcion = TextBoxDescripcion.Text;

            return sugerencias;

        }

        public void LLenaCampo(Sugerencias sugerencias)
        {
            TextBoxId.Text = sugerencias.SugerenciaId.ToString();
            TextBoxFecha.Text = sugerencias.Fecha.ToString();
            TextBoxDescripcion.Text = sugerencias.Descripcion.ToString();

        }
        protected void Limpiar_Click(object sender, EventArgs e)
        {
            LimpiarObjetos();

        }

        protected void Guardar_Click(object sender, EventArgs e)
        {
            RepositorioBase<Sugerencias> repositorio = new RepositorioBase<Sugerencias>(new Contexto());
            Sugerencias sugerencias = new Sugerencias();
            bool paso = false;
            sugerencias = LLenaClase();
            if (Convert.ToInt32(TextBoxId.Text) == 0)
            {
                repositorio.Guardar(sugerencias);
            }
            else
            {
                if (repositorio != null)
                {
                    paso = repositorio.Modificar(sugerencias);
                }
                else
                {
                    Response.Write("<script>alert('Error');</script>");
                }
                paso = repositorio.Modificar(sugerencias);

            }
            if (paso)
            {
                LimpiarObjetos();

            }
            else
            {
                Response.Write("<script>alert('Error');</script>");

            }

        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            RepositorioBase<Sugerencias> repositorio = new RepositorioBase<Sugerencias>(new Contexto());
            repositorio.Eliminar(Convert.ToInt32(TextBoxId.Text));

        }

     

        protected void Buscar_Click(object sender, EventArgs e)
        {
            RepositorioBase<Sugerencias> repositorio = new RepositorioBase<Sugerencias>(new Contexto());
            var buscar = repositorio.Buscar(Utils.ToInt(TextBoxId.Text));
            if (buscar != null)
            {
                LLenaCampo(buscar);

            }
            else
            {

            }

        }
    }
}