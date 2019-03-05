codeunit 50116 FreeGiftManagement
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'Quantity', true, true)]

    local procedure AddFreeGift(var rec: Record "Sales Line")
    var
        FreeGift: Record FreeGifts;
        customer: Record Customer;
        SalesLine: record "Sales Line";

    begin
        if (Rec.type = rec.type::Item) and (Customer.get(rec."Sell-to Customer No.")) then begin
            if FreeGift.get(Customer."Customer Category", Rec."No.") and (rec.Quantity > FreeGift.GiftQuantity) then begin
                SalesLine.init;
                SalesLine.TransferFields(rec);
                SalesLine.validate(Quantity, FreeGift.GiftQuantity);
                Salesline.Validate("Line Discount %", 100);
                if salesline.insert then;
            end;

        end;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Ledger Entry", 'OnAfterInsertEvent', '', FALSE, FALSE)]


    local procedure OnAfterItemLedgerEntryInsert(var rec: record "Item Ledger Entry")
    var
        Customer: record Customer;

    begin
        if rec."Entry Type" = rec."Entry Type"::Sale then begin
            if Customer.Get(Rec."Source No.") then begin
                rec."Customer Category" := Customer."Customer Category";
                rec.Modify();
            end;
        end;
    end;
}