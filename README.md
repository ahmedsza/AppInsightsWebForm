# Very simple AppInsights with Webform

Create an Application Insights resource in Azure. See https://docs.microsoft.com/en-us/azure/azure-monitor/app/create-new-resource for more.

After creating it, get the instrumentation key

After you clone the repo, open the solution in Visual Studio
- in ApplicationInsights.config set the Connection String to the instrumention key (the current key listed is a dummy incorrect key and will not work)
- open Site.Master and set the instrumention key (the current key listed is a dummy incorrect key and will not work)

Run it. 
Open Live Metrics in App Insights

Click the various pages (Home, About, Contact)
Click the buttons on the default page 

You should see data coming through


