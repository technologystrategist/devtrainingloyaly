pageextension 50117 CustomerListExtension extends "Customer List"
{
    layout
    {

    }

    actions
    {
        addlast(processing)
        {
            action("Assign Default Category")
            {
                image = ChangeCustomer;
                promoted = true;
                PromotedIsBig = true;
                Caption = 'Assign Default Category to all customer';
                ToolTip = 'Assigns the default customer category to ALL customers';

                trigger OnAction()
                var
                    CustManagement: Codeunit "Customer Management";
                begin
                    CustManagement.AssignDefaulCategory();
                end;
            }

        }
    }
}