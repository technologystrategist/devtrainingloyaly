tableextension 50116 ItemLedgerEntryExtension extends "Item Ledger Entry"
{
    fields
    {
        field(50116; "Customer Category"; Code[20])
        {
            Caption = 'Customer Category';
            DataClassification = CustomerContent;
            TableRelation = "Customer Category";
        }

    }
}