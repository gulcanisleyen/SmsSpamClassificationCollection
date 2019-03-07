using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;

public partial class Azure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/bb361b32379a49c1a2a63ba1361f736f/services/bff40f4ee1a04e0789bc15f16b0efc73/execute?api-version=2.0&format=swagger");
        var request = new RestRequest(Method.POST);
        request.AddHeader("postman-token", "602ebcb2-4656-977a-fb1d-1bcc3b34c284");
        request.AddHeader("cache-control", "no-cache");
        request.AddHeader("authorization", "Bearer jgJAiQ7dMDMs0jos0lD3+genngB4Qalz+TaNuW5tF5K635nb+h6qW0g39sI/cKTkWSuz2PZ4VFyqrfq1WLKn9A==");
        request.AddHeader("content-type", "application/json");
        request.AddParameter("application/json", "{\r\n        \"Inputs\": {\r\n                \"input1\":\r\n                [\r\n                    {\r\n                            'Text': \"" + TextBox1.Text + "\",   \r\n                    }\r\n                ],\r\n        },\r\n    \"GlobalParameters\":  {\r\n    }\r\n}\r\n", ParameterType.RequestBody);
        IRestResponse response = client.Execute(request);
        Label99.Text = response.Content.ToString();


    }

}