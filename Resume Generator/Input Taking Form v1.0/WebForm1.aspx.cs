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

namespace RG
{
    public partial class WebForm1 : System.Web.UI.Page
    {
     /*
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    */
        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Resume.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10, 10, 0, 0);    // margins given
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
     
        
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

        public string myemail, myphone, myname, myprogram, mydepartment, mydegree1, myinstitution1, myCPI1, myyear1, myproject1heading, myproject1point1, myproject1point2, myproject1point3;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=KANISHK-ASUS\SQLEXPRESS;Initial Catalog=CDS_RG;Integrated Security=True";  //
            //con.ConnectionString = @"Data Source=DESKTOP-RSF4LA7\SQLEXPRESS;Initial Catalog=CDSdb;Integrated Security=True";  //
            con.Open();
            cmd.CommandText = "SELECT * FROM BasicDet";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                myname = rd["name"].ToString();
                myprogram = rd["program"].ToString();
                myphone = rd["phone"].ToString();
                myemail = rd["Email"].ToString();
                mydepartment = rd["department"].ToString();
                /*
                mydegree1 = rd["degree1"].ToString();
                myinstitution1 = rd["institution1"].ToString();
                myCPI1 = rd["CPI1"].ToString();
                myyear1 = rd["year1"].ToString();
                myproject1heading = rd["project1heading"].ToString();
                myproject1point1 = rd["project1point1"].ToString();
                myproject1point2 = rd["project1point2"].ToString();
                myproject1point3 = rd["project1point3"].ToString();*/
            }
            this.DataBind();
        }


        /*
        String mycon = "Data Source=DESKTOP-RSF4LA7SQL\\EXPRESS; Initial Catalog=CDSdb; Integrated Security=True";
        String myquery = "Select * from Table_1";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);


        name.Text = ds.Tables[0].Rows[0]["Name"].ToString();
        program.Text = ds.Tables[0].Rows[0]["Roll Number"].ToString();
        department.Text = ds.Tables[0].Rows[0]["Department"].ToString();


        con.Close();
        */

            }

            /*
             class Program
            {
                static void Main(string[] args)
                {
                    string cs = "data source = DESKTOP-RSF4LA7\\SQLEXPRESS; database = CDSdb; Integrated security = true";

                    SqlConnection con = new SqlConnection(cs);

                    string query = "select * from RG";

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = query;

                    // Console.WriteLine("Id   FName     LName     Age    Salary");
                    // Console.WriteLine("--- -------   -------   -----   --------");


                    con.Open();

                    SqlDataReader rdr = cmd.ExecuteReader();

                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            Console.WriteLine("Id   FName     LName     Age    Salary");
                            Console.WriteLine("--- -------   -------   -----   --------");
                            // degree1.Text = rdr["name"].ToString();
                        }
                    }
                    con.Close();

                    //SqlCommand cmd1 = new SqlCommand(query, con);
                }
            }
            */
        }       
    



