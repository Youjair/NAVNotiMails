tableextension 50102 "Jair SMTPSetupExt" extends "SMTP Mail Setup"
{
    fields
    {
        field(50100; "Jair Sender Name"; Text[100])
        {
            DataClassification = EndUserIdentifiableInformation;
            Caption = 'Sender Name', comment = 'ESP=Nombre del remitente';
        }
        field(50101; "Jair Sender Address"; Text[100])
        {
            DataClassification = EndUserIdentifiableInformation;
            Caption = 'Sender Address', comment = 'ESP=Dirección del remitente';
        }


    }

}