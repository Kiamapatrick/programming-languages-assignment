program LinkedListImpl;

type
    NodePtr = ^Node;
    Node = record
        data: Integer;
        next: NodePtr;
    end;

var
    head: NodePtr;

procedure Insert(var hd: NodePtr; value: Integer);
var
    temp, newNode: NodePtr;
begin
    New(newNode);
    newNode^.data := value;
    newNode^.next := nil;

    if hd = nil then
        hd := newNode
    else
    begin
        temp := hd;
        while temp^.next <> nil do
            temp := temp^.next;
        temp^.next := newNode;
    end;
end;

procedure DeleteVal(var hd: NodePtr; value: Integer);
var
    temp, prev: NodePtr;
begin
    temp := hd;

    if (temp <> nil) and (temp^.data = value) then
    begin
        hd := temp^.next;
        Dispose(temp);
        Exit;
    end;

    while (temp <> nil) and (temp^.data <> value) do
    begin
        prev := temp;
        temp := temp^.next;
    end;

    if temp = nil then
        Exit;

    prev^.next := temp^.next;
    Dispose(temp);
end;

procedure Update(hd: NodePtr; index, value: Integer);
var
    temp: NodePtr;
    count: Integer;
begin
    temp := hd;
    count := 0;

    while temp <> nil do
    begin
        if count = index then
        begin
            temp^.data := value;
            Exit;
        end;
        Inc(count);
        temp := temp^.next;
    end;
end;

procedure Traverse(hd: NodePtr);
var
    temp: NodePtr;
begin
    temp := hd;

    while temp <> nil do
    begin
        Write(temp^.data, ' ');
        temp := temp^.next;
    end;

    WriteLn;
end;

begin
    head := nil;

    Insert(head, 10);
    Insert(head, 20);
    Insert(head, 30);

    Traverse(head);

    Update(head, 1, 25);
    Traverse(head);

    DeleteVal(head, 25);
    Traverse(head);
end.
