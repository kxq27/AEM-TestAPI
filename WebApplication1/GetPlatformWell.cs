using Microsoft.Data.SqlClient;
using Newtonsoft.Json;
using System.Data;
using System.Net;
using WebApplication1.Models;

namespace WebApplication1
{
    public class GetPlatformWell
    {
        public string ApiCall(string action, string bearer)
        {
            try
            {
                string url = "";

                url = "http://test-demo.aemenersol.com/api/" + action;

                var httpRequest = (HttpWebRequest)WebRequest.Create(url);

                httpRequest.Accept = "application/json";
                httpRequest.Headers["Authorization"] = "Bearer " + bearer;

                string result;
                var httpResponse = (HttpWebResponse)httpRequest.GetResponse();
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    result = streamReader.ReadToEnd();
                    string path = Path.Combine(Environment.CurrentDirectory, @"Output\");

                    if (File.Exists(path + "output.json"))
                    {
                        File.Delete(path + "output.json");
                    }

                    File.WriteAllText(path + "output.json", result);

                    string output = ImportToLocalDB(result);

                    streamReader.Close();
                    httpResponse.Close();

                    return "Successfully import data from API!" + output;

                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        public string ImportToLocalDB(string jsonStr)
        {

            SqlConnection conn = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            conn.ConnectionString = @"Data Source=(localdb)\mssqllocaldb;Initial Catalog=AEMAssessment;Integrated Security=True";
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "InsertUpdate_PlatformWell";
            cmd.Parameters.AddWithValue("@JSON", jsonStr);

            try
            {
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                return "\nSuccessfully store data into local database!";
            }
            catch (Exception ex)
            {
                return "\n"+ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }       
    }
}
