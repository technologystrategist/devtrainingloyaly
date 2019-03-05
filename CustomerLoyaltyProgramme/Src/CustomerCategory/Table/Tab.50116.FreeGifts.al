table 50116 FreeGifts
{
    DataClassification = CustomerContent;
    Caption = 'Free Gifts';
    DrillDownPageId = "Free Gift List";
    LookupPageId = "Free Gift List";


    fields
    {
        field(1; CustomerCategoryCode; code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Customer Category";
            Caption = 'Customer Category';

        }
        field(2; ItemNo; code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Item;
            Caption = 'Item NO.';
        }
        field(3; MinimumOrderQuantity; integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Minimum Order Quantity';
        }
        field(4; GiftQuantity; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Free Gift Quantity';
        }
    }

    keys
    {
        key(PK; CustomerCategoryCode, ItemNo)
        {
            Clustered = true;
        }

    }



}