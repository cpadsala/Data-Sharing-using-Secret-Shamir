using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Users_Download_File : System.Web.UI.Page
{
    public string file_path, key, fileName, fileExtension, output, input_file;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == "")
        {
            Response.Redirect("Login.aspx?msg=logout");
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string share_id = Request.QueryString["share_id"];
        string query = "select cloud_id, file_name from Share_Master where share_id='" + share_id + "'";
        DataTable dt = Database.Getdata(query);
        string cloud_id = Convert.ToString(dt.Rows[0]["cloud_id"]);
        string file_name = Convert.ToString(dt.Rows[0]["file_name"]);

        if (cloud_id == "Cloud1")
        {
            SqlCommand compare_keys = new SqlCommand("CompareKeys");
            var sqltype = CommandType.StoredProcedure;
            SqlParameter[] sqlpara ={
                                     new SqlParameter("@key_value",txtsecret_key.Text),
                                     new SqlParameter("@key1",txtkey1.Text),
                                     new SqlParameter("@key2",txtkey2.Text),
                                     new SqlParameter("@key3",txtkey3.Text),
                                     new SqlParameter("@key4",txtkey4.Text),
                                     new SqlParameter("@key5",txtkey5.Text),
                                     new SqlParameter("@key6",txtkey6.Text),
                                     
                                    };

            DataTable key_output = Database.Getdata_Store(Database.cs, compare_keys, sqlpara, sqltype);
            if (key_output.Rows.Count > 0)
            {
                file_path = Convert.ToString(key_output.Rows[0]["file_path"]);
                key = txtsecret_key.Text;
                fileName = Path.GetFileNameWithoutExtension(file_path);
                fileExtension = Path.GetExtension(file_path);

                output = Server.MapPath("../Files/") + fileName + "_dec" + fileExtension;
                input_file = Server.MapPath("../Files/" + file_path);

                Decryption.Decrypt(key, input_file, output);
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));
                Response.WriteFile(output);
                Response.Flush();

            }
            else
            {

                Response.Redirect("View_Share_Files.aspx?msg=invalid");
            }

        }
        if (cloud_id == "Cloud2")
        {


            SqlCommand compare_keys = new SqlCommand("CompareKeys");
            var sqltype = CommandType.StoredProcedure;
            SqlParameter[] sqlpara ={
                                     new SqlParameter("@key_value",txtsecret_key.Text),
                                     new SqlParameter("@key1",txtkey1.Text),
                                     new SqlParameter("@key2",txtkey2.Text),
                                     new SqlParameter("@key3",txtkey3.Text),
                                     new SqlParameter("@key4",txtkey4.Text),
                                     new SqlParameter("@key5",txtkey5.Text),
                                     new SqlParameter("@key6",txtkey6.Text),
                                    
                                    };

            DataTable key_output = Database.Getdata_Store(Database.cs1, compare_keys, sqlpara, sqltype);
            if (key_output.Rows.Count > 0)
            {
                file_path = Convert.ToString(key_output.Rows[0]["file_path"]);
                key = txtsecret_key.Text;
                fileName = Path.GetFileNameWithoutExtension(file_path);
                fileExtension = Path.GetExtension(file_path);

                output = Server.MapPath("../Files/") + fileName + "_dec" + fileExtension;
                input_file = Server.MapPath("../Files/" + file_path);

                Decryption.Decrypt(key, input_file, output);
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));
                Response.WriteFile(output);
                Response.Flush();
            }
            else
            {
                Response.Redirect("View_Share_Files.aspx?msg=invalid");
            }
        }

        if (cloud_id == "Cloud3")
        {
            SqlCommand compare_keys = new SqlCommand("CompareKeys");
            var sqltype = CommandType.StoredProcedure;
            SqlParameter[] sqlpara ={
                                     new SqlParameter("@key_value",txtsecret_key.Text),
                                     new SqlParameter("@key1",txtkey1.Text),
                                     new SqlParameter("@key2",txtkey2.Text),
                                     new SqlParameter("@key3",txtkey3.Text),
                                     new SqlParameter("@key4",txtkey4.Text),
                                     new SqlParameter("@key5",txtkey5.Text),
                                    new SqlParameter("@key6",txtkey6.Text),
                                                                    };
            DataTable key_output = Database.Getdata_Store(Database.cs2, compare_keys, sqlpara, sqltype);
            if (key_output.Rows.Count > 0)
            {
                file_path = Convert.ToString(key_output.Rows[0]["file_path"]);
                key = txtsecret_key.Text;
                fileName = Path.GetFileNameWithoutExtension(file_path);
                fileExtension = Path.GetExtension(file_path);
                output = Server.MapPath("../Files/") + fileName + "_dec" + fileExtension;
                input_file = Server.MapPath("../Files/" + file_path);
                Decryption.Decrypt(key, input_file, output);
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(output));
                Response.WriteFile(output);
                Response.Flush();
            }
            else
            {
                Response.Redirect("View_Share_Files.aspx?msg=invalid");
            }
        }
    }

}