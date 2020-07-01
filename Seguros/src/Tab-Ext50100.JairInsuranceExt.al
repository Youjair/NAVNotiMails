tableextension 50100 "Jair InsuranceExt" extends Insurance
{
    fields
    {
        field(50100; "Jair Brokerage Vendor No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Brokerage Vendor No.', Comment = 'ESP=Nº proveedor correduría';

        }
    }

}