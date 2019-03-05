codeunit 50115 "Customer Management"
{
    procedure AssignDefaultCategory(CustomerCode: code[20])

    var
        customer: record Customer;
        CustomerCategory: record "Customer Category";

    begin
        customer.GEt(CustomerCode);
        CustomerCategory.SetRange(Default, true);
        if customer.FindFirst() then begin
            Customer."Customer Category" := CustomerCategory."No.";
            Customer.Modify;
        end;
    end;

    procedure AssignDefaulCategory()
    var
        customer: record Customer;
        CustomerCategory: record "Customer Category";
    begin
        CustomerCategory.SetRange(Default, true);

        if customer.FindSet() then
            repeat
                Customer."Customer Category" := CustomerCategory."No.";
                Customer.modify;
            until Customer.Next() = 0;
    end;

    procedure CreateDefaultCategory()
    var
        CustomerCategory: Record "Customer Category";
    begin
        CustomerCategory."No." := 'DEFAULT';
        CustomerCategory.Description := 'Default Customer Category';
        CustomerCategory.Default := true;
        if CustomerCategory.insert then;

    end;

    procedure GetTotalCustomersWithoutCategory(): Integer
    var
        Customer: record Customer;
    begin
        Customer.SetRange("Customer Category", '');
        exit(Customer.Count());
    end;

}
