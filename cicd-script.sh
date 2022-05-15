echo "Updating ... \n"
######################################################################
#  This .sh file demonstrates how to create or update an automation task in Zephyr for Jira Cloud, run this task, and publish test results to Zephyr.
#  Author: SmartBear Software
######################################################################
######################################################################
#  Zephyr base URL.
#  DON'T CHANGE THE CONSTANT BELOW. KEEP IT AS IT IS.
######################################################################
zephyrBaseUrl="https://prod-api.zephyr4jiracloud.com/connect"
#######################################################################
#  Access and secret keys, and user id needed for connection to Zephyr for Jira. 
#  Replace the constants below with values relevant to your project and account.
#######################################################################
# The accessKey and secretKey to access your project. You can find them in your Jira project: Zephyr > API Keys.
accessKey=
secretKey=""
# Id of the user who will create the automation task. You can find it in Jira.
accountId="61c7d7e385349800732e9648"   
#######################################################################
#  Create a JSON Web Token  (required to access Zephyr for Jira).
#  Keep this section as it is.
#######################################################################
echo "Generating a JSOM Web Token ... \n"
curl -v -d '{  "accessKey": "NGUyY2I3YTUtNzI3NC0zMTZkLTg5YzAtZDE4ZTc4ZGRiOTgwIDYxYzdkN2UzODUzNDk4MDA3MzJlOTY0OCBVU0VSX0RFRkFVTFRfTkFNRQ", "secretKey": "VKRp-QkO9p1A5n_OhDU-fPIgxnJFZWeE85J_mE1AVlY" ,"accountId": "61c7d7e385349800732e9648","zephyrBaseUrl": "https://prod-api.zephyr4jiracloud.com/connect","expirationTime":360000}' -H "Content-Type: application/json" -XPOST https://prod-vortexapi.zephyr4jiracloud.com/api/v1/jwt/generate