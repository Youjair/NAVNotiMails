tableextension 50101 "UserSetupExt" extends "User Setup"
{
    fields
    {
        field(50101; "Jair Insurance Alert"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Insurance Alert', Comment = 'ESP=Alerta de Seguros';
        }
    }

}