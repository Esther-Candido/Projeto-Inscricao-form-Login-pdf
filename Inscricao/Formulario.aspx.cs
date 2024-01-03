using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Security.Cryptography;
using System.Configuration;
using System.IO;

namespace Inscricao
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        public static string EncryptString(string Message)
        {
            string Passphrase = "atec";
            byte[] Results;
            System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();



            // Step 1. We hash the passphrase using MD5
            // We use the MD5 hash generator as the result is a 128 bit byte array
            // which is a valid length for the TripleDES encoder we use below



            MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
            byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(Passphrase));



            // Step 2. Create a new TripleDESCryptoServiceProvider object
            TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();



            // Step 3. Setup the encoder
            TDESAlgorithm.Key = TDESKey;
            TDESAlgorithm.Mode = CipherMode.ECB;
            TDESAlgorithm.Padding = PaddingMode.PKCS7;



            // Step 4. Convert the input string to a byte[]
            byte[] DataToEncrypt = UTF8.GetBytes(Message);



            // Step 5. Attempt to encrypt the string
            try
            {
                ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
                Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
            }
            finally
            {
                // Clear the TripleDes and Hashprovider services of any sensitive information
                TDESAlgorithm.Clear();
                HashProvider.Clear();
            }



            // Step 6. Return the encrypted string as a base64 encoded string
            string enc = Convert.ToBase64String(Results);
            enc = enc.Replace("+", "KKK");
            enc = enc.Replace("/", "JJJ");
            enc = enc.Replace("\\", "III");
            return enc;
        }




        protected void tb_pdf_Click(object sender, EventArgs e)
        {
            string caminho = ConfigurationSettings.AppSettings.Get("PathFicheiros");

            string pdfTemplate = caminho + "template\\form.pdf";

            string nomePDF = EncryptString(DateTime.Now.ToString().Replace(":", "").Replace("/", "").Replace(" ", "")) + ".pdf";

            string newFile = caminho + "pdfs\\" + nomePDF;


            PdfReader reader = new PdfReader(pdfTemplate);

            PdfStamper stamper = new PdfStamper(reader, new FileStream(newFile, FileMode.Create));

            AcroFields campos = stamper.AcroFields;

            //o primeiro campo "" é o jeito que colocou no PDF e o segundo o jeito que esta nas TB..
            campos.SetField("tb_nome", tb_nome.Text);
            campos.SetField("tb_sobrenome", tb_sobrenome.Text);
            campos.SetField("tb_email", tb_email.Text);
            campos.SetField("tb_telefone", tb_telefone.Text);
            campos.SetField("tb_rua", tb_rua.Text);
            campos.SetField("tb_nacionalidade", tb_nacionalidade.Text);

            stamper.Close();

            string site = ConfigurationSettings.AppSettings.Get("URLSite");

            Response.Redirect(site + "ficheiros/pdfs/" + nomePDF);
        }
    }
}