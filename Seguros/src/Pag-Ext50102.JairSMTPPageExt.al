pageextension 50102 "Jair SMTPPageExt" extends "SMTP Mail Setup"
{
    layout
    {
        addlast(General)
        {
            field("Jair Sender Name"; "Jair Sender Name")
            {
                ApplicationArea = All;
            }
            field("Jair Sender Address"; "Jair Sender Address")
            {
                ApplicationArea = All;
            }
        }

    }

}