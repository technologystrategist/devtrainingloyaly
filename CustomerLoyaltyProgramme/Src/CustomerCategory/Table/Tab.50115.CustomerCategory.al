table 50115 "Customer Category"
{
    DataClassification = CustomerContent;
    Caption = 'Customer Category';


    fields
    {
        field(1; "No."; code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';

        }
        field(2; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }

        field(3; Default; Boolean)
        {
            DataClassification = CustomerContent;
            caption = 'Default';
        }
        field(4; TotalCustomersForCategory; Integer)
        {

            caption = 'Total number of customers in category';
            FieldClass = FlowField;
            CalcFormula = count (Customer where ("Customer category" = Field ("No.")));
        }
        field(5; FreeGiftsAvailable; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Free Gifts Available';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}