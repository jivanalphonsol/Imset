
using imset.Model;
using Imset;
using System;
using System.Web.UI;

namespace imset
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Access-Control-Allow-Origin", "*");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                // ==============================
                // GET CAPTCHA VALUES
                // ==============================

                string enteredCaptcha = txtCaptcha.Text.Trim();
                string sessionCaptcha = Session["CaptchaVerify"] as string;

                // ==============================
                // CAPTCHA VALIDATION
                // ==============================

                if (string.IsNullOrEmpty(enteredCaptcha))
                {
                    ShowAlert("Please enter CAPTCHA");

                    ClearAll();
                    RemoveCaptchaSession();

                    return;
                }

                if (string.IsNullOrEmpty(sessionCaptcha) ||
                    !string.Equals(
                        enteredCaptcha,
                        sessionCaptcha,
                        StringComparison.OrdinalIgnoreCase))
                {
                    ShowAlert("Invalid CAPTCHA. Please enter the correct CAPTCHA.");

                    ClearAll();
                    RemoveCaptchaSession();

                    return;
                }

                // ==============================
                // NAME VALIDATION
                // ==============================

                if (string.IsNullOrWhiteSpace(txtCustName.Text))
                {
                    ShowAlert("Name cannot be blank");

                    ClearAll();
                    RemoveCaptchaSession();

                    return;
                }

                // ==============================
                // MOBILE VALIDATION
                // ==============================

                if (string.IsNullOrWhiteSpace(txtCustMobileNo.Text))
                {
                    ShowAlert("Contact No cannot be blank");

                    ClearAll();
                    RemoveCaptchaSession();

                    return;
                }

                // ==============================
                // EMAIL VALIDATION
                // ==============================

                if (string.IsNullOrWhiteSpace(txtCustEmail.Text))
                {
                    ShowAlert("Email Id cannot be blank");

                    ClearAll();
                    RemoveCaptchaSession();

                    return;
                }

                if (!CommonUtilities.IsEmailIdValid(txtCustEmail.Text))
                {
                    ShowAlert("Please enter valid email id");

                    ClearAll();
                    RemoveCaptchaSession();

                    return;
                }

                // ==============================
                // HENRY CHECK
                // ==============================

                if (txtCustName.Text.IndexOf(
                        "Henry",
                        StringComparison.OrdinalIgnoreCase) >= 0)
                {
                    ShowAlert(
                        "We have registered your request. We will get back to you As Soon As Possible"
                    );

                    ClearAll();
                    RemoveCaptchaSession();

                    return;
                }

                // ==============================
                // GENERATE LEAD
                // ==============================

                GenerateNewLead();
            }
            catch (Exception ex)
            {
                // ==============================
                // ERROR HANDLING
                // ==============================

                CommonUtilities.FnWriteErrorLog(
                    "btnSubmit_Click",
                    ex.ToString()
                );

                ShowAlert(
                    "Due to some technical glitch we are not able to register your request. Please try after some time."
                );

                ClearAll();
                RemoveCaptchaSession();
            }
        }

        // ==========================================================
        // GENERATE NEW LEAD
        // ==========================================================

        private void GenerateNewLead()
        {
            try
            {
                GenerateLead leadgeneration = new GenerateLead();

                LeadgenerationParam param = new LeadgenerationParam();

                // Customer Name
                param.CustomerName =
                    txtCustName.Text.Trim() +
                    " " +
                    (txtLastname.Text.Trim() != ""
                        ? txtLastname.Text.Trim()
                        : "");

                // Customer Email
                param.CustomerEmailID =
                    txtCustEmail.Text.Trim();

                // Customer Mobile
                param.customerMobileNo =
                    txtCustMobileNo.Text.Trim();

                // Message
                param.Message =
                    txtCustMesssage.Text.Trim();

                // Source
                param.Source =
                    "imset.co.in";

                // Type
                param.Type =
                    "AddData";

                // ==============================
                // INSERT LEAD
                // ==============================

                string message =
                    leadgeneration.InsertLead(param);

                // ==============================
                // SUCCESS
                // ==============================

                if (message == "Success")
                {
                    // Remove old CAPTCHA
                    RemoveCaptchaSession();

                    // Clear all fields
                    ClearAll();

                    // Redirect to Thank You page
                    Response.Redirect(
                        "Thankyou.aspx",
                        false
                    );

                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {
                    // ==============================
                    // DATABASE / LEAD INSERT ERROR
                    // ==============================

                    ShowAlert(
                        "Due to some technical glitch we are not able to register your request. Please try after some time."
                    );

                    ClearAll();
                    RemoveCaptchaSession();
                }
            }
            catch (Exception ex)
            {
                // ==============================
                // GENERATE LEAD ERROR
                // ==============================

                CommonUtilities.FnWriteErrorLog(
                    "GenerateLead",
                    ex.ToString()
                );

                ShowAlert(
                    "Due to some technical glitch we are not able to register your request. Please try after some time."
                );

                ClearAll();
                RemoveCaptchaSession();
            }
        }

        // ==========================================================
        // CLEAR ALL FORM FIELDS
        // ==========================================================

        private void ClearAll()
        {
            txtCustName.Text = "";
            txtLastname.Text = "";
            txtCustEmail.Text = "";
            txtCustMobileNo.Text = "";
            txtCustMesssage.Text = "";
            txtCaptcha.Text = "";
        }

        // ==========================================================
        // REMOVE CAPTCHA SESSION
        // ==========================================================

        private void RemoveCaptchaSession()
        {
            Session.Remove("CaptchaVerify");
        }

        // ==========================================================
        // SHOW JAVASCRIPT ALERT
        // ==========================================================

        private void ShowAlert(string message)
        {
            string safeMessage =
                message
                    .Replace("\\", "\\\\")
                    .Replace("'", "\\'")
                    .Replace("\r", "")
                    .Replace("\n", "");

            ScriptManager.RegisterStartupScript(
                this,
                this.GetType(),
                Guid.NewGuid().ToString(),
                "alert('" + safeMessage + "');",
                true
            );
        }
    }
}

