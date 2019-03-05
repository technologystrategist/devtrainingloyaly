pageextension 50115 CustomerCardExtension extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Customer Category"; "Customer Category")
            {
                ApplicationArea = All;
                ToolTip = 'Customer Category';
            }


        }
    }

    actions
    {

        addlast("F&unctions")
        {
            action("Assign Default Category")
            {
                ApplicationArea = All;
                Caption = 'Assign Default Category';
                Image = ChangeCustomer;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTip = 'Assign the default category for the customer';

                trigger OnAction()
                var
                    CustManagement: Codeunit "Customer Management";
                begin
                    CustManagement.AssignDefaultCategory(Rec."No.");
                end;
            }
        }
    }
}