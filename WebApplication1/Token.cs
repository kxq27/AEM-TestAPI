using Newtonsoft.Json;
using System.Net;
using WebApplication1.Models;

namespace WebApplication1
{
    public class Token
    {
        public string GetBearerToken(string username = "", string password = "")
        {
            try
            {
                var url = "http://test-demo.aemenersol.com/api/Account/Login";

                var httpRequest = (HttpWebRequest)WebRequest.Create(url);
                httpRequest.Method = "POST";
                httpRequest.ContentType = "application/json";

                Login login = new();
                login.Username = username;
                login.Password = password;                

                string json = JsonConvert.SerializeObject(login);              

                var data = json.ToString();

                using (var streamWriter = new StreamWriter(httpRequest.GetRequestStream()))
                {
                    streamWriter.Write(data);
                }

                var tokenBearer = "";
                var httpResponse = (HttpWebResponse)httpRequest.GetResponse();
                using (var streamReader = new StreamReader(httpResponse.GetResponseStream()))
                {
                    tokenBearer = streamReader.ReadToEnd();
                }

                //Console.WriteLine(httpResponse.StatusCode);

                //return httpResponse.StatusCode.ToString();
                return tokenBearer;

            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
    }
}
