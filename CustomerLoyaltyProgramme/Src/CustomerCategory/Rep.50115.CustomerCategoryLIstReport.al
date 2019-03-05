report 50115 CustomerCategoryListReport
{
    UsageCategory = Administration;
    ApplicationArea = All;
    DefaultLayout = word;
    WordLayout = 'customercategorylistreport.docx';

    dataset
    {
        dataitem(CustomerCategory; "Customer Category")
        {
            column(No; "No.") { }
            column(Description; Description) { }
            column(TotalCustomersForCategory; TotalCustomersForCategory) { }
            column(FreeGiftsAvailable; FreeGiftsAvailable) { }
            trigger OnAfterGetRecord()
            begin
                CalcFields(TotalCustomersForCategory);
            end;

        }
    }


}