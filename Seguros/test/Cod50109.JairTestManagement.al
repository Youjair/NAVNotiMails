codeunit 50109 "Jair Test Management"
{
    Subtype = Test;

    [Test]
    procedure TestMethod();
    var
        InsuranceCard: TestPage "Insurance Card";
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

    [Test]
    procedure BrokerageVendorNo_TableRelation_NonExistingVendor();
    var
        Vendor: Record Vendor;
        Insurance: Record Insurance;
    begin
        //[SCENARIO] Check the TableRelation of field "Brokerage vendor No." in the "Insurance Card" page.
        //[GIVEN] A existing Vendor 
        Vendor.FindFirst();
        Insurance.FindFirst();
        //[WHEN] Validating the Vendor No. into the file "Brokerage Vendor No."
        Insurance.Validate("Jair Brokerage Vendor No.", Vendor."No.");
        //[THEN] The field "Brokerage Vendor No." contains the value of the Vendor No.
        ExpectedValue := Vendor."No.";
        ActualValue := Insurance."Jair Brokerage Vendor No.";
        IfErrorTxt := 'Field should contain the No. of the Vendor';
        //AssertThat.AreEqual(ExpectedValue, ActualValue, IfErrorTxt);
    end;

    [Test]
    procedure BrokerageVendorNo_TableRelation();
    var
        Insurance: Record Insurance;
        Vendor: Record Vendor;
        VendorNo: Code[20];
    begin
        //[SCENARIO] Check the TableRelation of field "Brokerage vendor No." in the "Insurance Card" page.
        //[GIVEN] A existing Vendor 
        VendorNo := 'ASDQWE';
        Insurance.FindFirst();
        //[WHEN] Validating the Vendor No. into the file "Brokerage Vendor No."
        asserterror Insurance.Validate("Jair Brokerage Vendor No.", VendorNo);
        //[THEN] The field "Brokerage Vendor No." contains the value of the Vendor No.
        ExpectedValue := StrSubstNo('El campo %1 de la tabla %2 contiene un valor (%3) que no se puede encontrar en la tabla relacionada (%4).',
                            Insurance.FieldCaption("Jair Brokerage Vendor No."),
                            Insurance.TableCaption(),
                            VendorNo,
                            Vendor.TableCaption());
        ActualValue := GetLastErrorText;
        IfErrorTxt := 'Incorrect Error Message';
        //AssertThat.AreEqual(ExpectedValue, ActualValue, IfErrorTxt);
    end;

    var
        //       AssertThat: Codeunit Assert;
        ExpectedValue: Variant;
        ActualValue: Variant;
        IfErrorTxt: Text;

}
