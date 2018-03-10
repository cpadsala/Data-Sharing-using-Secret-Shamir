using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;
using System.Security.Cryptography;
using System.Data;
using System.Data.SqlClient;


public partial class Upload_File : System.Web.UI.Page
{
    public int i,j,k;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["a_id"] == "")
        {
            Response.Redirect("Login.aspx?msg=logout");

        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

        string fileName = Path.GetFileNameWithoutExtension(FileUpload1.PostedFile.FileName);
        string fileExtension = Path.GetExtension(FileUpload1.PostedFile.FileName);
        string file_path = Path.GetFileName(FileUpload1.PostedFile.FileName);

        //Build the File Path for the original (input) and the encrypted (output) file.
        string input = Server.MapPath("../Files/") + fileName + fileExtension;
        string file_name1= fileName + "_enc1" + fileExtension;
        string file_name2= fileName + "_enc2" + fileExtension;
        string file_name3= fileName + "_enc3" + fileExtension;
        string output1 = Server.MapPath("../Files/" + file_name1);
        string output2 =Server.MapPath("../Files/" + file_name2);
        string output3 = Server.MapPath("../Files/" + file_name3); 

        //Save the Input File, Encrypt it and save the encrypted file in output path.
        FileUpload1.SaveAs(input);
        string key1 = ddlKey1.SelectedItem.Text;
        string key2 = ddlKey2.SelectedItem.Text;
        string key3 = ddlKey3.SelectedItem.Text;

        this.Encrypt(key1, input, output1);
        this.Encrypt(key2, input, output2);
        this.Encrypt(key3, input, output3);

        File.Delete(input);

        String[] keys_set1 = new String[10];
        for (i = 0; i < 10; i++)
        {
            
            keys_set1[i] = Common.AlphanumericString();
        }
        string share_key1 = keys_set1[0];
        string share_key2 = keys_set1[1];
        string share_key3 = keys_set1[2];
        string share_key4 = keys_set1[3];
        string share_key5 = keys_set1[4];
        string share_key6 = keys_set1[5];
        string share_key7 = keys_set1[6];
        string share_key8 = keys_set1[7];
        string share_key9 = keys_set1[8];
        string share_key10 = keys_set1[9];
        




        String[] keys_set2 = new String[10];
        for (j = 0; j < 10; j++)
        {
            
            keys_set2[j] = Common.AlphanumericString();
        }

        string share_key11 = keys_set2[0];
        string share_key12 = keys_set2[1];
        string share_key13=  keys_set2[2];
        string share_key14 = keys_set2[3];
        string share_key15 = keys_set2[4];
        string share_key16 = keys_set2[5];
        string share_key17 = keys_set2[6];
        string share_key18 = keys_set2[7];
        string share_key19 = keys_set2[8];
        string share_key20 = keys_set2[9];

        String[] keys_set3 = new String[10];
        for (k = 0; k < 10; k++)
        {
            
            keys_set3[k] = Common.AlphanumericString();
        }

        string share_key21 = keys_set3[0];
        string share_key22 = keys_set3[1];
        string share_key23 = keys_set3[2];
        string share_key24 = keys_set3[3];
        string share_key25 = keys_set3[4];
        string share_key26 = keys_set3[5];
        string share_key27 = keys_set3[6];
        string share_key28 = keys_set3[7];
        string share_key29 = keys_set3[8];
        string share_key30 = keys_set3[9];

        string connection_string = Database.cs;
        string connection_string1 = Database.cs1;
        string connection_string2 = Database.cs2;

        SqlCommand cmd = new SqlCommand("Upload_Data_on_Cloud");
        var sqltype = CommandType.StoredProcedure;
        SqlParameter[] sqlpara = {
                                     new SqlParameter("@file_name",file_path),
                                     new SqlParameter("@file_path",file_name1),
                                     new SqlParameter("@key_value",ddlKey1.SelectedValue),
                                     new SqlParameter("@key1",share_key1),
                                     new SqlParameter("@key2",share_key2),
                                     new SqlParameter("@key3",share_key3),
                                     new SqlParameter("@key4",share_key4),
                                     new SqlParameter("@key5",share_key5),
                                     new SqlParameter("@key6",share_key6),
                                     new SqlParameter("@key7",share_key7),
                                     new SqlParameter("@key8",share_key8),
                                     new SqlParameter("@key9",share_key9),
                                     new SqlParameter("@key10",share_key10),
                                 };
        Database.Insertdata(connection_string,cmd, sqlpara, sqltype);

        SqlCommand cmd1 = new SqlCommand("Upload_Data_on_Cloud1");
        var sqltype1 = CommandType.StoredProcedure;
        SqlParameter[] sqlpara1 = {
                                     new SqlParameter("@file_name",file_path),
                                     new SqlParameter("@file_path",file_name2),
                                     new SqlParameter("@key_value",ddlKey2.SelectedValue),
                                     new SqlParameter("@key1",share_key11),
                                     new SqlParameter("@key2",share_key12),
                                     new SqlParameter("@key3",share_key13),
                                     new SqlParameter("@key4",share_key14),
                                     new SqlParameter("@key5",share_key15),
                                     new SqlParameter("@key6",share_key16),
                                     new SqlParameter("@key7",share_key17),
                                     new SqlParameter("@key8",share_key18),
                                     new SqlParameter("@key9",share_key19),
                                     new SqlParameter("@key10",share_key20),
                                 };

        Database.Insertdata(connection_string1,cmd1, sqlpara1, sqltype1);

        SqlCommand cmd2 = new SqlCommand("Upload_Data_on_Cloud2");
        var sqltype2 = CommandType.StoredProcedure;
        SqlParameter[] sqlpara2 = {
                                     new SqlParameter("@file_name",file_path),
                                     new SqlParameter("@file_path",file_name3),
                                     new SqlParameter("@key_value",ddlKey3.SelectedValue),
                                     new SqlParameter("@key1",share_key21),
                                     new SqlParameter("@key2",share_key22),
                                     new SqlParameter("@key3",share_key23),
                                     new SqlParameter("@key4",share_key24),
                                     new SqlParameter("@key5",share_key25),
                                     new SqlParameter("@key6",share_key26),
                                     new SqlParameter("@key7",share_key27),
                                     new SqlParameter("@key8",share_key28),
                                     new SqlParameter("@key9",share_key29),
                                     new SqlParameter("@key10",share_key30),
                                 };

        Database.Insertdata(connection_string2, cmd2, sqlpara2, sqltype2);

        string query = "Insert Into File_Info values('" + file_path + "','" + ddlKey1.SelectedValue + "','" + ddlKey2.SelectedValue + "','" + ddlKey3.SelectedValue + "','" + file_name1 + "','" + file_name2 + "','" + file_name3 + "')";
        Database.InsertData_direct(query);
        Response.Redirect("Manage Files.aspx?msg=add");



    }
    private void Encrypt(string key, string inputFilePath, string outputfilePath)
    {
        string EncryptionKey = key;
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (FileStream fsOutput = new FileStream(outputfilePath, FileMode.Create))
            {
                using (CryptoStream cs = new CryptoStream(fsOutput, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    using (FileStream fsInput = new FileStream(inputFilePath, FileMode.Open))
                    {
                        int data;
                        while ((data = fsInput.ReadByte()) != -1)
                        {
                            cs.WriteByte((byte)data);
                        }
                    }
                }
            }
        }
    }

    

}