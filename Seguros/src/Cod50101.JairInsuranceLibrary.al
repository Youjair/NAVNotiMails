codeunit 50101 "Jair Insurance Library"
{
    local procedure CreateTestSmtpSetup()
    var
        SmtpMailSetup: Record "SMTP Mail Setup";
    begin
        SmtpMailSetup.DeleteAll();
        SmtpMailSetup.Init();
        SmtpMailSetup.Validate("SMTP Server", 'smtp.mailtrap.io');
        SmtpMailSetup.Validate("SMTP Server Port", 2525);
        SmtpMailSetup.Validate(Authentication, SmtpMailSetup.Authentication::Basic);
        SmtpMailSetup.Validate("Secure Connection", true);
        SmtpMailSetup.Validate("Jair Sender Name", 'Jane Doe');
        SmtpMailSetup.Validate("Jair Sender Address", 'jane.doe@mycompany.com');
        SmtpMailSetup.Validate("User ID", 'abb3d42d5cbd0e');
        SmtpMailSetup.SetPassword('b2603ba7bbeb89');
        SmtpMailSetup.Insert(true);

    end;
}