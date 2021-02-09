using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Diagnostics;
using Microsoft.ApplicationInsights;
using Microsoft.ApplicationInsights.DataContracts;

namespace GpgAINet48
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void Button1_Click(object sender, EventArgs e)
        {
                       string url = TextBox1.Text;
           
            HttpClient client = new HttpClient();
            client.DefaultRequestHeaders.UserAgent.Clear();
            client.DefaultRequestHeaders.Add("User-Agent", "DemoAgent");
            var content =  await client.GetStringAsync(url);
            Label1.Text = content;
            Debug.WriteLine(content);
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        private TelemetryClient telemetry = new TelemetryClient();
        protected void Button2_Click(object sender, EventArgs e)
        {
            telemetry.TrackEvent("DemoCustomEvent");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            var sample = new MetricTelemetry();
            sample.Name = "mycustommetricname";
            sample.Value = 42.3;
            telemetry.TrackMetric(sample);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                int i = 4;
                int j = 0;
                int z;
                z = i / j;
}
            catch (Exception ex)
            {
                telemetry.TrackException(ex);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            telemetry.TrackTrace("Slow database response",
                SeverityLevel.Warning,
                new Dictionary<string, string> { { "database", "1"} });
        }
    }
}