page 50116 "Free Gift List"
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = FreeGifts;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(CustomerCategoryCode; CustomerCategoryCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer Category Code';
                }
                field(ItemNo; ItemNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Item number';
                }
                field(MinimumOrderQuantity; MinimumOrderQuantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Minimum quantity in order to receive gift';
                    Style = Strong;
                }
                field(GiftQuantity; GiftQuantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Quantity to receive when ordering the minimum quantity';
                    Style = Strong;
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {

    }
}