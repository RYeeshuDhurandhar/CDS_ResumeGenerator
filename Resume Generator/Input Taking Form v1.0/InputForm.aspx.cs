using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using System.Configuration;

namespace RG
{
    public partial class InputForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-RSF4LA7\SQLEXPRESS;Initial Catalog=CDSdb;Integrated Security=True");


        protected void addField(object sender, EventArgs e)
        {

        }

        protected void submitClick(object sender, EventArgs e)
        {
            int rollNo = Convert.ToInt32(txtRollNo.Text);
            string typeOfResume = txtTypeOfResume.Text;
            string degree = txtDegree3.Text;
            string institute = txtInstitute3.Text;
            int cpi = Convert.ToInt32(txtCpi3.Text);
            string yearFrom = txtYear3From.Text;
            string yearTo = txtYear3To.Text;

            string cs = "Data Source=DESKTOP-RSF4LA7\\SQLEXPRESS; Database=CDSdb;Integrated Security=True";
            SqlConnection con = new SqlConnection(cs);
            string query = string.Format("insert into Education values({0},'{1}','{2}','{3}',{4},'{5}','{6}')",
                rollNo, typeOfResume, degree, institute, cpi, yearFrom, yearTo);
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();  // to execute insert, delete and update commands
            con.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "alert('Record Inserted')", true);  // to display record is submitted

            txtRollNo.Text = "";       // to empty the box after submission
            txtTypeOfResume.Text = "";
            txtDegree3.Text = "";
            txtInstitute3.Text = "";
            txtCpi3.Text = "";
            txtYear3From.Text = "";
            txtYear3To.Text = "";
        }
    }
}

// cmd.CommandText = "insert into Heading values('"++"','"++"','"++"','"++"')";
/* con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Education values('"+ roll_no.Text + "','" + typeOfResume.Text + "','" + degree3.Text+"','"+institute3.Text + "','"+cpi3.Text + "','"+ year3_from.Text + "','" + year3_to.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
*/