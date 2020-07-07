pageextension 50100 "Jair InsuranceCardExt" extends "Insurance Card"
{
    layout
    {
        addafter("Insurance Vendor No.")
        {
            field("Jair Brokerage Vendor No."; "Jair Brokerage Vendor No.")
            {
                ApplicationArea = FixedAssets;
            }
        }
        addafter(Posting)
        {
            group(JairNotification)
            {
                Caption = 'Notifications', Comment = 'ESP=Notificaciones';
                field("Jair Alert"; "Jair Alert")
                {
                    ApplicationArea = FixedAssets;
                }
                field("Jair Notice"; "Jair Notice")
                {
                    ApplicationArea = FixedAssets;
                }
            }
        }
    }
    actions
    {
        addafter("Tot. Value Insured")
        {

            action(TestSMTP)
            {
                ApplicationArea = All;
                Caption = 'SMPT Test', comment = 'ESP="Prueba SMTP"';
                trigger OnAction()
                begin
                    Tester.Run();
                end;
            }
        }

    }

    var
        Tester: Codeunit "Jair InsuranceEmailMgt";
}

