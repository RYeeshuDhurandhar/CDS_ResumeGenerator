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
using System.Data.SqlTypes;

namespace RG
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProjectsStrip.Visible = false;
            Project1.Visible = false;
            Project2.Visible = false;
            project1point4List.Visible = false;
        }

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

        public string myname, myprogram, mydepartment, myemail, myphone,  mydegree1, myinstitution1, myCPI1, myyear1, myproject1heading, myproject1point1, 
            myproject1point2, myproject1point3, myproject1point4, myproject2heading, myproject2point1, myproject2point2, myproject2point3, myproject3heading,
            myproject3point1, myproject3point2, myproject3point3;

        public static int i;
        DataRow dr;
        DataColumn dc;

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=DESKTOP-RSF4LA7\SQLEXPRESS;Initial Catalog=CDSdb;Integrated Security=True";  //
            con.Open();
            cmd.CommandText = "SELECT * FROM RG_Table1"; //
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter("select * from Projects", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            SqlDataReader rd = cmd.ExecuteReader();
            while(rd.Read())
            {

                myname = rd["name"].ToString();
                myprogram = rd["program"].ToString();
                mydepartment = rd["department"].ToString();
                mydegree1 = rd["degree1"].ToString();
                myinstitution1 = rd["institution1"].ToString();
                myCPI1 = rd["CPI1"].ToString();
                myyear1 = rd["year1"].ToString();

                i = 0;

                int NoOfRows = dt.Rows.Count;
                if(NoOfRows >0)
                {
                    ProjectsStrip.Visible = true;
                    Project1.Visible = true;
                    dr = dt.Rows[0];
                    int NoOfCoulumns = dt.Columns.Count;
                    myproject1heading = dr[i + 2].ToString();
                    myproject1point1 = dr[i + 3].ToString();
                    myproject1point2 = dr[i + 4].ToString();
                    myproject1point3 = dr[i + 5].ToString();
                    if (dr[i + 6].ToString() != null)     // string.IsNullOrEmpty(dr[i + 6].ToString())
                    {
                        project1point4List.Visible = true;
                        myproject1point4 = dr[i + 6].ToString();
                    }
                    
                    
                    if (NoOfRows > 1)
                    {
                        Project2.Visible = true;
                        DataRow dr = dt.Rows[1];
                        myproject2heading = dr[i + 2].ToString();
                        myproject2point1 = dr[i + 3].ToString();
                        myproject2point2 = dr[i + 4].ToString();
                        myproject2point3 = dr[i + 5].ToString();
                    }
                }
                
            }
            this.DataBind();
        }
    }
}