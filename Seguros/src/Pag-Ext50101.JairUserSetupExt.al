pageextension 50101 "Jair UserSetupExt" extends "User Setup"
{
    layout
    {
        addbefore(Email)
        {
            field("Jair Insurance Alert"; "Jair Insurance Alert")
            {
                ApplicationArea = FixedAssets;
                ToolTip = 'Eso es';
            }
        }
    }

}