using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

namespace WebApplication1
{
    public partial class Web : System.Web.UI.Page
    {
        protected void Button_Click(object sender, EventArgs e)
        {
            string city = CityDropDownList.SelectedValue;
            Session["City"] = city;
            Response.Redirect("Web.aspx");

            // WebRequest kullanarak hava durumu verilerini çekme
            string apiUrl = "https://opendata.fmi.fi/wfs?service=WFS&version=2.0.0&request=getFeature&storedquery_id=ecmwf::forecast::surface::point::simple&place=lahti";

            try
            {
                WebRequest request = WebRequest.Create(apiUrl);
                WebResponse response = request.GetResponse();

                using (var dataStream = response.GetResponseStream())
                using (var reader = new System.IO.StreamReader(dataStream))
                {
                    string responseFromServer = reader.ReadToEnd();

                    // responseFromServer içindeki API'den gelen verileri işleyebilirsiniz.
                }
            }
            catch (WebException ex)
            {
                // Hata işleme
                // Response alınamazsa veya bir hata olursa burada ele alabilirsiniz.
            }
        }
    }
}
