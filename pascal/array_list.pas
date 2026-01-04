program ArrayListImpl;

const
    MAX = 100;

type
    ArrayList = record
        data: array[0..MAX-1] of Integer;
        size: Integer;
    end;

var
    list: ArrayList;

procedure Init(var l: ArrayList);
begin
    l.size := 0;
end;

procedure Insert(var l: ArrayList; value: Integer);
begin
    if l.size < MAX then
    begin
        l.data[l.size] := value;
        Inc(l.size);
    end;
end;

procedure DeleteVal(var l: ArrayList; value: Integer);
var
    i, j: Integer;
begin
    for i := 0 to l.size - 1 do
        if l.data[i] = value then
        begin
            for j := i to l.size - 2 do
                l.data[j] := l.data[j + 1];
            Dec(l.size);
            Exit;
        end;
end;

procedure Update(var l: ArrayList; index, value: Integer);
begin
    if (index >= 0) and (index < l.size) then
        l.data[index] := value;
end;

procedure Traverse(var l: ArrayList);
var
    i: Integer;
begin
    for i := 0 to l.size - 1 do
        Write(l.data[i], ' ');
    WriteLn;
end;

begin
    Init(list);

    Insert(list, 10);
    Insert(list, 20);
    Insert(list, 30);

    Traverse(list);

    Update(list, 1, 25);
    Traverse(list);

    DeleteVal(list, 25);
    Traverse(list);
end.
