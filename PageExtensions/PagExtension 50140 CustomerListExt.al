dotnet
{
    assembly(mscorlib)
    {
        type(System.DateTime; MyDateTime) { }
    }
}

pageextension 50140 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        now: DotNet MyDateTime;
    begin
        now := now.UtcNow();
        Message('Hello World! It is: ' + now.ToString());
    end;
}