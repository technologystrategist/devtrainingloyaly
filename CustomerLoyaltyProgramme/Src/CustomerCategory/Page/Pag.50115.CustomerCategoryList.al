page 50115 "Customer Category List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Customer Category";
    Caption = 'Customer Category List';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer category';
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Description of the customer category';
                }
                field(Default; Default)
                {
                    ApplicationArea = All;
                    ToolTip = 'The customer category that will be assigned as default to customers';
                }
                field(FreeGiftsAvailable; FreeGiftsAvailable)
                {
                    ApplicationArea = All;
                    Tooltip = 'Specify if the customer category allows for free gifts';
                }
                field(TotalCustomersForCategory; TotalCustomersForCategory)
                {
                    ApplicationArea = All;
                    ToolTip = 'Sum of customers with this category';
                }




            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Create Default Category")
            {
                Image = CreateForm;
                Promoted = true;
                PromotedIsBig = true;
                ToolTip = 'Create a default Customer Category';
                Caption = 'cteate default Category';
                ApplicationArea = All;

                trigger OnAction();
                var
                    CustManagement: Codeunit "Customer Management";
                begin
                    CustManagement.CreateDefaultCategory();
                end;
            }
        }
    }
}