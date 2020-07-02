codeunit 50100 "Jair InsuranceEmailMgt"
{
    trigger OnRun()
    begin
        CheckAndSendInsuranceEmailNotifications();
    end;

    local procedure CheckAndSendInsuranceEmailNotifications()
    var
        Insurance: Record Insurance;
    begin
        Insurance.SetRange("Jair Alert", true);
        if Insurance.FindSet() then
            repeat
                SendInsuranceEmailNotification();
            until Insurance.Next() = 0;
    end;

    local procedure SendInsuranceEmailNotification()
    var
        SMTPMailSetup: Record "SMTP Mail Setup";
        SMTPMail: Codeunit "SMTP Mail";

        Recipients: Text;
        Subject: Text;
        Body: Text;
    begin
        SMTPMailSetup.get();
        SenderName := SMTPMailSetup."Jair Sender Name";
        SenderAddress := SMTPMailSetup."Jair Sender Address";
        Recipients := 'tu@miempresa.com';
        Subject := 'Un título';
        Body := 'El cuerpo del mensaje';
        SMTPMail.CreateMessage(
            SenderName,
            SenderAddress,
            Recipients,
            Subject,
            Body,
            true
        );
        SMTPMail.Send();
    end;

    local procedure GetSenderNameForTestPurposes(TokenName: Text): Text
    begin
        case UpperCase(TokenName) of
            'SENDERNAME':
                exit(SenderName);
            'SENDERADDRESS':
                exit(SenderAddress);

        end;
    end;

    var
        SenderName: Text;
        SenderAddress: Text;
}