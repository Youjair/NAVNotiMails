codeunit 50109 "Jair Test Management"
{
    Subtype = Test;

    [Test]
    procedure TestMethod()


    begin
        //[SCENARIO] Check visibility of field "Brokerage Vendor No." in the "Insurance Card" page
        //[GIVEN] No conditions
        //[WHEN] Opening the Insurance Card
        InsuranceCard.OpenEdit();
        //[THEN] The field should be visible
        ExpectedValue := true;
        ActualValue := InsuranceCard."Jair Brokerage Vendor No.".Visible();
        IfErrorTxt := 'Field "Brokerage Vendor No." should be visible';
        //AssertThat.AreEqual(ExpectedValue, ActualValue, IfErrorTxt);
    end;

    var
        InsuranceCard: TestPage "Insurance Card";
        //       AssertThat: Codeunit Assert;
        ExpectedValue: Variant;
        ActualValue: Variant;
        IfErrorTxt: Text;
}
