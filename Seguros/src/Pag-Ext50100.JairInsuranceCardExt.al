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
    }


}