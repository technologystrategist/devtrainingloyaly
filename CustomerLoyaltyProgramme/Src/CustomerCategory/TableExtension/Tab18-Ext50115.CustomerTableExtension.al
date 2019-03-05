tableextension 50115 CustomerTableExtension extends Customer
{
    fields
    {
        field(50115; "Customer Category"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Customer Category"."No.";
            Caption = 'Customer Category Code';
        }
    }

}