tableextension 50100 "Jair InsuranceExt" extends Insurance
{
    fields
    {
        field(50100; "Jair Brokerage Vendor No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Brokerage Vendor No.', Comment = 'ESP=Nº proveedor correduría';
            TableRelation = Vendor;
            ValidateTableRelation = true;
        }
        field(50101; "Jair Alert"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Alert', Comment = 'ESP=Alerta';
        }
        field(50102; "Jair Notice"; DateFormula)
        {
            DataClassification = CustomerContent;
            Caption = 'Notice', Comment = 'ESP=Aviso';
        }

    }

}