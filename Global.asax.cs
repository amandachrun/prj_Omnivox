using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace prjWebCsAdoOmnivox
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {



            Application["totalVisitor"] = 0;
            Application["aciveVisitor"] = 0;
            //server down
        }



        protected void Session_Start(object sender, EventArgs e)
        {
            //create a session
            //count session
            Application["totalVisitor"] = Convert.ToInt64(Application["totalVisitor"]) + 1;
            Application["activeVisitor"] = Convert.ToInt64(Application["activeVisitor"]) + 1;
            Session["RefMember"] = 0;
            Session["MemberName"] = "";

            //to read msgs
            Session["RefMessage"] = "";
            Session["Title"] = "";
            Session["Message"] = "";
            Session["Sender"] = 0;
            Session["Receiver"] = 0;
            Session["IsNew"] = true;
        }



        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            // method is executed on all requests handled by the ASP.NET runtime.
        }



        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            //The Application_AuthenticateRequest event indicates that a request is ready to be authenticated.
        }



        protected void Application_Error(object sender, EventArgs e)
        {



        }



        protected void Session_End(object sender, EventArgs e)
        {
            Application["totalVisitor"] = Convert.ToInt64(Application["totalVisitor"]) - 1;



            Application["activeVisitor"] = Convert.ToInt64(Application["activeVisitor"]) - 1;
        }



        protected void Application_End(object sender, EventArgs e)
        {



        }
    }
}